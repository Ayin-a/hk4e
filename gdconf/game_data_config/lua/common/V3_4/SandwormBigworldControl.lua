
--[[======================================
||	filename:	SandwormBigworldControl
||	owner: 		luyao.huang
||	description:	
||	LogName:	SandwormBigworldControl
||	Protection:	
=======================================]]--



local business_type = "bigworld"
local priority = 1

local local_defs = 
{
    sandworm_manager_group = 133314001,
    alert_max_value = 1000,

    outof_attack_region_delay = 3
}



local bigworld_Tri = {
    [1] = { name = "variable_change_bigworld_sandworm", config_id = 100010001, event = EventType.EVENT_VARIABLE_CHANGE, source = "alert_value", condition = "", action = "action_variable_change_bigworld_sandworm", trigger_count = 0},
    [2] = { name = "group_will_unload_bigworld_sandworm", config_id = 100010002, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload_bigworld_sandworm", trigger_count = 0},
    [3] = { name = "enter_region_bigworld_sandworm", config_id = 100010003, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region_bigworld_sandworm", trigger_count = 0},
    [4] = { name = "leave_region_bigworld_sandworm", config_id = 100010004, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region_bigworld_sandworm", trigger_count = 0},
    [5] = { name = "time_axis_pass_bigworld_sandworm", config_id = 100010005, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass_bigworld_sandworm", trigger_count = 0},
}

function bigworld_Initialize()
    for k,v in pairs(bigworld_Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    --警戒值
    table.insert(variables,{ config_id = 100010001,  name = "alert_value", value = 0})
    --沙虫攻击状态时，要锁警戒值变动
    table.insert(variables,{ config_id = 100010002,  name = "is_alert_locked", value = 0})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

--沙虫警戒值变化
function action_variable_change_bigworld_sandworm(context,evt)
    ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl] variable_change: 当前沙虫警戒值为"..evt.param1)
    if evt.param1 >= local_defs.alert_max_value then
        ScriptLib.PrintContextLog(context,"## [SandwormAleSandwormBigworldControlrtControl] variable_change: 沙虫警戒度超过最大值，召唤沙虫")
        local target_uid = LF_Get_Target_Uid(context)
        --在攻击圈外移动圈内，召唤巡游沙虫
        if ScriptLib.IsInRegion(context,target_uid,defs.move_region) and not ScriptLib.IsInRegion(context,target_uid,defs.attack_region) then
            ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl] variable_change: 位于攻击圈外演出圈内，召唤巡游沙虫")
            LF_Summon_Move_Sandworm(context,defs.attack_times)
            ScriptLib.InitTimeAxis(context,"move_sandworm_life_axis",{defs.move_sandworm_lifetime},false)
        end
        --在攻击圈内，命令沙虫进行一次进攻
        if ScriptLib.IsInRegion(context,target_uid,defs.attack_region) then
            ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl] variable_change: 位于攻击圈内，命令沙虫开始攻击")
            LF_Command_Move_Sandworm_Attack(context,defs.attack_times)
        end
    end
    return 0
end


function action_group_will_unload_bigworld_sandworm(context,evt)
    
    ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl] group即将卸载，重置警戒值以及其他参数")
    LF_Remove_All_Sandworm(context)    
    LF_Set_Alert_Lock(context,false)
    LF_Set_Alert_Value(context,0)
    ScriptLib.EndTimeAxis(context,"sandworm_alert_axis")
    ScriptLib.EndTimeAxis(context,"move_sandworm_life_axis")
    return 0
end


function action_enter_region_bigworld_sandworm(context,evt)

    --从外侧进入演出圈
    --开一个时间轴
    if evt.param1 == defs.move_region then 
        ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl] action_enter_region_bigworld_sandworm：从外侧进入演出圈")
        ScriptLib.InitTimeAxis(context,"sandworm_alert_axis",{1},true)
    end

    --从演出圈进入攻击圈
    --命令沙虫进行一次进攻
    if evt.param1 == defs.attack_region then 
        ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl] action_enter_region_bigworld_sandworm：从演出圈进入攻击圈") 
        local alert_value = ScriptLib.GetGroupVariableValue(context,"alert_value")
        if alert_value >= local_defs.alert_max_value then
            --清理一下移动沙虫的生命时间轴
            ScriptLib.EndTimeAxis(context,"move_sandworm_life_axis")
            LF_Command_Move_Sandworm_Attack(context,defs.attack_times)
        end
    end
    return 0
end


