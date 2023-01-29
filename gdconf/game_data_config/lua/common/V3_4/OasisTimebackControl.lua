--[[======================================
||	filename:	OasisTimebackControl
||	owner: 		luyao.huang
||	description:	绿洲时间倒流控制
||	LogName:	OasisTimebackControl
||	Protection:	
=======================================]]--



------
local local_defs = {
    timeback_tag_sgv_name = "SGV_Broadcast_GV_Tag",
    timeback_is_revert = "SGV_Is_Revert",
    timeback_init_sgv_name = "SGV_Init_Timeback_Value",
    --控制器分段的均分数
    timeback_division_sgv_name = "SGV_Timeback_Keypoint_Division",

    timeback_value_min_suffix = "timeback_value_min",
    timeback_value_max_suffix = "timeback_value_max",

    timeback_UI_option = 5002,
    rune_start_option = 5000
}

local local_timeback_gadget_config = 
{
    --树干
    [70290603] = 
    {
        timeback_type = 
        {
            animator = true,
            effect = true
        },
        eff_range = {1,1.1},
    },

    --石头
    [70290604] = 
    {
        timeback_type = 
        {
            animator = true,
            effect = true
        },
        eff_range = {0,1.2},
    },

    --瀑布
    [70290605] = 
    {
        timeback_type = 
        {
            shader = true,
        },
    },
}

local rune_states = 
{
    moving = 0,
    unmovable = 201,
    movable = 202
}

local worktop_states =
{
    rune_out = 0,
    rune_in = 201
}

local Tri = {
    [1] = { name = "group_load", config_id = 11000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [2] = { name = "platform_arrival", config_id = 11000002, event = EventType.EVENT_PLATFORM_ARRIVAL, source = tostring(timeback_rune), condition = "", action = "action_platform_arrival", trigger_count = 0},
    [3] = { name = "select_option", config_id = 11000003, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    [4] = { name = "gadget_state_change", config_id = 11000004, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0},
    [5] = { name = "variable_change", config_id = 11000005, event = EventType.EVENT_VARIABLE_CHANGE, source = "is_success", condition = "", action = "action_variable_change", trigger_count = 0},
    [6] = { name = "gather", config_id = 11000006, event = EventType.EVENT_GATHER, source = tostring(defs.wordle_id), condition = "", action = "action_gather", trigger_count = 0},
    
    
    [7] = { name = "variable_change_GM", config_id = 21000001, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change_GM", trigger_count = 0},
    
    }

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    --当前符文所在节点的id
    table.insert(variables,{ config_id = 30000001,  name = "current_checkpoint", value = 0})
    --玩法最后一环是否成功
    table.insert(variables,{ config_id = 30000002,  name = "is_success", value = 0})
    --当前节点是否在正确解的范围内
    table.insert(variables,{ config_id = 30000003,  name = "is_currect_checkpoint_success", value = 0})
    --玩法是否完成
    table.insert(variables,{ config_id = 30000004,  name = "is_finished", value = 0})



    --GM：移除全部玩法物件
    table.insert(variables,{ config_id = 40000001,  name = "GM_Remove_Current_Group", value = 0})
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

--玩法加载初始化
function action_group_load(context,evt)

    ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]action_group_load：group加载，给玩法物件上SGV标识")
    --LF_Init_Timeback_Gadget_Config(context)
    LF_Init_Rune_State(context)
    ScriptLib.SetGadgetEnableInteract(context,base_info.group_id,defs.wordle_id,false)
    
    if ScriptLib.GetGroupVariableValue(context,"is_finished") == 1 then
        ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]action_variable_change：玩法成功，创建宝箱")
        ScriptLib.CreateGadget(context, { config_id = defs.chest_id })
    end
    return 0
end


function action_platform_arrival(context,evt)
    if LF_Is_Checkpoint(context,evt.param3) then
        ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]action_platform_arrival：符文抵达底座位置")

        LF_Stop_Platform(context) 
        local current_point = LF_Get_Checkpoint_By_Route_Point(context,evt.param3)
        ScriptLib.SetGroupVariableValue(context,"current_checkpoint", current_point)
        LF_On_Rune_Enter_Worktop(context)
        
    end
    return 0
