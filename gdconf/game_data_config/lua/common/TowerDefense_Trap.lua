--[[
setmetatable(_ENV,{__index=function() return {} end })


defs.group_id
defs.timer
--光桥机关
local light_bridge={
	{operator_id=8001,effect_id=8002,gadget_id={8003}}
}
local wind_field={
	{operator_id=8001,effect_id=8002,gadget_id={8003}}
}
--]]
function LF_Initialize_Trap()
	table.insert(variables,{ config_id=50000001,name = "hasDiscount", value = 0 })
	table.insert(variables,{ config_id=50000002,name = "hasColdDownDiscount", value = 0 })
	t1 = { config_id = 8000001, name = "GADGET_CREATE", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE", action = "action_EVENT_GADGET_CREATE", trigger_count = 0 }
	t2 = { config_id = 8000002, name = "SELECT_OPTION", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION", trigger_count = 0,forbid_guest = false  }
	t3 = { config_id = 8000003, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0}
	t4 = { config_id = 8000004, name = "Variable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "hasDiscount", condition = "", action = "action_VARIABLE_CHANGE", trigger_count = 0}
	t5 = { config_id = 8000005, name = "Gadget_State_Change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_GADGET_STATE_CHANGE", trigger_count = 0}
	table.insert(triggers, t1)
	table.insert(triggers, t2)
	table.insert(triggers, t3)
	table.insert(triggers, t4)
	table.insert(triggers, t5)
	table.insert(suites[1].triggers, t1.name)
	table.insert(suites[1].triggers, t2.name)
	table.insert(suites[1].triggers, t3.name)
	table.insert(suites[1].triggers, t4.name)
	table.insert(suites[1].triggers, t5.name)
	--ScriptLib.PrintLog("## suite.gadgets.size() -> "..#suites[1].gadgets)
	--[[
	for i=1,#light_bridge do
		local trigger={ config_id = 8000000+light_bridge[i].operator_id,name = tostring(light_bridge[i].operator_id), event = EventType.EVENT_TIMER_EVENT, source = tostring(light_bridge[i].operator_id), condition = "", action = "action_Light_Bridge_Revert", trigger_count = 0 }
	end
	]]--
	for i=1,#wind_field do
		table.insert(variables,{ config_id=51000000+i,name = tostring(wind_field[i].operator_id).."wind", value = 0 })
		local wind_field_trigger={ config_id = 8000000+wind_field[i].operator_id,name = tostring(wind_field[i].operator_id), event = EventType.EVENT_TIMER_EVENT, source = tostring(wind_field[i].operator_id), condition = "", action = "action_Trap_Revert", trigger_count = 0 }
		table.insert(triggers, wind_field_trigger)
		table.insert(suites[1].triggers, wind_field_trigger.name)
	end
	for i=1,#light_bridge do
		table.insert(variables,{ config_id=52000000+i,name = tostring(light_bridge[i].operator_id).."bridge", value = 0 })
		local light_bridge_trigger={ config_id = 8000000+light_bridge[i].operator_id,name = tostring(light_bridge[i].operator_id), event = EventType.EVENT_TIMER_EVENT, source = tostring(light_bridge[i].operator_id), condition = "", action = "action_Trap_Revert", trigger_count = 0 }
		table.insert(triggers, light_bridge_trigger)
		table.insert(suites[1].triggers, light_bridge_trigger.name)
	end
	return 0
end

function LF_Initial_Options(context)
	if ScriptLib.GetGroupVariableValue(context, "hasDiscount") == 0 then
		for i=1,#light_bridge do
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, light_bridge[i].operator_id, {4001})
		end
		for i=1,#wind_field do
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, wind_field[i].operator_id, {4003})
		end
	elseif ScriptLib.GetGroupVariableValue(context, "hasDiscount") == 1 then
		for i=1,#light_bridge do
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, light_bridge[i].operator_id, {4002})
		end
		for i=1,#wind_field do
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, wind_field[i].operator_id, {4004})
		end
	end
	return 0
end