function action_leave_region_bigworld_sandworm(context,evt)

    --离开演出圈到外侧
    --关掉时间轴，并清理掉所有沙虫
    if evt.param1 == defs.move_region then
        ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl] action_leave_region_bigworld_sandworm：从演出圈离开到外侧")
        ScriptLib.EndTimeAxis(context,"sandworm_alert_axis")
        ScriptLib.EndTimeAxis(context,"move_sandworm_life_axis")
        LF_Remove_All_Sandworm(context)
    end

    --离开攻击圈，进入演出圈
    --清理掉攻击沙虫
    if evt.param1 == defs.attack_region and ScriptLib.IsInRegion(context,evt.uid,defs.move_region) then
        ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl] action_leave_region_bigworld_sandworm：从攻击圈离开到演出圈")
        LF_Remove_All_Sandworm(context)
        LF_Set_Alert_Lock(context,false)


        --这里其实是在做一个延时X秒的操作，但为了防止时间轴导致的时序问题，全部转化成警戒值的操作
        local sandstorm_state = ScriptLib.GetGroupVariableValueByGroup(context,"sandstorm_state",local_defs.sandworm_manager_group)
        local alert_by_tick = 0
        if sandstorm_state == 1 then
            alert_by_tick = math.floor((region_config.alert_by_tick_normal[1] + region_config.alert_by_tick_normal[2])/2)
        else
            alert_by_tick = math.floor((region_config.alert_by_tick_sandstorm[1] + region_config.alert_by_tick_sandstorm[2])/2)
        end
        local target_alert_value = math.ceil(local_defs.alert_max_value - alert_by_tick * local_defs.outof_attack_region_delay)
        if target_alert_value <= 0 then
            target_alert_value = 0
        end
        LF_Set_Alert_Value(context, target_alert_value)
    end
    return 0
end

function action_time_axis_pass_bigworld_sandworm(context,evt)
    if (evt.source_name == "sandworm_alert_axis") then
        local region_config = LF_Get_Current_Region_Config(context)
        if region_config ~= nil then
            local alert_by_tick = {}
            local sandstorm_state = ScriptLib.GetGroupVariableValueByGroup(context,"sandstorm_state",local_defs.sandworm_manager_group)
            if sandstorm_state == 1 then
                alert_by_tick = region_config.alert_by_tick_normal
            else
                alert_by_tick = region_config.alert_by_tick_sandstorm
            end
            local delta = math.random(alert_by_tick[1],alert_by_tick[2]) 
            LF_Change_Alert_Value(context,delta)
        end
    end

    if (evt.source_name == "move_sandworm_life_axis") then
        LF_Remove_All_Sandworm(context)
        LF_On_Attack_Finish(context)
    end
    return 0
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      沙虫控制回调                                ||
||                                                                 ||
-----------------------------------------------------------------]]--

--沙虫控制回调：创建沙虫成功
function LF_On_Create_Sandworm_Success(context)
    ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl]LF_On_Create_Sandworm_Success: 沙虫控制回调：创建沙虫成功")
    ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl]LF_On_Create_Sandworm_Success: 锁定警戒值变化")
    LF_Set_Alert_Lock(context,true)
end

--沙虫控制回调：创建沙虫失败
function LF_On_Create_Sandworm_Fail(context)
    ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl]LF_On_Create_Sandworm_Success: 沙虫控制回调：创建沙虫失败")
    ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl]LF_On_Create_Sandworm_Success: 解锁警戒值变化")
    LF_Set_Alert_Value(context,0)
    LF_Set_Alert_Lock(context,false)
end

--沙虫控制回调：移除沙虫
function LF_On_Remove_Sandworm(context) 
    ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl]LF_On_Create_Sandworm_Success: 沙虫控制回调：清除沙虫")
    ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl]LF_On_Create_Sandworm_Success: 解锁警戒值变化")
    LF_Set_Alert_Lock(context,false)
end

--沙虫控制回调：沙虫攻击完成
function LF_On_Attack_Finish(context)
    ScriptLib.PrintContextLog(context,"## [SandwormBigworldControl]LF_On_Attack_Finish: 沙虫控制回调：攻击完成，警戒值清零")
    LF_Set_Alert_Value(context,0)
end

--沙虫控制回调：击中玩家
function LF_On_Attack_Hit_Avatar(context)
end
--[[-----------------------------------------------------------------
||                                                                 ||
||                      警戒值控制                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Change_Alert_Value(context,delta)
    if not LF_Is_Alert_Locked(context) then
        ScriptLib.ChangeGroupVariableValue(context,"alert_value",delta)
    end
end

function LF_Set_Alert_Value(context,target_value)
    if not LF_Is_Alert_Locked(context) then
        ScriptLib.SetGroupVariableValue(context,"alert_value",target_value)
    end
end

function LF_Get_Alert_Value(context)
    return ScriptLib.GetGroupVariableValue(context,"alert_value")
end



function LF_Set_Alert_Lock(context,is_locked)
    if is_locked then
        ScriptLib.SetGroupVariableValue(context,"is_alert_locked",1)
    else
        ScriptLib.SetGroupVariableValue(context,"is_alert_locked",0)
    end
end

function LF_Is_Alert_Locked(context)
    return ScriptLib.GetGroupVariableValue(context,"is_alert_locked") == 1 
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Get_Target_Uid(context)
    return ScriptLib.GetSceneOwnerUid(context)
end




function LF_Get_Current_Region_Config(context)

    return region_config
end



--获取指定位置的随机近邻位置。分布在min_r~max_r为半径的环上
function LF_Get_Random_Neighbour(context,pos,min_r,max_r)
    local random_r = math.random(min_r,max_r)
    local random_a = math.random()*math.pi*2
    local rpos_x = pos.x + random_r * math.cos(random_a)
    local rpos_z = pos.z + random_r * math.sin(random_a)
    local rpos = {x = rpos_x,y = pos.y,z = rpos_z}
    return rpos
end


------------------------------------------------------------------
bigworld_Initialize()