end

function action_select_option(context,evt)
    if evt.param2 == local_defs.rune_start_option then
        ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]action_select_option：按下选项，符文开始移动")
        LF_Start_Platform(context) 
        --允许符文开始的时候不在底座上，所以要判一下是否有操作台
        LF_On_Rune_Leave_Worktop(context) 
    end
    return 0
end

function action_gadget_state_change(context,evt)
    if evt.param2 == timeback_rune then
        if evt.param1 == rune_states.movable then
            ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, timeback_rune, {local_defs.rune_start_option})
        else
            ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, timeback_rune, local_defs.rune_start_option)
        end
    end
    return 0
end


function action_variable_change(context,evt)
    if evt.param1 == 1 then
        ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]action_variable_change：玩法成功，打开赤王文字交互")
        ScriptLib.SetGadgetEnableInteract(context,base_info.group_id,defs.wordle_id,true)
    end
    if evt.param1 == 0 then
        ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]action_variable_change：玩法失败，关闭赤王文字交互")
        ScriptLib.SetGadgetEnableInteract(context,base_info.group_id,defs.wordle_id,false)
    end
    return 0 
end


function action_gather(context,evt)
    ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]action_gather：赤王文字被取走，加载宝箱")
    ScriptLib.SetGroupVariableValue(context,"is_finished",1)
    ScriptLib.CreateGadget(context,{config_id = defs.chest_id})
    return 0
end



function action_variable_change_GM(context,evt)
    if evt.source_name == "GM_Remove_Current_Group" then
        for k,v in pairs(gadgets) do
            ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, v.config_id)
        end
    end
    return 0
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Init_Timeback_Gadget_Config(context)
    ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_Init_Timeback_Gadget_Config：初始化倒流物件配置")


    for k,v in pairs(timeback_gadget_config) do  

        ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_Init_Timeback_Gadget_Config：倒流物件为"..k)
        local range = v.range
        if range ~= nil then
            ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_Init_Timeback_Gadget_Config：动画时间范围为"..range[1].."~"..range[2])
        end

	    ScriptLib.SetEntityServerGlobalValueByConfigId(context, k , local_defs.timeback_tag_sgv_name, timeback_play_tag)
        if v.is_revert then
	        ScriptLib.SetEntityServerGlobalValueByConfigId(context, k , local_defs.timeback_is_revert, 1)
        end

        --animator和shader倒流描述的是entity本身的倒流方式
        if LF_Has_Ani_Timeback(context,k) then
            ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_Init_Timeback_Gadget_Config：上动画范围的SGV"..range[1].."~"..range[2])
	        local ret = ScriptLib.SetEntityServerGlobalValueByConfigId(context,k,"SGV_ani_"..local_defs.timeback_value_min_suffix, range[1])
	        ScriptLib.SetEntityServerGlobalValueByConfigId(context,k,"SGV_ani_"..local_defs.timeback_value_max_suffix, range[2])
        end

        if LF_Has_Shader_Timeback(context,k) then
            ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_Init_Timeback_Gadget_Config：上shader范围的SGV"..range[1].."~"..range[2])
	        ScriptLib.SetEntityServerGlobalValueByConfigId(context,k,"SGV_shader_"..local_defs.timeback_value_min_suffix, range[1])
	        ScriptLib.SetEntityServerGlobalValueByConfigId(context,k,"SGV_shader_"..local_defs.timeback_value_max_suffix, range[2])
        end

        --effect描述的是外加的资源的倒流方式
        if LF_Has_Eff_Timeback(context,k) then
            local eff_range = LF_Get_Effect_Timeback_Value_Config(context,k)
            ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_Init_Timeback_Gadget_Config：特效时间范围为"..eff_range[1].."~"..eff_range[2])
	        ScriptLib.SetEntityServerGlobalValueByConfigId(context,k,"SGV_eff_"..local_defs.timeback_value_min_suffix, eff_range[1])
	        ScriptLib.SetEntityServerGlobalValueByConfigId(context,k,"SGV_eff_"..local_defs.timeback_value_max_suffix, eff_range[2])
        end
    end

    --给控制器上玩法tag和初始化值
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, timeback_controller , local_defs.timeback_tag_sgv_name, timeback_play_tag)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, timeback_controller , local_defs.timeback_init_sgv_name, init_timeback_value)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, timeback_controller , local_defs.timeback_division_sgv_name, 4)

    --给操作台上玩法tag
    for i = 1, #timeback_worktops do
	    ScriptLib.SetEntityServerGlobalValueByConfigId(context, timeback_worktops[i] , local_defs.timeback_tag_sgv_name, timeback_play_tag)
    end