function action_GADGET_STATE_CHANGE(context,evt)
	--[[
	if evt.param1 == GadgetState.GearStart then
		for i=1,#light_bridge do
			if evt.param2 == light_bridge[i].operator_id then
				ScriptLib.SetGadgetEnableInteract(context, defs.group_id, light_bridge[i].operator_id, false)
			end
		end
		for j=1,#wind_field do
			if evt.param2 == wind_field[i].operator_id then
				ScriptLib.SetGadgetEnableInteract(context, defs.group_id, wind_field[i].operator_id, false)
			end
		end
		return 0
	end
	]]--
	if evt.param1 == GadgetState.Default then 
		for i=1,#light_bridge do
			if evt.param2 == light_bridge[i].operator_id then
				ScriptLib.ShowReminder(context, 400024)
				ScriptLib.SetGroupVariableValue(context, tostring(light_bridge[i].operator_id).."bridge", 0)
				if ScriptLib.GetGroupVariableValue(context, "hasDiscount") == 0 then
					ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, light_bridge[i].operator_id, 4001)
					ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, light_bridge[i].operator_id, 4002)
					ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, light_bridge[i].operator_id, {4001})
				elseif ScriptLib.GetGroupVariableValue(context, "hasDiscount") == 1 then
					ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, light_bridge[i].operator_id, 4001)
					ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, light_bridge[i].operator_id, 4002)
					ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, light_bridge[i].operator_id, {4002})
				end
				--ScriptLib.SetGadgetEnableInteract(context, defs.group_id, light_bridge[i].operator_id, true)
				ScriptLib.CreateGadget(context, { config_id = light_bridge[i].effect_id })
			end
		end
		for j=1,#wind_field do
			if evt.param2 == wind_field[j].operator_id then
				ScriptLib.ShowReminder(context, 400024)
				ScriptLib.SetGroupVariableValue(context, tostring( wind_field[j].operator_id).."wind", 0)
				if ScriptLib.GetGroupVariableValue(context, "hasDiscount") == 0 then
					ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, wind_field[j].operator_id, 4003)
					ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, wind_field[j].operator_id, 4004)
					ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, wind_field[j].operator_id, {4003})
				elseif ScriptLib.GetGroupVariableValue(context, "hasDiscount") == 1 then
					ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, wind_field[j].operator_id, 4003)
					ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, wind_field[j].operator_id, 4004)
					ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, wind_field[j].operator_id, {4004})
				end
				--ScriptLib.SetGadgetEnableInteract(context, defs.group_id, wind_field[j].operator_id, true)
				for k=1,#wind_field[j].gadget_id do
					ScriptLib.KillEntityByConfigId(context, { config_id = wind_field[j].gadget_id[k] })
				end
				ScriptLib.CreateGadget(context, { config_id = wind_field[j].effect_id })
			end
		end
		return 0
	end
	return 0
end

function action_VARIABLE_CHANGE(context, evt)
	if evt.param1 ==0 then
		for i=1,#light_bridge do
			if ScriptLib.GetGroupVariableValue(context, tostring(light_bridge[i].operator_id).."bridge") == 0 then
				ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, light_bridge[i].operator_id, 4001)
				ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, light_bridge[i].operator_id, 4002)
				ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, light_bridge[i].operator_id, {4001})
			end
		end	
		for i=1,#wind_field do
			if ScriptLib.GetGroupVariableValue(context, tostring(wind_field[i].operator_id).."wind") == 0 then
				ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, wind_field[i].operator_id, 4003)
				ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, wind_field[i].operator_id, 4004)
				ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, wind_field[i].operator_id, {4003})
			end
		end	
		return 0	
	end
	if evt.param1 ==1 then
		for i=1,#light_bridge do
			if ScriptLib.GetGroupVariableValue(context, tostring(light_bridge[i].operator_id).."bridge") == 0 then
				ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, light_bridge[i].operator_id, 4001)
				ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, light_bridge[i].operator_id, 4002)
				ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, light_bridge[i].operator_id, {4002})
			end
		end	
		for i=1,#wind_field do
			if ScriptLib.GetGroupVariableValue(context, tostring(wind_field[i].operator_id).."wind") == 0 then
				ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, wind_field[i].operator_id, 4003)
				ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, wind_field[i].operator_id, 4004)
				ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, wind_field[i].operator_id, {4004})
			end
		end	
		return 0	
	end
	return 0
end

function SetDiscount(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "hasDiscount", 1)
	return 0
end
function SetColdTownDiscount(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "hasColdDownDiscount", 1)
	return 0
end

function action_Trap_Revert(context, evt)
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, tonumber(evt.source_name), GadgetState.Default)
	return 0
end

function condition_EVENT_GADGET_CREATE(context, evt)
	return false
end

function action_EVENT_GADGET_CREATE(context, evt)
	return 0
end

