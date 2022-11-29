--2.4墙壁迷宫玩法

--miscs



--ControllerWallMap = 
--{
--	{defs.gadget_controller_1,
--		{
--			{defs.gadget_wall_1,{2,7,12}}, 
--			{defs.gadget_wall_2,{1,6,11}}
--		}
--	},
--	{defs.gadget_controller_2,
--		{
--			{defs.gadget_wall_1,{12,7,2}}, 
--			{defs.gadget_wall_2,{11,6,1}}
--		}
--	},
--	{defs.gadget_controller_3,
--		{
--			{defs.gadget_wall_3,{8,9,10}}, 
--			{defs.gadget_wall_4,{3,4,5}}
--		}
--	},
--	{defs.gadget_controller_4,
--		{
--			{defs.gadget_wall_3,{10,9,8}}, 
--			{defs.gadget_wall_4,{5,4,3}}
--		}
--	}
--}
--
----初始wall+blocker表，把所有的wall和block都填入
--StartWallMap = 
--{
--    {defs.gadget_wall_1, 4},
--    {defs.gadget_wall_2, 6},
--    {defs.gadget_wall_3, 7},
--    {defs.gadget_wall_4, 9}, 
--}
--
--StartBlockerMap = 
--{
--    {defs.blocker_1,1,201},
--    {defs.blocker_2,12,201}
--}

----------------------------------



