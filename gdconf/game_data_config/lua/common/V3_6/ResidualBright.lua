--ServerUploadTool Save to [/root/env/data/lua/common/V3_4]
--======================================================================================================================
--||   Filename      ||    ResidualBright
--||   RelVersion    ||    V3_4
--||   Owner         ||    chao-jin
--||   Description   ||    
--||   LogName       ||    ##[ResidualBright]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs
--[[
local defs = {
	reset_region = 82001,
	gadget_id_bright = 70310498,
}
]]

--======================================================================================================================
--Triggers&Init

local BrightTriggers={
  	{ config_id = 8000001, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
  	{ config_id = 8000002,name = "leave_region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_reset_region", forbid_guest = false, trigger_count = 0 },
--	{ config_id = 8000003, name = "gadget_state_change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0 },
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#BrightTriggers do
		table.insert(triggers, BrightTriggers[i])
		table.insert(suites[init_config.suite].triggers,BrightTriggers[i].name)
	end
	table.insert(variables,{ config_id = 50000001, name = "successed", value = 0, no_refresh = true})
--初始化
end

LF_Initialize_Group(triggers, suites)

--======================================================================================================================
--Events


--加载判定物件状态
function action_group_load(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "successed")==1 then
		LF_RemoveAllRepeater(context)
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 3)
		for i=1,#gadgets do
			if gadgets[i].gadget_id == defs.gadget_id_bright then
				ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, gadgets[i].config_id, 901)
			end
		end
		return 0
	end
	ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 2)
	return 0
end


--退出区域关闭挑战
function action_leave_reset_region(context, evt)
	if evt.param1 ~= defs.reset_region then
		return 0
	end
	if ScriptLib.GetGroupVariableValue(context, "successed")==1 then
		LF_RemoveAllRepeater(context)
		return 0
	end
	ScriptLib.RefreshGroup(context,{group_id=base_info.group_id,suite=1})
	ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 2)
	return 0
end

--======================================================================================================================
--LevelFunctions

function LF_RemoveAllRepeater(context)
	ScriptLib.PrintContextLog(context, "##[ResidualBright]:移除所有的残念")
	for i=1,#gadgets do
		if gadgets[i].gadget_id == defs.gadget_id_bright then
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, gadgets[i].config_id)
		end
	end
	return 0
end