function action_EVENT_SELECT_OPTION(context, evt)
	if (evt.param2 == 4001) or (evt.param2==4002) then
		ScriptLib.PrintContextLog(context, "## TD_LOG : 4001 or 4002 UID:"..context.uid.." CLICKED")
		if evt.param2==4001 then
			if ScriptLib.GetMechanicusBuildingPoints(context,defs.challange_group_id ,999, context.uid)<40 then
				ScriptLib.ShowReminder(context, 400026)
				return 0
			else
				ScriptLib.AddMechanicusBuildingPoints(context, defs.challange_group_id,999, context.uid, -40)
			end
		elseif evt.param2==4002 then
			if ScriptLib.GetMechanicusBuildingPoints(context,defs.challange_group_id ,999, context.uid)<20 then
				ScriptLib.ShowReminder(context, 400026)
				return 0
			else
				ScriptLib.AddMechanicusBuildingPoints(context, defs.challange_group_id,999, context.uid, -20)
			end
		end
		ScriptLib.PrintContextLog(context, "## TD_LOG : 4001 or 4002 clicked")
		for i=1,#light_bridge do
			if light_bridge[i].operator_id==evt.param1 then
				ScriptLib.PrintContextLog(context, "## TD_LOG : 4001 or 4002 matched")
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, light_bridge[i].operator_id, GadgetState.GearStart)
				if ScriptLib.GetGroupVariableValue(context, "hasColdDownDiscount") ~= 0 then
					ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(light_bridge[i].operator_id), defs.timer)
				end
				if evt.param2 == 4001 then
					ScriptLib.DelWorktopOption(context, 4001)
				else 
					ScriptLib.DelWorktopOption(context, 4002)
				end
				--去除指引特效
				ScriptLib.KillEntityByConfigId(context, { config_id = light_bridge[i].effect_id })
				--将光桥状态设为Default
				for j=1,#light_bridge[i].gadget_id do
					ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, light_bridge[i].gadget_id[j], GadgetState.Default)
				end
				ScriptLib.SetGroupVariableValue(context, tostring(light_bridge[i].operator_id).."bridge", 1)
				--ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(evt.param1), defs.timer)
			end
		end
		return 0
	end
	if (evt.param2 == 4003) or (evt.param2==4004)  then
		ScriptLib.PrintContextLog(context, "## TD_LOG : 4003 or 4004 UID:"..context.uid.." CLICKED")
		if evt.param2==4003 then
			if ScriptLib.GetMechanicusBuildingPoints(context,defs.challange_group_id ,999, context.uid)<40 then
				ScriptLib.ShowReminder(context, 400026)
				return 0
			else
				ScriptLib.AddMechanicusBuildingPoints(context, defs.challange_group_id,999, context.uid, -40)
			end
		elseif evt.param2==4004 then
			if ScriptLib.GetMechanicusBuildingPoints(context,defs.challange_group_id ,999, context.uid)<20 then
				ScriptLib.ShowReminder(context, 400026)
				return 0
			else
				ScriptLib.AddMechanicusBuildingPoints(context, defs.challange_group_id,999, context.uid, -20)
			end
		end
		ScriptLib.PrintContextLog(context, "## TD_LOG : 4003 or 4004 clicked")
		for i=1,#wind_field do
			if wind_field[i].operator_id==evt.param1 then
				ScriptLib.PrintContextLog(context, "## TD_LOG : 4003 or 4004 matched")
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, wind_field[i].operator_id, GadgetState.GearStart)
				if ScriptLib.GetGroupVariableValue(context, "hasColdDownDiscount") ~= 0 then
					ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(wind_field[i].operator_id), defs.timer)
				end
				if evt.param2 ==4003 then
					ScriptLib.DelWorktopOption(context, 4003)
				else 
					ScriptLib.DelWorktopOption(context, 4004)
				end
				ScriptLib.KillEntityByConfigId(context, { config_id = wind_field[i].effect_id })
				--创建风场
				for j=1,#wind_field[i].gadget_id do
					ScriptLib.CreateGadget(context, { config_id = wind_field[i].gadget_id[j] })
				end
				ScriptLib.SetGroupVariableValue(context, tostring(wind_field[i].operator_id).."wind", 1)
			end
		end
		return 0
	end
	return 0
end

function action_EVENT_GROUP_LOAD(context, evt)
	LF_Initial_Options(context)
	ScriptLib.SetGroupVariableValue(context, "hasDiscount", 0)
	return 0
end



LF_Initialize_Trap()