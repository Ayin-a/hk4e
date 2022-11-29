--[[
雷共鸣石黑河玩法
ServerUploadTool Save to [/root/env/data/lua/common/V2_0]
]]--

local RaioPillars={181006,181007,181008,181009,181010}

local extraTriggers={
	 { config_id = 8000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	 { config_id = 8000002, name = "SELECT_OPTION", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
	 { config_id = 8000003, name = "VARIBLE_CHANGE", event = EventType.EVENT_VARIABLE_CHANGE, source = "step", condition = "", action = "action_step_change", trigger_count = 0 },
	 { config_id = 8000004, name = "MONSTRE_DIE", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 },
	 { config_id = 8000005, name = "GADGET_STATE_CHANGE", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0 },
	 { config_id = 8000006, name = "AXIS_SUCCESS", event = EventType.EVENT_TIME_AXIS_PASS, source = "checkSuccess", condition = "", action = "action_axis_success", trigger_count = 0 },
	{ config_id = 8000007, name = "AXIS_FAIL", event = EventType.EVENT_TIME_AXIS_PASS, source = "checkFail", condition = "", action = "action_axis_fail", trigger_count = 0 },
	{ config_id = 8000008, name = "GROUP_REFRESH", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_group_refresh", trigger_count = 0 },
	 { config_id = 8000009,name = "group_will_unload",  event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[2].triggers,extraTriggers[i].name)
	end
	table.insert(variables,{ config_id=50000001,name = "step", value = 0, no_refresh = false})
	table.insert(variables,{ config_id=50000002,name = "killMonster", value = 0, no_refresh = false})
	table.insert(variables,{ config_id=50000003,name = "RaioCotterDoLaserSkill", value = 0, no_refresh = false})
--初始化
end

function DeleteLaserSkill(context)
	ScriptLib.KillEntityByConfigId(context, { config_id = 181027 })
	return 0
end

function RaioCotterDoLaserSkill(context)
	local RaioCotterDoLaserSkill = ScriptLib.GetGroupVariableValue(context, "RaioCotterDoLaserSkill")
	RaioCotterDoLaserSkill=RaioCotterDoLaserSkill+1
	ScriptLib.SetGroupVariableValue(context, "RaioCotterDoLaserSkill", RaioCotterDoLaserSkill)
	ScriptLib.CreateGadget(context, { config_id = 181027 }) 
	ScriptLib.SetGadgetStateByConfigId(context, 181001, 901)
	return 0
end

--把所有雷桩的状态重置
function ResetAllGadgets(context)
	ScriptLib.SetGadgetStateByConfigId(context, 181006, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 181007, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 181008, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 181009, GadgetState.Default)
	ScriptLib.SetGadgetStateByConfigId(context, 181010, GadgetState.Default)
	return 0
end

function SetAllOptions(context)
	ScriptLib.SetGadgetStateByConfigId(context, 181006, 201)
	ScriptLib.SetWorktopOptionsByGroupId(context, 133220181, 181006, {80})
	ScriptLib.SetWorktopOptionsByGroupId(context, 133220181, 181007, {79})
	ScriptLib.SetWorktopOptionsByGroupId(context, 133220181, 181008, {79})
	ScriptLib.SetWorktopOptionsByGroupId(context, 133220181, 181009, {79})
	ScriptLib.SetWorktopOptionsByGroupId(context, 133220181, 181010, {79})
	return 0
end

function RemoveAllOptions(context)
	ScriptLib.DelWorktopOptionByGroupId(context, 133220181, 181006, 80)
	ScriptLib.DelWorktopOptionByGroupId(context, 133220181, 181007, 79)
	ScriptLib.DelWorktopOptionByGroupId(context, 133220181, 181008, 79)
	ScriptLib.DelWorktopOptionByGroupId(context, 133220181, 181009, 79)
	ScriptLib.DelWorktopOptionByGroupId(context, 133220181, 181010, 79)
	return 0
end

function CheckConnectPhaseOne(context)

	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181007) then
		return false
	end
	
	if 204 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181008) then
		return false
	end
	
	if 902 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181009) then
		return false
	end
	
	if 901 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181010) then
		return false
	end
	
	return true

end

function CheckConnectPhaseTwo(context)
	
	if 901 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181007) then
		return false
	end
	
	if 902 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181008) then
		return false
	end
	
	if 204 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181009) then
		return false
	end
	
	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181010) then
		return false
	end

	return true
end

function CheckConnectPhaseThree(context)

	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181007) then
		return false
	end
	
	if 204 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181008) then
		return false
	end
	
	if 204 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181009) then
		return false
	end
	
	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, 133220181, 181010) then
		return false
	end
	
	return true

end


--triggers

function action_group_will_unload(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133220181, EntityType.MONSTER, 181011)
	ScriptLib.RemoveEntityByConfigId(context, 133220181, EntityType.MONSTER, 181088)
	ScriptLib.RemoveEntityByConfigId(context, 133220181, EntityType.MONSTER, 181058)
	ScriptLib.RemoveEntityByConfigId(context, 133220181, EntityType.MONSTER, 181003)
	return 0
end

function action_gadget_state_change(context, evt)
	if evt.param2==181001 and evt.param1==0 then
		local step=ScriptLib.GetGroupVariableValue(context, "step")
		if step == 3 then
			ScriptLib.ShowReminder(context, 7210504)
			ScriptLib.CreateMonster(context, { config_id = 181088, delay_time = 5 })
		end
		if step==5 then
			ScriptLib.ShowReminder(context, 7210505)
			ScriptLib.CreateMonster(context, { config_id = 181058, delay_time = 5 })
			ScriptLib.CreateMonster(context, { config_id = 181003, delay_time = 5 })
		end
	end
	return 0