end

function LF_Init_Rune_State(context)
    --重置一次符文所在位置
    ScriptLib.SetGroupVariableValue(context,"current_checkpoint",0)
    
    if LF_Can_Move_To_Next_Point(context) then
        LF_Set_Rune_State(context,rune_states.movable) 
    else
        LF_Set_Rune_State(context,rune_states.unmovable)
    end
end

--当符文离开底座时调用
function LF_On_Rune_Leave_Worktop(context)
    local worktop = LF_Get_Current_Worktop(context)
    ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_On_Rune_Leave_Worktop：符文离开底座"..worktop)
    LF_Set_Rune_State(context,rune_states.moving) 

    local current_point = LF_Get_Current_Point(context) 
    --允许开始的出发点符文不在底座上，因此不需要触发底座的状态变化
    if LF_Current_Point_Has_Worktop(context,current_point) then
        LF_Set_Worktop_State(context,worktop_states.rune_out) 
    end
end

--当符文进入底座时调用
function LF_On_Rune_Enter_Worktop(context)

    local worktop = LF_Get_Current_Worktop(context)
    ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_On_Rune_Enter_Worktop：符文进入底座"..worktop)
    --只要符文进入底座，就要给底座上显示时间控制UI的选项
    LF_Set_Worktop_State(context,worktop_states.rune_in) 
    --进入底座时，先默认不能移动。由客户端自己判断当前的值是否处于合法范围
    LF_Set_Rune_State(context,rune_states.unmovable) 

    if LF_Can_Move_To_Next_Point(context) then
        LF_Set_Rune_State(context,rune_states.movable) 
    else
        LF_Set_Rune_State(context,rune_states.unmovable)
    end
end

--检查下一个目标点，如果目标点有正解范围，那么给操作台上正解范围，等客户端调整到正解
--如果没有正解范围，则直接上一个可移动的选项
function LF_Can_Move_To_Next_Point(context)
    ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_Can_Move_To_Next_Point：检查是否可以移动到下一个点")
    local current_point = LF_Get_Current_Point(context)
    if not LF_Current_Point_Has_Worktop(context,current_point) then
        return true
    else
        return ScriptLib.GetGroupVariableValue(context,"is_currect_checkpoint_success") == 1
    end
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      CRUD方法                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--

function  LF_Has_Ani_Timeback(context, config_id)
    local gadget_id = LF_Get_Gadget_Id_By_Config_Id(context, config_id)

    return local_timeback_gadget_config[gadget_id].timeback_type.animator
end

function  LF_Has_Eff_Timeback(context, config_id)
    local gadget_id = LF_Get_Gadget_Id_By_Config_Id(context, config_id)
    return local_timeback_gadget_config[gadget_id].timeback_type.effect
end

function  LF_Has_Shader_Timeback(context, config_id)
    local gadget_id = LF_Get_Gadget_Id_By_Config_Id(context, config_id)
    return local_timeback_gadget_config[gadget_id].timeback_type.shader
end


function LF_Get_Current_Point(context)
    return ScriptLib.GetGroupVariableValue(context,"current_checkpoint")
end

function LF_Set_Current_Point(context,point_id) 
    ScriptLib.SetGroupVariableValue(context,"current_checkpoint", point_id)
end


--根据gadget的config_id查询gadget_id
function LF_Get_Gadget_Id_By_Config_Id(context, config_id)
    for i = 1,#gadgets do
        if (gadgets[i].config_id == config_id) then
            return gadgets[i].gadget_id
        end
    end
    return 0
end