local Tri = {
    [1] = { name = "group_load_wall_maze", config_id = 1500001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},  
    [2] = { name = "gadget_state_change_wall_maze", config_id = 1500002, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0},
    [3] = { name = "platform_reach_point_wall_maze", config_id = 1500003, event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_platform_reach_point", trigger_count = 0},
    [4] = { name = "time_axis_pass_maze", config_id = 1500004, event = EventType.EVENT_TIME_AXIS_PASS, source = "move_delay", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    
}

function Initialize()
    for k,v in pairs(Tri) do
        table.insert(triggers, v)
    end
    for i = 1, #suites do 
        for k,v in pairs(Tri) do
	    	table.insert(suites[i].triggers, v.name)
	    end
    end
    --记录每个wall和block位置的var，形式为：wall_i
    for i = 1,#StartWallMap do
        table.insert(variables,{ config_id=61000000+i,name = "wall_"..i, value = 0})
    end
    for i = 1,#StartBlockerMap do
        table.insert(variables,{ config_id=62000000+i,name = "blocker_"..i, value = 0})
    end
    
    if (SpecialBlockerMap ~= nil) then
        for i = 1,#SpecialBlockerMap do
            for j = 1,#SpecialBlockerMap[i] do
                table.insert(variables,{ config_id=63000000+1000*i+j,name = "special_blocker_"..i.."_"..j, value = 0})
            end
        end
    end
    table.insert(variables,{ config_id=64000001,name = "is_moving", value = 0, no_refresh = true})
    
    table.insert(variables,{ config_id=64000002,name = "has_succeeded", value = 0, no_refresh = true})
end

------------------------------------------------------------------


function action_group_load(context,evt)

    --group load时，会将墙的位置设置为
    ScriptLib.SetGroupVariableValue(context, "has_succeeded", 0)
    --group load时，要把isMoving重置！！否则特殊情况下如果group被unload，会导致玩法卡死
    ScriptLib.SetGroupVariableValue(context, "is_moving", 0)
    for i = 1, #StartWallMap do
        local wall = StartWallMap[i][1]
        local index = StartWallMap[i][2]
        ScriptLib.PrintContextLog(context,"WallMaze: group加载，设置墙 "..wall.." 位置： "..index)
        LF_Set_Block_Point(context,wall,index,1)
    end
    for i = 1, #StartBlockerMap do
        local blocker = StartBlockerMap[i][1]
        local index = StartBlockerMap[i][2]
        local block_state = StartBlockerMap[i][3]
        local state = ScriptLib.GetGadgetStateByConfigId(context, 0, blocker)
        if (state == block_state) then
            ScriptLib.PrintContextLog(context,"WallMaze: group加载，设置blocker "..blocker.." 位置： "..index)
            LF_Set_Block_Point(context,blocker,index,2)
        else
            LF_Set_Block_Point(context,blocker,-1,2)
        end
    end
    return 0
end

function action_gadget_state_change(context,evt)

    local controller = evt.param2
    local gadget_state = evt.param1
    local is_moving = ScriptLib.GetGroupVariableValue(context,"is_moving")
    --没有墙处于移动状态
    if (is_moving ~= 1) then
        --触发的是控制器
        if (LF_Is_Controller(context,controller)) then
            if (gadget_state == 222 or gadget_state == 322) then
                ScriptLib.PrintContextLog(context,"WallMaze: 震动机关激活，开始移动墙壁")
                local wall_list = LF_Get_Controller_Wall(context,controller)
                local block_table = LF_Get_Block_Table(context)
                block_table = LF_Pre_Move(context,block_table,wall_list)
                for i = 1, #wall_list do
                    local path_state = LF_Get_Path_State(context,block_table,controller,wall_list[i])
                    local next_point = LF_Get_Next_Point(context,path_state)

                    if (next_point == -1) then
                        ScriptLib.SetGroupGadgetStateByConfigId(context,0,wall_list[i],202)
                    end
                    if (next_point ~= -1) then
                        ScriptLib.SetGroupGadgetStateByConfigId(context,0,wall_list[i],201)
                        ScriptLib.SetPlatformPointArray(context, wall_list[i], defs.pointarray_route, {next_point}, { route_type = 0,turn_mode=false })
                        LF_Set_Block_Point(context,wall_list[i],next_point,1)
                        ScriptLib.SetGroupVariableValue(context, "is_moving", 1)
                        ScriptLib.InitTimeAxis(context,"move_delay",{5},false)
                    end
                end
                --移动后，检查是否成功
                if (TargetSolution~=nil and LF_Check_Success(context)) then
                    ScriptLib.PrintContextLog(context,"WallMaze: 已成功")
                    ScriptLib.SetGroupVariableValue(context, "has_succeeded", 1)
                    return 0
                else
                    ScriptLib.PrintContextLog(context,"WallMaze: 尚未成功")
                    ScriptLib.SetGroupVariableValue(context, "has_succeeded", 0)
                end
            end
        end
    end
    return 0
end


function action_platform_reach_point(context,evt)

    local wall = evt.param1
    ScriptLib.SetGroupGadgetStateByConfigId(context,0,wall,0)
    ScriptLib.SetGroupVariableValue(context, "is_moving", 0)
    return 0
end

function action_time_axis_pass(context,evt)
    
    ScriptLib.SetGroupVariableValue(context, "is_moving", 0)
    return 0
end


------------------------------------------------------------------
------------------------迷宫内容查询---------------------------

--检查当前状态是否成功
function LF_Check_Success(context)

    local wall_pos_list = {}
    for i = 1, #StartWallMap do
        local wall = StartWallMap[i][1]
        local wall_pos = LF_Get_Wall_Pos(context,wall)
        table.insert(wall_pos_list,wall_pos)
    end

    for i = 1,#TargetSolution do
        if (wall_pos_list[i] ~= TargetSolution[i]) then
            return false
        end
    end
    return true
end

--输入一个blockerid，返回该blocker的相关信息
function LF_Get_Blocker_Info(context,blocker_id)
    for i = 1,#StartBlockerMap do
        if (blocker_id == StartBlockerMap[i][1])then
            return StartBlockerMap[i]
        end
    end
end

--输入一个wallid，返回该wall的相关信息
function LF_Get_Wall_Info(context,wall_id)
    for i = 1,#StartWallMap do
        if (wall_id == StartWallMap[i][1])then
            return StartWallMap[i]
        end
    end
end

function LF_Get_Controller_Info(context,controller_id)
    for i = 1,#ControllerWallMap do
        if (controller_id == ControllerWallMap[i][1])then
            return ControllerWallMap[i][2]
        end
    end
end


--输入一个blockerId，返回其是否处于阻塞状态
function LF_Is_In_Block_State(context,blocker_id)
    local state = ScriptLib.GetGadgetStateByConfigId(context,0,blocker_id)
    local blocker_info = LF_Get_Blocker_Info(context,blocker_id)
    return blocker_info[3] == state
end

--输入一个blockerId，返回其应当阻塞的位置
function LF_Get_Blocker_Pos(context,blocker_id)
    for i = 1,#StartBlockerMap do
        if (StartBlockerMap[i][1] == blocker_id) then
            return StartBlockerMap[i][2]
        end
    end
end


--输入一个wallId，返回其应当阻塞的位置
function LF_Get_Wall_Pos(context,wall_id)
    local wall_index = LF_Get_Wall_Index(context,wall_id)
    local wall_pos = ScriptLib.GetGroupVariableValue(context,"wall_"..wall_index)
    return wall_pos
end

--输入一个speicla blocker Id，返回其应当阻塞的位置
function LF_Get_Speical_Blocker_Pos_List(context,blocker_id)
    local blocker_index = LF_Get_Sepcial_Blocker_Index(context,blocker_id)
    local pos_list = {}
    
    if (SpecialBlockerMap ~= nil) then
        for i = 1, #SpecialBlockerMap[blocker_index][2] do
            local pos = ScriptLib.GetGroupVariableValue(context,"special_blocker_"..blocker_index.."_"..i)
            table.insert(pos_list,pos)
        end
    end
    return pos_list
end



--输入一个controllerId，返回其控制的墙列表
function LF_Get_Controller_Wall(context,controller_id)
    local controller_info = LF_Get_Controller_Info(context,controller_id)
    local walls = {}
    for i = 1,#controller_info do
        table.insert(walls,controller_info[i][1])
    end
    return walls
end

--输入一个controllerId和wallId，返回其这个控制器下，特定墙的移动路径
function LF_Get_Controller_Wall_Path(context,controller_id,wall_id)
    local controller_info = LF_Get_Controller_Info(context,controller_id)
    for i = 1,#controller_info do
        if (controller_info[i][1] == wall_id) then
            return controller_info[i][2]
        end
    end
end

--输入阻塞点和阻塞类型（1-墙；2-阻塞物，3-特殊阻塞物），将特定点阻塞
--输入阻塞点 = -1时，相当于将该阻塞物移出阻塞表
function LF_Set_Block_Point(context,blocker,point,type)
    --墙
    if (type == 1) then
        local blocker_index = LF_Get_Wall_Index(context,blocker)
        ScriptLib.PrintContextLog(context,"WallMaze: 墙壁"..blocker_index.."移动到位置"..point)
        ScriptLib.SetGroupVariableValue(context, "wall_"..blocker_index, point)
    end
    --阻塞物
    if (type == 2) then
        local blocker_index = LF_Get_Blocker_Index(context,blocker)
        ScriptLib.PrintContextLog(context,"WallMaze: 障碍物"..blocker_index.."在位置"..point.."进入阻挡状态")
        ScriptLib.SetGroupVariableValue(context, "blocker_"..blocker_index, point)
    end
    if (type == 3) then
        local blocker_index = LF_Get_Special_Blocker_Index(context,blocker)
        for i = 1,#point do
            ScriptLib.PrintContextLog(context,"WallMaze: 特殊障碍物"..blocker_index.."在位置"..point.."进入阻挡状态")
            ScriptLib.SetGroupVariableValue(context, "special_blocker_"..blocker_index.."_"..i, point[i])
        end
    end
end

--输入一个路径点，返回该位置是否被阻塞
function LF_Is_Blocked(context,point)
    local block_table = LF_Get_Block_Table(context)
    return block_table[point] ~= 0
end

--输入一个blocker和想要将其设置的gadget state，查询是否允许这样设置
function LF_Can_Block_State_Change(context,blocker,target_gadget_state)
    local blocker_info = LF_Get_Blocker_Info(context,blocker)
    local block_pos = LF_Get_Blocker_Pos(context,blocker)
    local is_blocked = LF_Is_Blocked(context,block_pos)
    if (not is_blocked) then
        return true
    else
        if (target_gadget_state == blocker_info[3]) then
            --尝试堵上
            return false
        else
            --尝试撤销阻塞
            return true
        end

    end
end


function LF_Set_Block_After_State_Change(context,blocker,target_gadge_state)
    if (LF_Is_Blocker(context,blocker)) then
        ScriptLib.PrintContextLog(context,"WallMaze: 障碍物状态变化")
        local blocker_info = LF_Get_Blocker_Info(context,blocker)
        --障碍物被转到阻塞状态
        if (blocker_info[3] == target_gadge_state) then
            ScriptLib.PrintContextLog(context,"WallMaze: 进入阻挡状态")
            local pos = LF_Get_Blocker_Pos(context,blocker)
            ScriptLib.PrintContextLog(context,"WallMaze: 即将阻塞的位置为"..pos)
            LF_Set_Block_Point(context,blocker,pos,2)
        --障碍物离开阻塞状态
        else
            ScriptLib.PrintContextLog(context,"WallMaze: 离开阻挡状态")
            local pos = LF_Get_Blocker_Pos(context,blocker)
            ScriptLib.PrintContextLog(context,"WallMaze: 离开阻塞的位置为"..pos)
            LF_Set_Block_Point(context,blocker,-1,2)
        end

    end
end
------------------------------------------------------------------
--------------------墙壁移动算法--------------------------------------
--计算当前的block table
--其中，0为可通行，1为墙壁阻塞，2为障碍物阻塞，3为特殊障碍物阻塞
function LF_Get_Block_Table(context)
    ScriptLib.PrintContextLog(context,"WallMaze： 计算BlockTable……")
    local Block_Table = {}
    for i = 1, MaxSize do
        table.insert(Block_Table,0)
    end
    for i = 1,#StartWallMap do
        local wall_pos = LF_Get_Wall_Pos(context,StartWallMap[i][1])
        Block_Table[wall_pos] = 1
    end
    for i = 1,#StartBlockerMap do
        local blocker_pos = LF_Get_Blocker_Pos(context,StartBlockerMap[i][1])
        if (LF_Is_In_Block_State(context,StartBlockerMap[i][1])) then
            Block_Table[blocker_pos] = 2
        end
    end
    
    if (SpecialBlockerMap ~= nil) then
        for i = 1,#SpecialBlockerMap do
            local special_block_pos_list = LF_Get_Speical_Blocker_Pos_List(context,SpecialBlockerMap[i])
            for j = 1,#special_block_pos_list do
                Block_Table[special_block_pos_list[j]] = 3
            end
        end
    end
    LF_Print_Table(context,"Block table", Block_Table)
    return Block_Table
end

--移动计算前预处理，将将要移动的墙壁移出block table
function LF_Pre_Move(context,block_table,wall_list)
    ScriptLib.PrintContextLog(context,"WallMaze： 计算PreMoveBlockTable……")
    local pre_move_block_table = block_table
    for i = 1, #wall_list do
        local wall_pos = LF_Get_Wall_Pos(context,wall_list[i])
        pre_move_block_table[wall_pos] = 0
    end
    LF_Print_Table(context,"Pre Move Block table", pre_move_block_table)
    return pre_move_block_table
end

--获得特定墙壁当前的路径状态
function LF_Get_Path_State(context,block_table,controller,wall)
    ScriptLib.PrintContextLog(context,"WallMaze： 计算"..wall.."的path_state……")
    local path = LF_Get_Controller_Wall_Path(context,controller,wall)
    local path_state = {}
    local wall_pos = LF_Get_Wall_Pos(context,wall)
    local index = LF_Get_Index_In_Table(context,path,wall_pos)
    for i = index+1, #path do
        local state_vec = {}
        table.insert(state_vec,path[i])
        table.insert(state_vec,block_table[path[i]])
        table.insert(path_state,state_vec)
        LF_Print_Table(context,"path state vec"..i, state_vec)
    end
    return path_state
end

--输入一个path_state，返回下一个可通行的点。如果没有，则返回-1
function LF_Get_Next_Point(context,path_state)
    if (#path_state == 0) then
        return -1
    end
    if (path_state[1][2] == 0) then
        ScriptLib.PrintContextLog(context,"WallMaze: 下一个移动的目标点为"..path_state[1][1])
        return path_state[1][1]
    else
        ScriptLib.PrintContextLog(context,"WallMaze: 完全阻塞，无法移动")
        return -1
    end
end



------------------------------------------------------------------
--------------------工具方法--------------------------------------
--输入一个table，返回其是一个描述wall的table还是一个描述blocker的table
function LF_Is_Wall_Data(context,t)
    return #t == 2
end


--打印table的方法，用于debug
function LF_Print_Table(context,table_name,table)

    ScriptLib.PrintContextLog(context,"WallMaze: ------------------------------")
    ScriptLib.PrintContextLog(context,"WallMaze: 输出表 "..table_name.." 的元素 ")
    for i = 1,#table do
        ScriptLib.PrintContextLog(context,"WallMaze: "..table_name.."["..i.."] = "..table[i])
    end
    ScriptLib.PrintContextLog(context,"WallMaze: ------------------------------")
end

--判断元素是否属于表
function LF_Is_In_Table(context,t,key)
    for i = 1,#t do
        if (t[i] == key) then
            return true
        end
    end
    return false
end

--获取元素在表中的index
function LF_Get_Index_In_Table(context,t,key)
    for i = 1,#t do
        if (t[i] == key) then
            return i
        end
    end
    return -1
end

--从表中start位置开始截取子表（包含start）
function LF_Get_Table_Tail(context,t,start)

    local tail = {}
    for i = start,#t do
        table.insert(tail,t[i])
    end
    return tail

end



--判断一个gadget是否为控制器
function LF_Is_Controller(context,gadget)
    for i = 1,#ControllerWallMap do
        if (gadget == ControllerWallMap[i][1]) then
            return true
        end
    end
    return false
end

--判断一个gadget是否为blocker
function LF_Is_Blocker(context,gadget)
    for i = 1,#StartBlockerMap do
        if (gadget == StartBlockerMap[i][1]) then
            return true
        end
    end
    return false
end

function LF_Get_Wall_Index(context,wall)
    for i = 1,#StartWallMap do
        if (wall == StartWallMap[i][1]) then
            return i
        end
    end
    return -1
end
function LF_Get_Blocker_Index(context,blocker)
    for i = 1,#StartBlockerMap do
        if (blocker == StartBlockerMap[i][1]) then
            return i
        end
    end
    return -1
end
function LF_Get_Special_Blocker_Index(context,blocker)
    local ret = {}
    
    if (SpecialBlockerMap ~= nil) then
        for i = 1,#SpecialBlockerMap do
            if (blocker == SpecialBlockerMap[i][1]) then
                return i
            end
        end
    end
end
------------------------------------------------------------------
Initialize()