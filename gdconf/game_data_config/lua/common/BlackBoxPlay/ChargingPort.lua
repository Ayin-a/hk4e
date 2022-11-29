--[[
电桩玩法 黑盒
]]--


local extraTriggers={
  { config_id = 8000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
  { config_id = 8000003,name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION", forbid_guest = false, trigger_count = 0 },
  --{ config_id = 8000004, name = "SELECT_OPTION", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION", trigger_count = 0,forbid_guest = false  }
  {config_id = 8000005, name = "GadgetStateChange", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Gadget_State_Change", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables,{ config_id=50000001,name = "successed", value = 0, no_refresh = true})
--初始化
end

function action_Gadget_State_Change(context, evt)
	ScriptLib.PrintContextLog(context, "物件状态发生变化"..evt.param1..evt.param2)
	if evt.param2==defs.gadget_1 and evt.param1==202 and ScriptLib.GetGroupVariableValue(context, "successed")~=1 then
		ScriptLib.PrintContextLog(context, "挑战已经完成")
		ScriptLib.SetGroupVariableValue(context, "successed", 1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
	end
	return 0
end

function action_group_load(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "successed")==1 then
		RemoveAllRepeater(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_1, 202)
		for i=1,#gadgets do
			if gadgets[i].gadget_id == 70950068 then
				ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, gadgets[i].config_id, 901)
			end
		end
		return 0
	end
	ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
	return 0
end
--拾取时给按钮充能
function action_EVENT_SELECT_OPTION(context, evt)
	for i=1,#defs.relayPost do
		ScriptLib.PrintContextLog(context, "成功触发交互"..context.uid..defs.relayPost[i]..evt.param1)
		if evt.param1==defs.relayPost[i] then
			if evt.param2==57 then
				ScriptLib.PrintContextLog(context, "成功触发交互中继器"..context.uid)
				ScriptLib.AddTeamEntityGlobalFloatValue(context, {context.uid},"AVATAR_Electric_Stake_Play", 1)
			end
			return 0
		end
	end
	return 0
end

--退出区域关闭挑战
function action_EVENT_LEAVE_REGION(context, evt)
	if evt.param1 ~= defs.trigger_playRegion then
		return 0
	end
	if ScriptLib.GetGroupVariableValue(context, "successed")==1 then
		RemoveAllRepeater(context)
		return 0
	end
	ScriptLib.RefreshGroup(context,{group_id=defs.group_Id,suite=1})
	ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
	return 0
end

function RemoveAllRepeater(context)
	for i=1,#gadgets do
		if gadgets[i].gadget_id == 70950069 then
			ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, gadgets[i].config_id)
		end
	end
	return 0
end


function Electric_Stake_Explain(context)
	ScriptLib.MarkPlayerAction(context, 7003, 3, 1)
	return 0
end

LF_Initialize_Group(triggers, suites)