function LF_Get_Effect_Timeback_Value_Config(context,config_id)
    local gadget_id = LF_Get_Gadget_Id_By_Config_Id(context, config_id)
    local eff_range = local_timeback_gadget_config[gadget_id].eff_range
    local ani_range = timeback_gadget_config[config_id].range
    local is_revert = timeback_gadget_config[config_id].is_revert

    if is_revert then
        eff_range[1] = 1 - eff_range[2]
        eff_range[2] = 1 - eff_range[1]
    end
    local actual_max = ani_range[1] + (ani_range[2] - ani_range[1]) * eff_range[2]
    local actual_min = ani_range[1] + (ani_range[2] - ani_range[1]) * eff_range[1]

    return {actual_min,actual_max}
end

function LF_Is_Checkpoint(context,point_id)
    for i = 1, #checkpoints_to_route_points do
        if checkpoints_to_route_points[i] == point_id then
            return true
        end
    end
    return false
end

function LF_Get_Checkpoint_By_Route_Point(context,route_point)
    for k,v in pairs(checkpoints_to_route_points) do
        if v == route_point then
            return k
        end
    end
    return 0
end

function LF_Current_Point_Has_Worktop(context,point_id)
    return checkpoint_to_worktops[point_id] ~= nil
end

function LF_Get_Current_Worktop(context)
    local current_point = LF_Get_Current_Point(context)
    if LF_Current_Point_Has_Worktop(context,current_point) then
        return checkpoint_to_worktops[current_point]
    else
        return 0
    end
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Is_In_Table(context,t,value)
    for k,v in pairs(t) do
        if v == value then
            return true
        end
    end
    return false
end


function LF_Start_Platform(context)
    local current_checkpoint = ScriptLib.GetGroupVariableValue(context,"current_checkpoint")
    if current_checkpoint >= #checkpoints_to_route_points then
        return 
    end
    local target_point = current_checkpoint + 1

    local start_array_point = 0
    if current_checkpoint > 0 then
        start_array_point = checkpoints_to_route_points[current_checkpoint]
    end
    local target_array_point = checkpoints_to_route_points[target_point]

    ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_Start_Platform：当前所在点为"..start_array_point)
    ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_Start_Platform：目标点为"..target_array_point)
    local route = {}
    for i = start_array_point+1, target_array_point do
        table.insert(route,i)
    end

    ScriptLib.SetPlatformPointArray(context,timeback_rune, defs.pointarray_route, route, { route_type = 0,turn_mode=false})
end

function LF_Stop_Platform(context)
    ScriptLib.StopPlatform(context,timeback_rune)
end

function LF_Set_Worktop_State(context,state)
    local current_point = ScriptLib.GetGroupVariableValue(context,"current_checkpoint")
    local current_worktop = checkpoint_to_worktops[current_point]
    ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_Set_Worktop_State：操作台"..current_worktop.."设置为状态"..state)
    ScriptLib.SetGadgetStateByConfigId(context,current_worktop,state)
end

function LF_Set_Rune_State(context,state)
    ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]LF_Set_Rune_State：符文石设置为状态"..state)
    ScriptLib.SetGadgetStateByConfigId(context,timeback_rune,state)
end
        

--[[-----------------------------------------------------------------
||                                                                 ||
||                     server lua call                             ||
||                                                                 ||
-----------------------------------------------------------------]]--



function SLC_Set_Current_Checkpoint_Correctness(context,is_correct)
    ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]SLC_Set_Current_Checkpoint_Correctness：上报当前节点是否正确"..is_correct)
    ScriptLib.SetGroupVariableValue(context,"is_currect_checkpoint_success",is_correct)

    
    local current_checkpoint = ScriptLib.GetGroupVariableValue(context,"current_checkpoint")
    if current_checkpoint >= #checkpoints_to_route_points then
        ScriptLib.PrintContextLog(context,"## [OasisTimebackControl]SLC_Set_Current_Checkpoint_Correctness：已经移动到终点，玩法完成")
        ScriptLib.SetGroupVariableValue(context,"is_success",is_correct)
    end

    if LF_Can_Move_To_Next_Point(context) then
        LF_Set_Rune_State(context,rune_states.movable) 
    else
        LF_Set_Rune_State(context,rune_states.unmovable)
    end
    return 0
end

------------------------------------------------------------------
Initialize()