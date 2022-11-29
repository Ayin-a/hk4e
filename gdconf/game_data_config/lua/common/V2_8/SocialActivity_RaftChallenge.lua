--[[======================================
||	filename:	SocialActivity_RaftChallenge
||	owner: 		luyao.huang
||	description:	2.8社交活动-木筏挑战
||	LogName:	SocialActivity_RaftChallenge
||	Protection:	
=======================================]]--

------

local time_axis = 
{
    energy_tick_axis = {1},
    low_hp_reminder_interval = {15}
}

local local_defs = 
{
    --激流纹章
    coin_id = 70380240,
    fuel_ball = 70380225,
    part_ball = 70380226,
    --间隔几个stage将之前的stage清空
    clear_stage_interval = 3,
    clear_monster_stage_interval = 1,
    no_energy_reminder = 60010446,
    fuel_guarantee_max_times = 2,
    fuel_guarantee_num = 50,
    low_hp_reminder = 60010449,
}

local gadget_config_id_map = {}

local Tri = {
    [1] = { name = "monster_die_before_leave_scene", config_id = 9000001, event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die_before_leave_scene", trigger_count = 0},
    [2] = { name = "any_gadget_die", config_id = 9000002, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0},
    [3] = { name = "platform_arrival", config_id = 9000003, event = EventType.EVENT_PLATFORM_ARRIVAL, source = tostring(raft.engine), condition = "", action = "action_platform_arrival", trigger_count = 0},
    [4] = { name = "time_axis_pass",config_id = 90000004,  event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    [5] = { name = "specific_gadget_hp_change_1",config_id = 90000011,  event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = tostring(raft.part_1), condition = "", action = "action_specific_gadget_hp_change", trigger_count = 0},
    [6] = { name = "specific_gadget_hp_change_2",config_id = 90000012,  event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = tostring(raft.part_2), condition = "", action = "action_specific_gadget_hp_change", trigger_count = 0},
    [7] = { name = "specific_gadget_hp_change_3",config_id = 90000013,  event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = tostring(raft.part_3), condition = "", action = "action_specific_gadget_hp_change", trigger_count = 0},
    [8] = { name = "specific_gadget_hp_change_4",config_id = 90000014,  event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = tostring(raft.part_4), condition = "", action = "action_specific_gadget_hp_change", trigger_count = 0},
    [9] = { name = "variable_change",config_id = 90000005,  event = EventType.EVENT_VARIABLE_CHANGE, source = "engine_energy", condition = "", action = "action_engine_energy_change", trigger_count = 0},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    
    for i = 1, #gadgets do
        gadget_config_id_map[gadgets[i].config_id] = gadgets[i].gadget_id
    end
    --燃料数
    table.insert(variables,{config_id = 50000000, name = "fuel_num", value = 0})
    --零件数
    table.insert(variables,{config_id = 50000001, name = "part_num", value = 0})
    --金币数
    table.insert(variables,{config_id = 50000002, name = "coin_num", value = 0})

    
    --各个分块是否存活，存成一个四位二进制数方便管理
    table.insert(variables,{config_id = 50000003, name = "raft_part_alive", value = 1111})


    --发动机的能量数，相当于发动机的血量
    table.insert(variables,{config_id = 50000004, name = "engine_energy", value = 0})
    --船是否处于运动状态
    table.insert(variables,{config_id = 50000005, name = "is_running", value = 0})


    --临时能量池，缓存SLC上来的能量恢复值，每秒与运行时的能量消耗统一结算，防止0能量时反复充能放能导致振荡
    table.insert(variables,{config_id = 50000006, name = "engine_energy_pool", value = 0})


    --记录当前是否因没有能量处于停船状态，如果是，则在下一次能量大于0时恢复一次船的行动
    table.insert(variables,{config_id = 50000007, name = "has_stopped_by_no_energy", value = 0})
    --记录当前是否因路障导致停船，如果是，下次路障死掉的时候要恢复一次行动
    table.insert(variables,{config_id = 50000008, name = "has_stopped_by_road_block", value = 0})

    --停船操作计数。当计数小于等于0时，才能启动船
    table.insert(variables,{config_id = 50000009, name = "stop_raft_op_num", value = 0})

    --当前阶段怪物是否已经全死了
    table.insert(variables,{config_id = 50000010, name = "current_stage_monster_all_killed", value = 0})
    --当前阶段的障碍物是否被消灭
    table.insert(variables,{config_id = 50000011, name = "current_stage_obstacled_all_killed", value = 0})
    
    --检查点计数，用于给客户端同步的
    table.insert(variables,{config_id = 50000012, name = "checkpoint_index", value = 1})


    --燃料保底机制触发次数，超过guarantee_times后不再触发
    table.insert(variables,{config_id = 50000013, name = "fuel_guarantee_times", value = 0})


    table.insert(variables,{config_id = 50000014, name = "can_show_low_hp_reminder", value = 1})


    --记录一个最近触发的路点事件，用于识别可能存在的丢掉路点事件的问题
    table.insert(variables,{ config_id = 50000015,name = "last_route_point", value = 0})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--


--怪物死亡时
function action_monster_die_before_leave_scene(context,evt)

    --看看chain上有没有需要加载的下一位的suite。如果有，则直接加载
    local monster_suite_id = LF_Get_Suite_By_Config_Id(evt.param1,false)
    LF_Try_Create_Next_Chain_Suite(context,monster_suite_id)

    for i = 1, monster_drop_num[1] do
        LF_Create_Object_Random_Pos_From_Pool_By_Monster_Config_Id(context,1,evt.param1,1.5)
    end
    for i = 1, monster_drop_num[2] do
        LF_Create_Object_Random_Pos_From_Pool_By_Monster_Config_Id(context,2,evt.param1,1.5)
    end

    --if elite_drop[evt.param1] ~= nil then 
    --    for i = 1, #elite_drop[evt.param1] do
    --        for j = 1,elite_drop[evt.param1][i] do
    --            LF_Create_Object_Random_Pos_From_Pool_By_Monster_Config_Id(context,i,evt.param1,1.5)
    --        end
    --    end
    --end
    return 0
end

--当前阶段障碍物全部死完，进入下一阶段
function action_any_gadget_die(context,evt)

    --是否障碍物死亡
    local obstacles =  LF_Get_Stage_Obstacle(context,LF_Get_Current_Stage(context))
    if (obstacles ~= 0) then
        if (evt.param1 == obstacles[1]) then
            ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] action_any_gadget_die: 当前阶段的障碍物死亡")
            ScriptLib.SetGroupVariableValue(context,"current_stage_obstacled_all_killed",1)
            --如果当前因为路障停船，则尝试启动一次船
            if (ScriptLib.GetGroupVariableValue(context,"has_stopped_by_road_block") == 1) then
                LF_Try_Start_Raft(context)
                ScriptLib.SetGroupVariableValue(context,"has_stopped_by_road_block",0)
            end
            LF_Goto_Next_Stage(context)
            return 0
        end
    end


    --处理筏子分块死亡
    if evt.param1 == raft.part_1 then
        LF_Set_Raft_Part_Alive(context,1,0)
        LF_Update_Exhibition(context,-2,"Activity_IslandParty_Raft_Protection",1)

        --分块死亡事件打点
        local gid = LF_Get_Gadget_Id_By_Config_Id(evt.param1)
        local param_table = 
        {
            ["gadget_id"] = gid,
            ["change_type"] = 1,
            ["percentage_stage"] = 4
        }
        LF_Mark_Lua_Action(context,param_table)

        if LF_Is_Part_All_Dead(context) then
            LF_Finish_Play(context,false)
        end
        return 0
    end
    if evt.param1 == raft.part_2 then
        LF_Set_Raft_Part_Alive(context,2,0)
        LF_Update_Exhibition(context,-2,"Activity_IslandParty_Raft_Protection",1)

        --分块死亡事件打点
        local gid = LF_Get_Gadget_Id_By_Config_Id(evt.param1)
        local param_table = 
        {
            ["gadget_id"] = gid,
            ["change_type"] = 1,
            ["percentage_stage"] = 4
        }
        LF_Mark_Lua_Action(context,param_table)

        if LF_Is_Part_All_Dead(context) then
            LF_Finish_Play(context,false)
        end
        return 0
    end
    if evt.param1 == raft.part_3 then
        LF_Set_Raft_Part_Alive(context,3,0)
        LF_Update_Exhibition(context,-2,"Activity_IslandParty_Raft_Protection",1)

        --分块死亡事件打点
        local gid = LF_Get_Gadget_Id_By_Config_Id(evt.param1)
        local param_table = 
        {
            ["gadget_id"] = gid,
            ["change_type"] = 1,
            ["percentage_stage"] = 4
        }
        LF_Mark_Lua_Action(context,param_table)

        if LF_Is_Part_All_Dead(context) then
            LF_Finish_Play(context,false)
        end
        return 0
    end
    if evt.param1 == raft.part_4 then
        LF_Set_Raft_Part_Alive(context,4,0)
        LF_Update_Exhibition(context,-2,"Activity_IslandParty_Raft_Protection",1)


        --分块死亡事件打点
        local gid = LF_Get_Gadget_Id_By_Config_Id(evt.param1)
        local param_table = 
        {
            ["gadget_id"] = gid,
            ["change_type"] = 1,
            ["percentage_stage"] = 4
        }
        LF_Mark_Lua_Action(context,param_table)

        if LF_Is_Part_All_Dead(context) then
            LF_Finish_Play(context,false)
        end
        return 0
    end

    --处理吃零件球和燃料球
    local index = LF_Get_Pool_Index(context,evt.param1)
    if index == 1 then
        LF_Change_Part_Num(context,part.part_ball)
        return 0
    end
    if index == 2 then
        LF_Change_Fuel_Num(context,fuel.fuel_ball)
        return 0
    end

    --处理吃金币
    local cid = evt.param1
    local gid = gadget_config_id_map[cid]
    if (gid == local_defs.coin_id) then
        ScriptLib.ChangeGroupVariableValue(context,"coin_num",1)
        LF_Gallery_Update(context,"COIN")
        LF_Update_Exhibition(context,-2,"Activity_IslandParty_Raft_TeamCoin",1)
        return 0
    end

    return 0
end


--木筏到达检查点
function action_platform_arrival(context,evt)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] action_platform_reach_point: 木筏到达检查点"..evt.param3)
    
    --记录最近一次收到的路点事件，下次StopMove时，如果发现所在路点漏发了事件，需要补做相关逻辑
    ScriptLib.SetGroupVariableValue(context,"last_route_point",evt.param3)

    --这里客户端要求传过去的点id是连续的，所有得自己记一个当前的id
    local checkpoint_index = ScriptLib.GetGroupVariableValue(context,"checkpoint_index")
    LF_Gallery_Update(context,"REACH_POINT",{point_id = checkpoint_index})
    ScriptLib.ChangeGroupVariableValue(context,"checkpoint_index",1)

    if LF_Is_Checkpoint(evt.param3) then
        
        --当前阶段障碍物是否活着？活着停船，否则重新开船
        if LF_Is_Current_Obstacle_Alive(context) then
            ScriptLib.SetGroupVariableValue(context,"has_stopped_by_road_block",1)
            LF_Try_Stop_Raft(context)
        end
        LF_Goto_Next_Stage(context)
    end
    return 0
end

--时间轴触发
--船处于运行状态时，每秒扣除能量
function action_time_axis_pass(context,evt)
    --每秒tick，如果当前处于运行状态，则扣除一定量的燃料
    if (evt.source_name == "ENERGY_TICK_AXIS") then
        local energy_pool = ScriptLib.GetGroupVariableValue(context,"engine_energy_pool")
            if LF_Is_Running(context) then
                local energy_delta = energy_pool + (-energy.energy_consume_by_tick) 
                if energy_delta ~= 0 then
                    LF_Change_Engine_Energy(context,energy_delta)
                end
                ScriptLib.SetGroupVariableValue(context,"engine_energy_pool",0)
            else
                if energy_pool ~= 0 then
                    LF_Change_Engine_Energy(context,energy_pool)
                end
                ScriptLib.SetGroupVariableValue(context,"engine_energy_pool",0)
            end
    end

    if evt.source_name == "LOW_HP_REMINDER_INTERVAL" then
        
        ScriptLib.SetGroupVariableValue(context,"can_show_low_hp_reminder",1)
    end

    return 0
end


function action_specific_gadget_hp_change(context,evt)
    if evt.param3 <= 50 then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] action_specific_gadget_hp_change: 分块血量低于50%，弹出reminder"..evt.param3)
        LF_Show_Low_Hp_Reminder(context)
    end

    --处理运营打点
    
    local gid = ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common]LF_Mark_Lua_Action: 筏子"..gid.."运营打点：----------------------------")
    local percentage_stage = {80,50,30,0}
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Mark_Lua_Action: 筏子"..gid.."血量变化前为"..evt.param2)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Mark_Lua_Action: 筏子"..gid.."血量变化后为"..evt.param3)
    for i = 1, 4 do
        --gadget血量变化事件是每10%血量记一次，所以即可能是上界碰到、也有可能是下界碰到、也有可能是横跨，三种情况都要算
        --去掉血量为0的计数，放到死亡事件里单独处理
        if (LF_Is_In_Range(percentage_stage[i],evt.param2,evt.param3) or percentage_stage[i] == evt.param2 or percentage_stage[i] == evt.param3) and evt.param3 ~= 0 then
            local change_type = 0
            if (evt.param2 > evt.param3) then
                change_type = 1
            else
                change_type = 2
            end
            local gid = ScriptLib.GetGadgetIdByEntityId(context, evt.source_eid)
            local param_table = 
            {
                ["gadget_id"] = gid,
                ["change_type"] = change_type,
                ["percentage_stage"] = i
            }
            LF_Mark_Lua_Action(context,param_table)
            break
        end
    end

    return 0
