--ServerUploadTool Save to [/root/env/data/lua/common/V3_4]
--======================================================================================================================
--||   Filename      ||    CodedLock
--||   RelVersion    ||    V3_4
--||   Owner         ||    chao-jin
--||   Description   ||    
--||   LogName       ||    ##[CodedLock]
--||   Protection    ||    3.6版本的能量开关
--======================================================================================================================
--Defs & Miscs
--[[
local defs = {
	opt_id = 91004,
	rotor_top = 91003,
	rotor_mid = 91002,
	rotor_bot = 91001,
	reminder_success = 400112,
}
local rotor_map = {
	[91001] = {init_state = 1, end_state = 3},
	[91002] = {init_state = 3, end_state = 2},
	[91003] = {init_state = 4, end_state = 4},
}
]]
local CodedLock_Triggers = {
    [1] = { name = "group_load", config_id = 8001001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [2] = { name = "select_option", config_id = 8001002, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    [3] = { name = "gadget_state_change", config_id = 8001003, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0},

}

function CodedLock_Initialize()
	for k,v in pairs(CodedLock_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	table.insert(variables,{ config_id = 50000001,name = "Finished", value = 0, no_refresh = true})
end
--======================================================================================================================
--Events
function action_group_load(context, evt) 
	if  0 ~= ScriptLib.GetGroupVariableValue(context, "Finished") then 
		return 0
	end 
	ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.opt_id, {811,812,813})
	for rotor_id,infos in pairs(rotor_map) do
		ScriptLib.SetGadgetStateByConfigId(context, rotor_id, (infos.init_state-1))
		for i=1,4 do
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, rotor_id, "SGV_Surface0"..i, 0)
		end
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, rotor_id, "SGV_Surface0"..infos.init_state, 1)
	end
	return 0
end

function action_select_option(context, evt) 
	if evt.param2 == 811 then 
		LF_RotateRotor(context, defs.rotor_top)
	end
	if evt.param2 == 812 then 
		LF_RotateRotor(context, defs.rotor_mid)
	end
	if evt.param2 == 813 then 
		LF_RotateRotor(context, defs.rotor_bot)
	end
	return 0
end

function action_gadget_state_change(context, evt) 
	if rotor_map[defs.rotor_top].end_state-1 == ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.rotor_top) and 
		rotor_map[defs.rotor_mid].end_state-1 == ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.rotor_mid) and 
		rotor_map[defs.rotor_bot].end_state-1 == ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.rotor_bot) then 
			ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.opt_id, {})
			ScriptLib.ShowReminder(context, defs.reminder_success)
			ScriptLib.SetGroupVariableValue(context, "Finished", 1)
	end
	return 0
end



--======================================================================================================================
--LevelFunctions
--旋转转子
function LF_RotateRotor(context, rotor_id)
	for i=1,4 do
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, rotor_id, "SGV_Surface0"..i, 0)
	end
	local rotor_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, rotor_id)
	if rotor_state < 3 then 
		ScriptLib.SetGadgetStateByConfigId(context, rotor_id, rotor_state+1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, rotor_id, "SGV_Surface0"..(rotor_state+2), 1)
	else
		ScriptLib.SetGadgetStateByConfigId(context, rotor_id, 0)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, rotor_id, "SGV_Surface01", 1)
	end 
end

CodedLock_Initialize()