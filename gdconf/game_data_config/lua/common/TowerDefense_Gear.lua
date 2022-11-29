--[[
setmetatable(_ENV,{__index=function() return {} end })
--]]
local define = {
	group_id = defs.group_id or 250030001,
	gear_list = --[[defs.gear_list or]] {70350107,70350099,70350100,70350101,70350102,70350103,70350129,70350111,70350108},
	option_list = --[[defs.option_list or]] {41,42,43,44,45,48,49,50,46},
	option_revert = 46,   
	option_points = --[[defs.option_points or]] {20,20,20,20,20,20,20,20,20},
	monster_points = defs.monster_points or 10,
	max_points = defs.max_points or 100
}

local extraTriggers={
	{ config_id = 8000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0},
	{ config_id = 8000002, name = "GADGET_CREATE", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_GADGET_CREATE", trigger_count = 0},
	{ config_id = 8000003, name = "GADGET_DIE", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_GADGET_DIE", trigger_count = 0},
	{ config_id = 8000004, name = "SELECT_OPTION", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION", trigger_count = 0,forbid_guest = false },
	{ config_id = 8000005,name = "TIMER_EVENT_CD", event = EventType.EVENT_TIMER_EVENT, source = "cd", condition = "", action = "action_USE_CD", trigger_count = 0 }
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables, {  config_id=50000001,name = "gateway_one", value = 0})
	table.insert(variables, {  config_id=50000002,name = "gateway_two", value = 0})
	table.insert(variables, { config_id=50000003, name = "use_cd", value = 0})
end

function action_USE_CD(context, evt)
	ScriptLib.SetGroupVariableValue(context, "use_cd", 0)
	return 0
end

function action_GADGET_CREATE(context, evt)
	if evt.param2 == 70330045 then
		if ScriptLib.GetGroupVariableValue(context, "gateway_one")==0 then
			ScriptLib.SetGroupVariableValue(context, "gateway_one", evt.param1)
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, evt.param1, {4005})
			return 0
		elseif ScriptLib.GetGroupVariableValue(context, "gateway_two")==0 then
			ScriptLib.SetGroupVariableValue(context, "gateway_two", evt.param1)
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, evt.param1, {4005})
			return 0
		end
	end
	return 0
end

function action_EVENT_SELECT_OPTION(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "use_cd")==1 then
		ScriptLib.ShowReminder(context, 400027)
		return 0
	end
	if evt.param1==ScriptLib.GetGroupVariableValue(context, "gateway_one") then
		if (ScriptLib.GetGroupVariableValue(context, "gateway_one")==0) or (ScriptLib.GetGroupVariableValue(context, "gateway_two")==0) then
			return 0
		end
		for i=1,#points do
			if points[i].config_id==ScriptLib.GetGroupVariableValue(context, "gateway_two") then
				ScriptLib.TransPlayerToPos(context, {uid_list ={context.uid}, pos = points[i].pos, radius = 2, rot = points[i].rot,is_skip_ui=false})
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, evt.param1, GadgetState.GearStart)
				ScriptLib.SetGroupVariableValue(context, "use_cd", 1)
				ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "cd", 5)
				return 0
			end
		end
	elseif evt.param1==ScriptLib.GetGroupVariableValue(context, "gateway_two") then
		if (ScriptLib.GetGroupVariableValue(context, "gateway_one")==0) or (ScriptLib.GetGroupVariableValue(context, "gateway_two")==0) then
			return 0
		end
		for i=1,#points do
			if points[i].config_id==ScriptLib.GetGroupVariableValue(context, "gateway_one") then
				ScriptLib.TransPlayerToPos(context, {uid_list ={context.uid}, pos = points[i].pos, radius = 2, rot = points[i].rot,is_skip_ui=false})
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, evt.param1, GadgetState.GearStart)
				ScriptLib.SetGroupVariableValue(context, "use_cd", 1)
				ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "cd", 5)
				return 0
			end
		end
	end
	return 0
end

function action_GADGET_DIE(context, evt)
	if evt.param1==ScriptLib.GetGroupVariableValue(context, "gateway_one") then
		ScriptLib.SetGroupVariableValue(context, "gateway_one", 0)
		return 0
	elseif evt.param1==ScriptLib.GetGroupVariableValue(context, "gateway_two") then
		ScriptLib.SetGroupVariableValue(context, "gateway_two", 0)
		return 0
	end
	return 0
end

function action_EVENT_GROUP_LOAD(context, evt)
	ScriptLib.PrintContextLog(context, "## ================ INITIALIZE FUNDATIONS ==============")
	--Initialize_Fundations(context, evt)
	return 0
end

function Initialize_Fundations(context, prev_context, param1, param2, param3)
    local uidList=ScriptLib.GetSceneUidList(context)
    for i=1,math.min(#gadgets,#points) do
        if gadgets[i].gadget_id == defs.fundation_id then
            ScriptLib.CreateFoundation(context, uidList, gadgets[i].config_id, points[i].config_id,defs.challange_group_id,999)
        end
    end
    return 0
end

LF_Initialize_Group(triggers, suites)