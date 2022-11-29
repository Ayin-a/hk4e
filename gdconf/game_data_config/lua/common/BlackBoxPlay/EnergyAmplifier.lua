--[[
雷导立方
ServerUploadTool Save to [/root/env/data/lua/common/BlackBoxPlay]
square={
[1]={config_id=115001,rotation=0},
[2]={config_id=115002,rotation=90},
[3]={config_id=115003,rotation=180},
[4]={config_id=115004,rotation=270},
[5]={config_id=115005,rotation=0},
}


]]--
local stateChain={
	{101,102,103,104},
	{201,202,203,204},
	{301,302,303,304},
}



local extraTriggers={
  --{ config_id = 8000001, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
  --{ config_id = 8000002, name = "PLATFORM_REACH_POINT", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_EVENT_PLATFORM_REACH_POINT", trigger_count = 0 },
  { config_id = 8000003, name = "GADGET_CREATE", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 },
  { config_id = 8000004, name = "SELECT_OPTION", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION", trigger_count = 0,forbid_guest = false  },
  { config_id = 8000005, name = "Gadget_State_Change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_GADGET_STATE_CHANGE", trigger_count = 0}
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	for i=1,#defs.repeater do
		local time_trigger={ config_id = 8000000+defs.repeater[i], name = tostring(defs.repeater[i]), event = EventType.EVENT_TIMER_EVENT, source = tostring(defs.repeater[i]), condition = "", action = "action_Time_Event", trigger_count = 0}
		table.insert(triggers, time_trigger)
		table.insert(suites[1].triggers, time_trigger.name)
	end
	table.insert(variables, { config_id=50000001,name = "ShootTrigger", value = 0})
--初始化
end

function action_Time_Event(context,evt)
	ScriptLib.PrintContextLog(context, "##反射装置TimeEvent"..defs.groupID.."|"..evt.source_name.."|"..evt.param3)
	local temp_id=tonumber(evt.source_name)
	ScriptLib.PrintContextLog(context, "temp_id##"..temp_id)
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.groupID, temp_id, {54,55})
	return 0
end

function action_GADGET_STATE_CHANGE(context,evt)
	for i=1,#defs.repeater do
		if evt.param2==defs.repeater[i] then
			if evt.param3==0 and evt.param1~=0 then
				ScriptLib.CreateGroupTimerEvent(context, defs.groupID, tostring(evt.param2), 3)
			end
			return 0
		end
	end
	return 0
end

function action_gadget_create(context, evt)
	for i=1,#defs.repeater do
		if evt.param1==defs.repeater[i] then
			if ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, evt.param1) ~= 0 then
				ScriptLib.CreateGroupTimerEvent(context, defs.groupID, tostring(evt.param1), 3)
			end	
			return 0
		end
	end
	return 0
end
--54转向 55仰角
function action_EVENT_SELECT_OPTION(context, evt)
	for i=1,#defs.repeater do
		if evt.param1==defs.repeater[i] then
			if evt.param2==54 then
				ChangeGadgetState(context,evt.param1,54)
				ScriptLib.DelWorktopOptionByGroupId(context, defs.groupID, evt.param1, 54)
				ScriptLib.DelWorktopOptionByGroupId(context, defs.groupID, evt.param1, 55)
				ScriptLib.CreateGroupTimerEvent(context, defs.groupID, tostring(evt.param1), 3)
			elseif evt.param2==55 then
				ChangeGadgetState(context,evt.param1,55)
				ScriptLib.DelWorktopOptionByGroupId(context, defs.groupID, evt.param1, 54)
				ScriptLib.DelWorktopOptionByGroupId(context, defs.groupID, evt.param1, 55)
				ScriptLib.CreateGroupTimerEvent(context, defs.groupID, tostring(evt.param1), 3)
			end
			return 0
		end
	end
	return 0
end

function ChangeGadgetState(context,config_id,option_id)
	local stateID=ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, config_id)
	for i=1,#stateChain do
		for j=1,#stateChain[i] do
			if stateID==stateChain[i][j] then
				if option_id==54 then
					if j==#stateChain[i] then
						ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupID, config_id, stateChain[i][1])
						return 0
					else 
						ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupID, config_id, stateChain[i][j+1])
						return 0
					end
				end
				if option_id==55 then
					if i==#stateChain then
						ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupID, config_id, stateChain[1][j])
						return 0
					else 
						ScriptLib.SetGroupGadgetStateByConfigId(context, defs.groupID, config_id, stateChain[i+1][j])
						return 0
					end
				end
			end
		end
	end
	return 0
end

function CutSceneTrigger(context)
	local variable=ScriptLib.GetGroupVariableValue(context, "ShootTrigger")
	variable=variable+1
	ScriptLib.SetGroupVariableValue(context, "ShootTrigger", variable)
	return 0
end

function CheckOroSealDie(context)
	if CheckSuccess02(context)==true then
		for i=1,#gadgets do
			if gadgets[i].gadget_id==70900385 or gadgets[i].gadget_id==70950143 then
				ScriptLib.PrintContextLog(context, "找到摧毁物了"..gadgets[i].config_id)
				ScriptLib.KillEntityByConfigId(context, { config_id = gadgets[i].config_id })
			end
		end
	else
		ScriptLib.PrintContextLog(context, "成功与否判断没过")
	end
	return 0
end

LF_Initialize_Group(triggers, suites)