end

--处理对应的阶段创建出对应的解图案
function action_step_change(context, evt)
	if evt.param1==2 then
		ScriptLib.AddExtraGroupSuite(context, 133220181, 8)
	end
	if evt.param1==4 then
		ScriptLib.AddExtraGroupSuite(context, 133220181, 9)
	end
	if evt.param1==6 then
		ScriptLib.AddExtraGroupSuite(context, 133220181, 10)
	end
	return 0
end

function action_monster_die(context, evt)
	--[[
	if 0==ScriptLib.GetGroupMonsterCount(context) then
		--根据死的是哪个怪物来推进玩法进度
		if evt.param1==181011 then
			ScriptLib.SetGroupVariableValue(context, "step",2)
		end
		if evt.param1==181088 then
			ScriptLib.SetGroupVariableValue(context, "step", 4)
		end
		if (evt.param1==181058) or (evt.param1==181003) then
			ScriptLib.SetGroupVariableValue(context, "step", 6)
		end
		--打开所有雷桩的按钮
		SetAllOptions(context)
	else
		ScriptLib.PrintContextLog(context, "剩余怪物"..ScriptLib.GetGroupMonsterCount(context))
	end
	]]--
	if evt.param1==181011 then
		ScriptLib.SetGroupVariableValue(context, "step",2)
		SetAllOptions(context)
	end
	if evt.param1==181088 then
		ScriptLib.SetGroupVariableValue(context, "step", 4)
		SetAllOptions(context)
	end
	if (evt.param1==181058) or (evt.param1==181003) then
		if ScriptLib.GetGroupVariableValue(context, "killMonster")==1 then
			ScriptLib.SetGroupVariableValue(context, "step", 6)
			SetAllOptions(context)
		else
			ScriptLib.SetGroupVariableValue(context, "killMonster", 1)
		end
	end
	return 0
end
--刷到suite2时，初始化关卡
function action_group_refresh(context, evt)
	if evt.param1==2 then
		ScriptLib.SetGroupVariableValue(context, "step", 1)
		ScriptLib.CreateMonster(context, { config_id = 181011, delay_time = 0 })
		ScriptLib.SetGroupVariableValue(context, "killMonster", 0)
	end
	return 0
end

function action_group_load(context, evt)
	ScriptLib.SetGroupVariableValue(context, "step", 1)
	ScriptLib.CreateMonster(context, { config_id = 181011, delay_time = 0 })
	ScriptLib.SetGroupVariableValue(context, "killMonster", 0)
	return 0
end
--判定成功
function action_axis_success(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context, 181001, GadgetState.GearStart)
	ResetAllGadgets(context)
	local step=ScriptLib.GetGroupVariableValue(context, "step")
	if step == 2 then
		ScriptLib.KillExtraGroupSuite(context, 133220181, 8)
		ScriptLib.SetGroupVariableValue(context, "step",3)
		ScriptLib.ShowReminder(context, 7210503)
	end
	if step==4 then
		ScriptLib.KillExtraGroupSuite(context, 133220181, 9)
		ScriptLib.SetGroupVariableValue(context, "step",5)
	end
	if step==6 then
		ScriptLib.KillExtraGroupSuite(context, 133220181, 10)
		ScriptLib.SetGroupVariableValue(context, "step",7)
	end
	return 0
end
--判定失败
function action_axis_fail(context, evt)
	--归还按钮
	SetAllOptions(context)
	ResetAllGadgets(context)
	return 0
end

function action_select_option(context, evt)
	if evt.param2==79 then
		local _gadgetStateList = {203,204,901,902}
		local _key = 0
		for k,v in pairs(_gadgetStateList) do
		  if v == ScriptLib.GetGadgetStateByConfigId(context, 133220181, evt.param1) then
		    _key = k
		    break
		  end
		end

		if 0 == _key then
		     ScriptLib.SetGroupGadgetStateByConfigId(context, 133220181, evt.param1, _gadgetStateList[1])
		  return 0
		end

		_key = _key + 1
		_key = _key%#_gadgetStateList
		if 0 == _key then
		  _key = #_gadgetStateList
		end

		if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220181, evt.param1, _gadgetStateList[_key]) then
		      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_IndexStep")
  		return -1
		end
	end
	if evt.param2==80 then
		ScriptLib.SetGadgetStateByConfigId(context, 181006, GadgetState.GearStop)
		RemoveAllOptions(context)
		local step=ScriptLib.GetGroupVariableValue(context, "step")
		if step == 2 then
			if CheckConnectPhaseOne(context)==true then 
				ScriptLib.InitTimeAxis(context, "checkSuccess", {3}, false)
			else
				ScriptLib.InitTimeAxis(context, "checkFail", {3}, false)
			end
		end
		if step==4 then
			if CheckConnectPhaseTwo(context)==true then
				ScriptLib.InitTimeAxis(context, "checkSuccess", {3}, false)
			else
				ScriptLib.InitTimeAxis(context, "checkFail", {3}, false)
			end
		end
		if step==6 then
			if CheckConnectPhaseThree(context)==true then
				ScriptLib.InitTimeAxis(context, "checkSuccess", {3}, false)
			else
				ScriptLib.InitTimeAxis(context, "checkFail", {3}, false)
			end
		end
	end
	return 0
end


LF_Initialize_Group(triggers, suites)