--[[
local defs={
    air_wall = 999,
}
]]
local T_Gruop_ID = 246202004
local T_Air_Wall = 4001
local Next_Group_List = {
    [246202001] = 246202002,
    [246202002] = 246202003,
    [246202003] = 246202005,
    [246202005] = 246202006,
    [246202006] = 246202007,
    [246202007] = 246202001,
}
local temp_Gadget = {
	{ config_id = 20000991, gadget_id = 70800183, pos = { x = 17.537, y = -43.175, z = 0.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
}
local temp_Variables_Rogue_Terrain_2 = {
	{  config_id=50000001,name = "Terrain", value = 2, no_refresh = false },
	{  config_id=50000002,name = "Ready", value = 0, no_refresh = false },
}
local temp_Tirgger_Rogue_Terrain_2 = {
    {event = EventType.EVENT_CHALLENGE_SUCCESS,source = "",condition="",action="action_t2_EVENT_CHALLENGE_SUCCESS",trigger_count=0},
	{event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_t2_EVENT_GROUP_LOAD",trigger_count = 0},
	{event = EventType.EVENT_ROGUE_OPEN_ACCESS, source = "", condition = "", action = "action_t2_action_EVENT_ROGUE_OPEN_ACCESS",trigger_count = 0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "Ready", condition = "", action = "action_t2_EVENT_VARIABLE_CHANGE_Ready", trigger_count = 0 },
	{event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_t2_EVENT_SELECT_OPTION", trigger_count = 0 },
    {event = EventType.EVENT_GADGET_STATE_CHANGE,source = "",condition="",action="action_t2_EVENT_GADGET_STATE_CHANGE",trigger_count=0},
    {event = EventType.EVENT_ROGUE_START_FIGHT,source = "",condition="",action="action_t2_EVENT_ROGUE_START_FIGHT",trigger_count=0},
}
--通知下个group延迟创建操作台，时点1，开始战斗
function action_t2_EVENT_ROGUE_START_FIGHT(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_2 action_t2_EVENT_ROGUE_START_FIGHT:")
    LF_Notify_Next_Group_Wait(context)
    return 0
end
--通知下个group延迟创建操作台，时点2，触发备战
function action_t2_EVENT_GADGET_STATE_CHANGE(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_2 action_t2_EVENT_GADGET_STATE_CHANGE:p1="..evt.param1.."|p2="..evt.param2)
    if evt.param1 ~= 201 then return 0 end
    if evt.param2 == Rogue_Cell.Prepare_Operator_Config_ID then
        LF_Notify_Next_Group_Wait(context)
    end
    return 0
end
function LF_Notify_Next_Group_Wait(context)
    for k , v in pairs(Next_Group_List) do
        local _targetgroup = 0
        if k ==base_info.group_id then 
            _targetgroup = v
            ScriptLib.SetGroupTempValue(context,"Need_Wait",1,{ group_id = _targetgroup})
        end
    end
    return 0
end
function action_t2_EVENT_SELECT_OPTION(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_2 action_t2_EVENT_SELECT_OPTION:")
    if evt.param1 == 20000991 then
        ScriptLib.SetGroupVariableValueByGroup(context,"Turn",4,T_Gruop_ID)
    end
    ScriptLib.RefreshGroup(context, {group_id = base_info.group_id, suite = 1})
    ScriptLib.KillEntityByConfigId(context, {config_id=20000991, entity_type = EntityType.GADGET})
    ScriptLib.KillEntityByConfigId(context, {group_id = T_Gruop_ID, config_id= T_Air_Wall, entity_type = EntityType.GADGET})
    return 0
end
function action_t2_EVENT_VARIABLE_CHANGE_Ready(context,evt)
    local _wait = ScriptLib.GetGroupTempValue(context,"Need_Wait",{})
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_2 action_t2_EVENT_VARIABLE_CHANGE_Ready: _wait=".._wait)
    if _wait == 1 then 
        ScriptLib.SetGroupTempValue(context,"Need_Wait",0,{})
        local _hard = ScriptLib.GetGroupTempValue(context,"operator_is_hard",{})
        local _boss = ScriptLib.GetGroupTempValue(context,"operator_is_boss",{})
		LF_Create_Fight_Operator(context,_hard,_boss)
		local _vec = ScriptLib.GetRogueDiaryRoundAndRoom(context)
        --地城2特殊处理：创建操作台时给个reminder
		if #_vec == 2 then 
			local _stage = _vec[1]
			local _cell = _vec[2]
            local _uidlist = ScriptLib.GetSceneUidList(context)
			ScriptLib.AssignPlayerShowTemplateReminder(context, 167+_stage, {param_vec={_cell},param_uid_vec={},uid_vec={_uidlist[1]}})
		else
			ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ENTER_REGION[Warning]:#_vec="..#_vec)
		end
    end
    return 0
end
function action_t2_action_EVENT_ROGUE_OPEN_ACCESS(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_2 action_t2_action_EVENT_ROGUE_OPEN_ACCESS:")
    if evt.param1 == 1 then return 0 end --通关后不需要开通路
    ScriptLib.CreateGadget(context, { config_id = 20000991})
    ScriptLib.SetWorktopOptionsByGroupId(context,  base_info.group_id, 20000991, {198})
    return 0
end
function action_t2_EVENT_CHALLENGE_SUCCESS(context,evt)
    ScriptLib.SetGroupVariableValueByGroup(context,"Clear",0,T_Gruop_ID)
    return 0
end
function action_t2_EVENT_GROUP_LOAD(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_2 action_t2_EVENT_GROUP_LOAD:")
    ScriptLib.SetGroupTempValue(context,"Need_Wait",0,{})
    return 0
end
--初始化
function Initialize_2()
	--加变量
    if temp_Variables_Rogue_Terrain_2 ~= nil then 
        for k,v in pairs(temp_Variables_Rogue_Terrain_2) do
            table.insert(variables,v)
        end
    end
	--加触发器
    if temp_Tirgger_Rogue_Terrain_2 ~= nil then 
        for k,v in pairs(temp_Tirgger_Rogue_Terrain_2) do
            v.name = "temp_Tirgger2_"..k
            v.config_id = 40200000 + k
            table.insert(triggers, v)
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end

    --地城2部分：
    --加奇点传送门
    for k , v in pairs(temp_Gadget) do
        table.insert(gadgets,v)
    end

	return 0
end
Initialize_2()