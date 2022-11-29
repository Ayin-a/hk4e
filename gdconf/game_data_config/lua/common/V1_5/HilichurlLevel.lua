--[[
local defs = {
	timer_region = 1,
	challenge_region = 2,
	monster_hilichurl = 3,
	exist_hour = {0,6},
}
--]]

local Tri = {
	[1] = { name = "enter_region", config_id = 8000001, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0, forbid_guest = false },
	[2] = { name = "leave_region", config_id = 8000002, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0, forbid_guest = false },
	[3] = { name = "hilichurl_die", config_id = 8000003, event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_hilichurl_die", trigger_count = 0, tag = "950" },
	[4] = { name = "time_axis_pass", config_id = 8000004, event = EventType.EVENT_TIME_AXIS_PASS, source = "Loop", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
	[5] = { name = "variable_change", config_id = 8000005, event = EventType.EVENT_VARIABLE_CHANGE, source = "hili_die", condition = "", action = "action_variable_change", trigger_count = 0 },
	[6] = { name = "set_game_time", config_id = 8000006, event = EventType.EVENT_SET_GAME_TIME, source = "", condition = "", action = "action_set_game_time", trigger_count = 0 },
	[7] = { name = "group_load", config_id = 8000007, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	[8] = { name = "group_will_unload", config_id = 8000008, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
	[9] = { name = "hp_change", config_id = 8000009, event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = tostring(defs.monster_hilichurl), condition = "", action = "action_hp_change", trigger_count = 0 },
	--[10]= { name = "var_print", config_id = 8000010, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_var_print", trigger_count = 0 }
}

local Var = {
	[1] = { config_id=50000001,name = "hili_die", value = 0, no_refresh = false }
}


function Initialize()
	for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	table.insert(variables, Var[1])
end
---------------------------------
function action_enter_region(context, evt)
	if evt.param1 == defs.challenge_region then
		--做一个challenge唯一的保护
		if ScriptLib.GetGroupTempValue(context, "in_challenge", {}) == 0 then	
			local ret = ScriptLib.ActiveChallenge(context, 234, 234, 1, 950, 1, 0)
			ScriptLib.PrintContextLog(context, "## Hilichurl : hili challenge ret = "..ret)
			ScriptLib.SetGroupTempValue(context, "in_challenge", 1, {})
		end
	elseif evt.param1 == defs.timer_region then
		ScriptLib.InitTimeAxis(context, "Loop", {5}, true)
	end
	return 0
end

function action_leave_region(context, evt)
	if evt.param1 == defs.challenge_region then
		if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) == 0 then
			ScriptLib.SetGroupTempValue(context, "in_challenge", 0, {})
			ScriptLib.StopChallenge(context, 234, 0)
		end
	elseif evt.param1 == defs.timer_region then
		ScriptLib.EndTimeAxis(context, "Loop")
	end
	return 0
end

function action_hilichurl_die(context, evt)
	if evt.param1 ~= defs.monster_hilichurl then
		return -1
	end
	ScriptLib.PrintContextLog(context, "## Hilichurl : boss_die_type = "..evt.param2)
	--仅大伟丘正常死亡才计数
	if evt.param2 == 0 then
		ScriptLib.SetGroupTempValue(context, "in_challenge", 0, {})
		local ret = ScriptLib.ChangeGroupVariableValue(context, "hili_die", 1)
		ScriptLib.PrintContextLog(context, "## Hilichurl : die_count_result = "..ret)
		ScriptLib.RemoveExtraGroupSuite(context, 0, 2)
		ScriptLib.RemoveExtraGroupSuite(context, 0, 3)
		return 0
	elseif evt.param2 == 2 then
		--大伟丘逃跑的处理
		ScriptLib.SetGroupTempValue(context, "Exist", 0, {})
		ScriptLib.SetGroupTempValue(context, "in_challenge", 0, {})
		ScriptLib.StopChallenge(context, 234, 0)
		ScriptLib.RemoveExtraGroupSuite(context, 0, 2)
		ScriptLib.RemoveExtraGroupSuite(context, 0, 3)
	end
	return -1
end

function action_time_axis_pass(context, evt)
	local time = ScriptLib.GetGameHour(context)
	ScriptLib.PrintContextLog(context, "## Hilichurl : game hour = "..time)
	LF_Handle_Monster_Hilichurl(context)
	return 0
end

--通过变量通知挑战是否完成
function action_variable_change(context, evt)
	if evt.param1 == evt.param2 + 1 then
		ScriptLib.FinishFindHilichurlLevel(context)
		ScriptLib.EndTimeAxis(context, "Loop")
		return 0
	end
	return -1
end

--调时间后立即做一次判定
function action_set_game_time(context, evt)
	LF_Handle_Monster_Hilichurl(context)
	return 0
end

function action_group_load(context, evt)
	--使用unload做清理，暂时不用load
	return 0
end

function action_group_will_unload(context ,evt)
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, defs.monster_hilichurl)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 2)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 3)
	ScriptLib.EndTimeAxis(context, "Loop")
	return 0
end

function action_hp_change(context, evt)
	if evt.param3 == 0 then
		return -1
	elseif evt.param3 <= 50 then
		if ScriptLib.GetGroupTempValue(context, "hp_50", {}) == 1 then
			return -1
		end
		ScriptLib.ShowReminder(context, 1110236)
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		ScriptLib.SetGroupTempValue(context, "hp_50", 1, {})
	elseif evt.param3 <= 90 then
		if ScriptLib.GetGroupTempValue(context, "hp_90", {}) == 1 then
			return -1
		end
		ScriptLib.ShowReminder(context, 1110236)
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		ScriptLib.SetGroupTempValue(context, "hp_90", 1, {})
	end
	return 0
end

function action_var_print(context, evt)
	ScriptLib.PrintContextLog(context, "## Hilichurl : var_change : "..evt.source_name.." "..evt.param2.." -> "..evt.param1)
	return 0
end
----------------------------------------------
function LF_Handle_Monster_Hilichurl(context)
	local time = ScriptLib.GetGameHour(context)
	if defs.exist_hour[2] == 24 then
		if time == 0 then
			time = 24 
		end
	end
	--先校验时间符合区间
	if time < defs.exist_hour[1] then
		LF_Try_Remove_Hilichurl(context)
		return -1
	end
	--需要处理超出时间是否强制脱战
	if time >= defs.exist_hour[2] then
		LF_Try_Remove_Hilichurl(context)
		return -1
	end
	LF_Try_Summon_Hilichurl(context)
end

function LF_Try_Remove_Hilichurl(context)
	ScriptLib.PrintContextLog(context, "## Hilichurl : Try_Remove_Hilichurl")
	--如果怪不存在则简化处理
	if 1 ~= ScriptLib.GetGroupTempValue(context, "Exist", {}) then
 		return 0
 	end
	if 1 ~= ScriptLib.GetMonsterAbilityFloatValue(context, 0, defs.monster_hilichurl, "_IS_IN_BATTLE") then
		local ret = ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, defs.monster_hilichurl)
		ScriptLib.PrintContextLog(context, "## Hilichurl : Remove Monster Result = "..ret)
		ScriptLib.SetGroupTempValue(context, "Exist", 0, {})
	end
end

function LF_Try_Summon_Hilichurl(context)
	ScriptLib.PrintContextLog(context, "## Hilichurl : Try_Summon_Hilichurl")
	if 1 == ScriptLib.GetGroupTempValue(context, "Exist", {}) then
		return 0
	end
	ScriptLib.PrintContextLog(context, "## Hilichurl : Create Monster")
	local ret = ScriptLib.CreateMonster(context, {config_id = defs.monster_hilichurl, delay_time = 0})
	ScriptLib.PrintContextLog(context, "## Hilichurl : Create Monster Result = "..ret)
	if ret == 0 then
		ScriptLib.SetGroupTempValue(context, "Exist", 1, {})
		ScriptLib.SetGroupTempValue(context, "hp_50", 0, {})
		ScriptLib.SetGroupTempValue(context, "hp_90", 0, {})
	end
end
----------------------------------------------
Initialize()