end

--发动机能量变化，处理运营打点需求
function action_engine_energy_change(context,evt)

    --处理运营打点
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common]LF_Mark_Lua_Action: 运营打点：----------------------------")
    local percentage_stage = {energy.max_energy * 0.8,energy.max_energy * 0.5,energy.max_energy * 0.3,0}
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Mark_Lua_Action: 引擎能量变化前为"..evt.param2)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Mark_Lua_Action: 引擎能量变化后为"..evt.param1)
    for i = 1, 4 do
        if LF_Is_In_Range(percentage_stage[i],evt.param1,evt.param2) then
            local change_type = 0
            if (evt.param1 < evt.param2) then
                change_type = 1
            else
                change_type = 2
            end

            --木筏发动机的gid
            local gid = 70380224
        
            local param_table = 
            {
                ["gadget_id"] = gid,
                ["change_type"] = change_type,
                ["percentage_stage"] = i
            }
            LF_Mark_Lua_Action(context,param_table)
            break
        end
    end

    return 0
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--



--木筏挑战的特殊玩法启动逻辑
--加载船的四个分块和发动机
function LF_Special_Play_Init(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Special_Play_Init: 特殊玩法初始化逻辑")
    ScriptLib.CreateGadget(context, {config_id = raft.engine})
    ScriptLib.CreateGadget(context, {config_id = raft.part_1})
    ScriptLib.CreateGadget(context, {config_id = raft.part_2})
    ScriptLib.CreateGadget(context, {config_id = raft.part_3})
    ScriptLib.CreateGadget(context, {config_id = raft.part_4})
end


--木筏挑战的特殊玩法启动逻辑
--设置木筏的移动点阵、初始化variable
function LF_Special_Play_Start(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Special_Play_Start: 特殊玩法启动逻辑")

    --玩法开始时，重置一次对象池
    LF_Reset_Gadget_Pool(context)

    local PointArray = {}
    for i = point_id_array.from,  point_id_array.to do
        local flag = true
        if point_id_array.except ~= nil then
            for j = 1, #point_id_array.except do
                if point_id_array.except[j] == i then
                    flag = false
                end
            end
        end
        if flag then
            table.insert(PointArray,i)
        end
    end

    --做一个保护，防止拿到的table为空
    if #PointArray == 0 then
        ScriptLib.PrintGroupWarning(context,"## [SocialActivity_RaftChallenge]LF_Special_Play_Start：生成的点阵为空，检查LD点阵配置是否正确")
    else
        local ret = ScriptLib.SetPlatformPointArray(context,raft.engine, defs.pointarray_route, PointArray, { route_type = 0,turn_mode=false })
    end
    LF_Gallery_Update(context,"START_PLAY",{})

    ScriptLib.SetGroupVariableValue(context,"is_running",1)
    ScriptLib.SetGroupVariableValue(context,"engine_energy",energy.init_energy)
    ScriptLib.SetGroupVariableValue(context,"fuel_num",fuel.init_fuel)
    ScriptLib.SetGroupVariableValue(context,"part_num",part.init_part)
    ScriptLib.SetGroupVariableValue(context,"fuel_guarantee_times", 0)
    ScriptLib.SetGroupVariableValue(context,"can_show_low_hp_reminder",1)
    ScriptLib.SetGroupVariableValue(context,"last_route_point",0)
    LF_Gallery_Update(context,"PART_CHANGE",{})
    LF_Gallery_Update(context,"FUEL_CHANGE",{})
end




--木筏挑战的特殊阶段转换事件，注意取current_stage已经是转阶段后的stage了
function LF_Special_State_Change(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Special_State_Change: 特殊阶段转换逻辑")
    

    ScriptLib.InitTimeAxis(context,"ENERGY_TICK_AXIS",time_axis.energy_tick_axis,true)

    if LF_Stage_Has_Tag(context,LF_Get_Current_Stage(context),"Sailing") then
        --转到航行阶段以后，要把当前阶段的一些临时变量清回来
        ScriptLib.SetGroupVariableValue(context,"current_stage_monster_all_killed",0)
        ScriptLib.SetGroupVariableValue(context,"current_stage_obstacled_all_killed",0)
    end

    
    --根据LD的需求，隔X个stage，清理前面所有stage的内容
    for i = 1, LF_Get_Current_Stage(context)-local_defs.clear_stage_interval do
        LF_Clear_Specific_Stage(context,i)
    end

    --根据LD的需求，隔Y个stage，清理前面所有怪物
    for i = 1, LF_Get_Current_Stage(context)-local_defs.clear_monster_stage_interval do
        LF_Clear_Specific_Stage_Monsters(context,i)
    end
end



function LF_Special_Play_Finish(context,is_success)
    
    ScriptLib.EndTimeAxis(context,"ENERGY_TICK_AXIS")
    if is_success then
        LF_Update_Exhibition(context,-2,"Activity_IslandParty_Raft_Success",1)
    end
end





--[[-----------------------------------------------------------------
||                                                                 ||
||                      木筏移动平台控制                            ||
||                                                                 ||
-----------------------------------------------------------------]]--


--尝试启动木筏
function LF_Try_Start_Raft(context)
    LF_Try_Set_Stop_Raft_Op_Num(context, -1)
    local stop_raft_op_num = ScriptLib.GetGroupVariableValue(context,"stop_raft_op_num")
    --停船的操作数小于等于0的情况下，才能继续启动船
    if (stop_raft_op_num <= 0) then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Try_Start_Raft: 启动木筏")
        --当前移动平台目标直接指向下一个点，防止出现倒着开船的表现
        --ScriptLib.SetPlatformRouteIndexToNext(context, raft.engine)
        --服务端的目标直接指向了下一个点，要同步发给客户端
        --ScriptLib.ChangeGroupVariableValue(context,"checkpoint_index",1)
        --local checkpoint_index = ScriptLib.GetGroupVariableValue(context,"checkpoint_index")
        --LF_Gallery_Update(context,"REACH_POINT",{point_id = checkpoint_index})


        ScriptLib.StartPlatform(context,raft.engine)
        ScriptLib.SetGroupVariableValue(context,"is_running",1)
    end
end

--尝试暂停木筏
function LF_Try_Stop_Raft(context)
    LF_Try_Set_Stop_Raft_Op_Num(context, 1)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Try_Stop_Raft: 暂停木筏")
    ScriptLib.StopPlatform(context,raft.engine)
    ScriptLib.SetGroupVariableValue(context,"is_running",0)

    local current_point = ScriptLib.GetPlatformPointArray(context,raft.engine)[2]
    local last_point = ScriptLib.GetGroupVariableValue(context,"last_route_point")
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Try_Stop_Raft: 当前所在路点为"..current_point)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Try_Stop_Raft: 最近获得事件的路点为"..last_point)
    if current_point ~= last_point then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Try_Stop_Raft: 出现路点到达事件丢失的情况，开始做保底")

        --给客户端更新路点信息
        --这里客户端要求传过去的点id是连续的，所有得自己记一个当前的id
        local checkpoint_index = ScriptLib.GetGroupVariableValue(context,"checkpoint_index")
        LF_Gallery_Update(context,"REACH_POINT",{point_id = checkpoint_index})
        ScriptLib.ChangeGroupVariableValue(context,"checkpoint_index",1)

        --如果跳过了检查点，那么补一个转阶段事件
        if LF_Is_Checkpoint(current_point) then

            --当前阶段障碍物是否活着？活着停船，否则重新开船
            if LF_Is_Current_Obstacle_Alive(context) then
                ScriptLib.SetGroupVariableValue(context,"has_stopped_by_road_block",1)
                --这里要补一个增加一次操作数，确保如果同时因为空能量和路点停船，要做两次恢复才能正常开船
                LF_Try_Set_Stop_Raft_Op_Num(context, 1)
            end
            LF_Goto_Next_Stage(context)
        end
    end
end

function LF_Try_Set_Stop_Raft_Op_Num(context, delta)
    local stop_raft_op_num = ScriptLib.GetGroupVariableValue(context,"stop_raft_op_num")
    if stop_raft_op_num+delta <=0 then
        ScriptLib.SetGroupVariableValue(context,"stop_raft_op_num",0)
    else
        ScriptLib.ChangeGroupVariableValue(context,"stop_raft_op_num",delta)
    end
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      木筏参数控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--


function LF_Heal_Part(context,heal_percentage)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Heal_Part: 尝试给分块回血")
end



--修改发动机的能量值
function LF_Change_Engine_Energy(context,energy_delta)
    ScriptLib.ChangeGroupVariableValue(context,"engine_energy",energy_delta)
    if ScriptLib.GetGroupVariableValue(context,"engine_energy") > energy.max_energy then
        ScriptLib.SetGroupVariableValue(context,"engine_energy", energy.max_energy)
    end
    if ScriptLib.GetGroupVariableValue(context,"engine_energy") <= 0 then
        ScriptLib.SetGroupVariableValue(context,"engine_energy", 0)
    end
    --把能量写到客户端上面
    LF_Set_SGV_To_Raft(context,"SGV_Engine_Energy","engine_energy")
    --每次修改能量数后判定，如果能量数小于0则暂停木筏，大于0则尝试启动木筏
    if (not LF_Have_Enough_Engine_Energy(context)) and (ScriptLib.GetGroupVariableValue(context,"has_stopped_by_no_energy") == 0) then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Change_Engine_Energy: 没有能量了！木筏停止！！！")
        ScriptLib.ShowReminder(context,local_defs.no_energy_reminder)
        LF_Try_Stop_Raft(context)
        ScriptLib.SetGroupVariableValue(context,"has_stopped_by_no_energy",1)
    else
        --如果曾经因为没有能量停船，恢复一次就够了
        if LF_Have_Enough_Engine_Energy(context) and (ScriptLib.GetGroupVariableValue(context,"has_stopped_by_no_energy") == 1) then
            ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Change_Engine_Energy: 有能量了！木筏尝试开始运行！！！")
            LF_Try_Start_Raft(context)
            ScriptLib.SetGroupVariableValue(context,"has_stopped_by_no_energy",0)
        end
    end
end

--修改零件值
function LF_Change_Part_Num(context, part_delta)
    ScriptLib.ChangeGroupVariableValue(context,"part_num",part_delta)
    if ScriptLib.GetGroupVariableValue(context,"part_num") <= 0 then
        ScriptLib.SetGroupVariableValue(context,"part_num", 0)
    end
    
    LF_Gallery_Update(context,"PART_CHANGE",{})
end

--修改燃料值
function LF_Change_Fuel_Num(context, fuel_delta)
    ScriptLib.ChangeGroupVariableValue(context,"fuel_num",fuel_delta)
    if ScriptLib.GetGroupVariableValue(context,"fuel_num") <= 0 then
        ScriptLib.SetGroupVariableValue(context,"fuel_num", 0)
        LF_On_Fuel_Zero(context)
    end
    LF_Gallery_Update(context,"FUEL_CHANGE",{})
end



--燃料数量为空时，触发保底机制
function LF_On_Fuel_Zero(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_On_Fuel_Zero: 燃料数为空，触发保底机制")
    local guarantee_times = ScriptLib.GetGroupVariableValue(context,"fuel_guarantee_times")
    if guarantee_times < local_defs.fuel_guarantee_max_times then
        LF_Change_Fuel_Num(context,local_defs.fuel_guarantee_num)
        ScriptLib.ChangeGroupVariableValue(context,"fuel_guarantee_times",1)
    end
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      CRUD操作                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--

--根据当前阶段数，找到当前阶段的目标障碍物。没找到返回nil
function LF_Get_Stage_Obstacle(context,id)
    if stage[id].obstacle ~= nil then
        return stage[id].obstacle
    end
    return 0
end

function LF_Is_Checkpoint(pointId)
    for i = 1, #checkpoint do
        if checkpoint[i] == pointId then
            return true
        end
    end
    return false
end

function LF_Get_Part_Config_Id_By_Index(index)
    if index == 1 then
        return raft.part_1
    end
    if index == 2 then
        return raft.part_2
    end
    if index == 3 then
        return raft.part_3
    end
    if index == 4 then
        return raft.part_4
    end
    return 0
end


--返回木筏是否处于运行状态
function LF_Is_Running(context)
    return ScriptLib.GetGroupVariableValue(context,"is_running") == 1
end

function LF_Is_Current_Obstacle_Alive(context)
    return ScriptLib.GetGroupVariableValue(context,"current_stage_obstacled_all_killed") == 0
end


--设置第n个分块的存活情况
function LF_Set_Raft_Part_Alive(context,part_id,alive)
    local raft_part_alive = ScriptLib.GetGroupVariableValue(context,"raft_part_alive")
    local exact_part_alive = LF_Get_N_Digit(context,raft_part_alive,(5-part_id))
    if alive == 1 and exact_part_alive == 0 then
        raft_part_alive = math.floor(raft_part_alive + 10^(4-part_id))
        ScriptLib.SetGroupVariableValue(context,"raft_part_alive",raft_part_alive)
        LF_Set_SGV_To_Raft_By_Num(context,"SGV_Part_"..part_id.."_Alive",1)
    end
    if alive == 0 and exact_part_alive == 1 then
        raft_part_alive = math.floor(raft_part_alive - 10^(4-part_id))
        ScriptLib.SetGroupVariableValue(context,"raft_part_alive",raft_part_alive)
        LF_Set_SGV_To_Raft_By_Num(context,"SGV_Part_"..part_id.."_Alive",0)
    end
end

--返回第n个分块的存活情况
function LF_Get_Raft_Part_Alive(context,part_id)
    local raft_part_alive = ScriptLib.GetGroupVariableValue(context,"raft_part_alive")
    local exact_part_alive = LF_Get_N_Digit(context,raft_part_alive,(5-part_id))
    return exact_part_alive == 1
end

function LF_Is_Part_All_Dead(context)
    return ScriptLib.GetGroupVariableValue(context,"raft_part_alive") == 0
end


function LF_Is_Part_Hp_Full(context,part_index)
    local part_config_id = LF_Get_Part_Config_Id_By_Index(part_index)
    if part_config_id == 0 then
        return false
    end
    local hp_percent = ScriptLib.GetGadgetHpPercent(context, base_info.group_id, part_config_id)
    return hp_percent >= 100 
end

function LF_Is_Engine_Energy_Full(context)
    return ScriptLib.GetGroupVariableValue(context,"engine_energy") >= energy.max_energy
end

--是否有足够的能量
function LF_Have_Enough_Engine_Energy(context)
    return ScriptLib.GetGroupVariableValue(context,"engine_energy") > 0
end

--是否有足够的零件
function LF_Have_Enough_Part(context)
    return ScriptLib.GetGroupVariableValue(context,"part_num") > 0
end

--是否有足够的燃料
function LF_Have_Enough_Fuel(context)
    return ScriptLib.GetGroupVariableValue(context,"fuel_num") > 0
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--




--给team上写SGV
function LF_Set_SGV_To_All_Team(context, gv_name, group_variable)
    local uid_list = ScriptLib.GetSceneUidList(context)
    local value = ScriptLib.GetGroupVariableValue(context,group_variable)
    for i = 1, #uid_list do
        ScriptLib.SetTeamServerGlobalValue(context, uid_list[i], gv_name, value)
    end
end

--给船上面写SGV
function LF_Set_SGV_To_Raft(context,gv_name, group_variable)
    local value = ScriptLib.GetGroupVariableValue(context,group_variable)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, raft.engine, gv_name, value)
end

function LF_Set_SGV_To_Raft_By_Num(context,gv_name,num)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, raft.engine, gv_name, num)
end


function LF_Show_Low_Hp_Reminder(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] action_specific_gadget_hp_change: 血量低于50%")
    if ScriptLib.GetGroupVariableValue(context,"can_show_low_hp_reminder") == 1 then
        ScriptLib.ShowReminder(context,local_defs.low_hp_reminder)
        ScriptLib.SetGroupVariableValue(context,"can_show_low_hp_reminder",0)
        ScriptLib.InitTimeAxis(context,"LOW_HP_REMINDER_INTERVAL",time_axis.low_hp_reminder_interval,false)
    end
end


--获取一个数字的第N位
function LF_Get_N_Digit(context,number,N)
    return math.floor((number%(10^N))/(10^(N-1)))
end




--[[-----------------------------------------------------------------
||                                                                 ||
||                     gallery同步                                 ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Gallery_Update(context,command,param)

    ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] LF_Gallery_Update: 向gallery同步")

    if command == "START_PLAY" then
        local raft_entity_id = ScriptLib.GetEntityIdByConfigId(context, raft.engine)

        local param_table = {["raft_entity_id"] = raft_entity_id }
        LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

    if command == "REACH_POINT" then

        local param_table = {["point_id"] = param.point_id }
        LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

    if command == "FUEL_CHANGE" then
        local fuel = ScriptLib.GetGroupVariableValue(context,"fuel_num")
        local param_table = {["fuel"] = fuel}
        --LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

    if command == "PART_CHANGE" then
        local part = ScriptLib.GetGroupVariableValue(context,"part_num")
        local param_table = {["part"] = part}
        --LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

    
    if command == "COIN" then
        local coin = ScriptLib.GetGroupVariableValue(context,"coin_num")
        local param_table = {["coin"] = coin}
        --LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

end



function LF_Print_Table(context,print_table)
    for k,v in pairs(print_table) do
        ScriptLib.PrintContextLog(context,"## [SocialActivity_RaftChallenge] "..k.." : "..v)
    end
end




--[[-----------------------------------------------------------------
||                                                                 ||
||                     server lua call                             ||
||                                                                 ||
-----------------------------------------------------------------]]--

--引擎请求回血
function SLC_Try_Recover_Engine(context,avatar_num)

    --校验合法性
    if avatar_num == nil then
        return 0
    end
    if avatar_num <= 0 or avatar_num > 4 then
        return 0 
    end
    if ScriptLib.IsGalleryStart(context,defs.gallery_id) then
        --有燃料，且燃料没满：恢复能量，并将发动机切到能量恢复状态
        if LF_Have_Enough_Fuel(context) and not LF_Is_Engine_Energy_Full(context) then

            --当下一次补充会直接补满能量时，按比例进行消耗而不是全部消耗
            local current_energy = ScriptLib.GetGroupVariableValue(context,"engine_energy")
            local max_energy = energy.max_energy
            local consumed_energy = max_energy - current_energy
            local ratio = consumed_energy / (energy.energy_heal_by_tick * avatar_num)
            if ratio > 1 then 
                ratio = 1
            end

            --SLC上来的能量先存到池里，tick时统一结算
            ScriptLib.ChangeGroupVariableValue(context,"engine_energy_pool",energy.energy_heal_by_tick * avatar_num)
            LF_Change_Fuel_Num(context,-math.ceil(fuel.fuel_consume_by_tick * avatar_num * ratio))
            ScriptLib.SetGroupGadgetStateByConfigId(context,0,raft.engine,201)
        else
            ScriptLib.SetGroupGadgetStateByConfigId(context,0,raft.engine,0)
        end
    end
    return 0
end

--分块请求自身被受击
function SLC_Try_Hit_Engine(context)
    if ScriptLib.IsGalleryStart(context,defs.gallery_id) then
        LF_Change_Engine_Energy(context,-energy.energy_consume_by_hit)
    end
    return 0
end

--分块请求自身被受击,云网的攻击，要走一个特殊的伤害值
function SLC_Try_Hit_Engine_By_Cloud_Net(context)
    if ScriptLib.IsGalleryStart(context,defs.gallery_id) then
        LF_Change_Engine_Energy(context,-energy.energy_consume_by_cloud_net_hit)
    end
    return 0
end


--分块请求回血
function SLC_Try_Recover_Part_Hp(context,part_id,avatar_num)

    --校验合法性
    if avatar_num == nil or part_id == nil then
        return 0
    end
    if avatar_num <= 0 and avatar_num > 4 then
        return 0 
    end
    if part_id <= 0 and part_id > 4 then
        return 0 
    end


    if ScriptLib.IsGalleryStart(context,defs.gallery_id) then
        local part_config_id = LF_Get_Part_Config_Id_By_Index(part_id)
        if part_config_id == 0 then
            return 0
        end
        if LF_Have_Enough_Part(context) and not LF_Is_Part_Hp_Full(context,part_id) then
            --当下一次补充会直接补满血量时，按比例进行消耗而不是全部消耗
            local hp_percent = ScriptLib.GetGadgetHpPercent(context, base_info.group_id, part_config_id)
            local max_hp_percent = 100
            local consumed_hp = max_hp_percent - hp_percent
            local ratio  = consumed_hp / (part.hp_recover_by_tick * avatar_num)
            if ratio > 1 then
                ratio = 1
            end
            ScriptLib.SetGadgetHp(context,base_info.group_id, part_config_id,hp_percent+part.hp_recover_by_tick*avatar_num)
            LF_Change_Part_Num(context,-math.ceil(part.part_consume_by_tick * avatar_num * ratio))
            hp_percent = ScriptLib.GetGadgetHpPercent(context, base_info.group_id, part_config_id)
            ScriptLib.SetGroupGadgetStateByConfigId(context,0,part_config_id,201)
        else
            ScriptLib.SetGroupGadgetStateByConfigId(context,0,part_config_id,0)
        end
    end
    return 0
end



--陈列室SLC
--陈列室：木筏累积拾取修复buff数
function SLC_Exhibition_Pick_Up_Ball(context)
    LF_Update_Exhibition(context,context.uid,"Activity_IslandParty_Raft_Buff",1)
    return 0
end


--陈列室：木筏拾取金币数个人
function SLC_Exhibition_Pick_Up_Coin(context)
    LF_Update_Exhibition(context,context.uid,"Activity_IslandParty_Raft_PersonalCoin",1)
    return 0
end

--陈列室:木筏累积修复秒数
function SLC_Exhibition_Repair_Time(context,part_id)

    --校验合法性
    if part_id == nil then
        return 0
    end
    if part_id < 0 and part_id > 4 then
        return 0 
    end

    --引擎修复的计数
    if part_id == 0 then
        if not LF_Is_Engine_Energy_Full(context) and LF_Have_Enough_Fuel(context) then
            LF_Update_Exhibition(context,context.uid,"Activity_IslandParty_Raft_Fix",1)
            return 0
        end
    end

    local part_config_id = LF_Get_Part_Config_Id_By_Index(part_id)
    if part_config_id == 0 then
        return 0
    end
    --必须要真的能回复分块血量才计入统计
    local hp_percent = ScriptLib.GetGadgetHpPercent(context, base_info.group_id, part_config_id)
    if hp_percent < 100 and LF_Have_Enough_Part(context) then
        LF_Update_Exhibition(context,context.uid,"Activity_IslandParty_Raft_Fix",1)
    end
    return 0
end



------------------------------------------------------------------
Initialize()