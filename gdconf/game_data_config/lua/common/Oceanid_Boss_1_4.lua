local relevant_group = {
	[1] = 133102769
}
local play = {
	PlayType = 4,
	PlayId = 4,
	board = 70
}

local Tri = {
	{ name = "variable_change", config_id = 8000001, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0	},
--	{ name = "gadget_create", config_id = 8000002, event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 }, 
--	{ name = "select_option", config_id = 8000003, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
	{ name = "group_will_unload", config_id = 8000004, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0 },
	{ name = "time_axis_pass", config_id = 8000005, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
	{ name = "group_load", config_id = 8000006, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	{ name = "any_monster_die", config_id = 8000007, event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die", trigger_count = 0 },
	{ name = "auth_change", config_id = 8000008, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_auth_change", trigger_count = 0, forbid_guest = false },
	{ name = "battle_state", config_id = 8000009, event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_STATE, source = "", condition = "condition_battle_state", action = "action_battle_state", trigger_count = 0 },
	{ name = "battle_result", config_id = 8000010, event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_RESULT, source = "", condition = "", action = "action_battle_result", trigger_count = 0 },
	{ name = "battle_interrupt", config_id = 8000011, event = EventType.EVENT_SCENE_MP_PLAY_BATTLE_INTERRUPT, source = "", condition = "", action = "action_battle_interrupt", trigger_count = 0},
	{ name = "any_player_die", config_id = 8000012, event = EventType.EVENT_SCENE_MP_PLAY_ALL_AVATAR_DIE, source = "", condition = "", action = "action_any_player_die", trigger_count = 0 }
}

local other_Tri = {
	[1] = { name = "enter_region", config_id = 7000001, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", forbid_guest = false, trigger_count = 0 }
}

function Initialize()
	for i,v in ipairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	table.insert(triggers, other_Tri[1])
	table.insert(suites[11].triggers, other_Tri[1].name)
end
-----------------------------------
function condition_battle_state(context, evt)
	ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG: battle_state : param1->"..evt.param1.." | param2->"..evt.param2.." | param3->"..evt.param3)
	if evt.param1 == play.PlayType and evt.param2 == play.PlayId then 
		return true
	end
	return false
end

function action_battle_state(context, evt)
	--BATTLE_PREPARE
	if evt.param3 == 2 then
		ScriptLib.SetGadgetEnableInteract(context, 133102112, defs.gadget_operator, false)
		local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.gadget_operator_list[1], uid_list[1])
		LF_Manage_OceanId_Replacement(context, 1)
	--BATTLE_READY
	elseif evt.param3 == 3 then
		ScriptLib.PrestartScenePlayBattle(context, {duration = 600,start_cd = 3,progress_stage = {1}, group_id = 133102112})
		ScriptLib.SetGroupTempValue(context, "is_in_battle", 1, {})
	--BATTLE_START
	elseif evt.param3 == 5 then
		LF_Battle_Start(context, evt)
	end
	return 0
end

function action_battle_result(context, evt)
	if evt.param3 == 1 then
		LF_Battle_Win(context, evt)
	elseif evt.param3 == 0 then
		LF_Battle_Lose(context, evt)
	end
	return 0
end

function action_battle_interrupt(context, evt)
	ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : battle_interrupt")
	LF_Battle_Lose(context, evt)
	--LF_Manage_OceanId_Replacement(context, 0)
	ScriptLib.SetGadgetEnableInteract(context, 133102112, defs.gadget_operator, true)
	return 0
end

function action_group_load(context, evt)
	ScriptLib.PrintContextLog(context, "-------------- version 19 ------------------")
	--加载中心操作台
	if 0 == ScriptLib.GetGroupVariableValue(context, "is_in_replacement") then
		ScriptLib.AddExtraGroupSuite(context, 0, 7)
	end
	return 0
end

function action_variable_change(context, evt)
	if evt.param1 == evt.param2 then
		return -1
	end
	ScriptLib.PrintContextLog(context, "## ## ACT_OCEANID_LOG : variable change | "..evt.source_name.." "..evt.param2.." -> "..evt.param1)
	--竞争处理
	if evt.source_name == "is_in_replacement" then
		if evt.param1 == 1 then
			--清理战场
			LF_Clear_Battle_Arena(context)
		elseif evt.param1 == 0 then
			--还原启动装置
			ScriptLib.AddExtraGroupSuite(context, 0, 7)
		end
		return 0
	elseif evt.source_name == "SummonStep" then
		if evt.param1 == 1111 then
			ScriptLib.EndTimeAxis(context, "summon")
		end
	end
	return -1
end

--[[function action_gadget_create(context, evt)
	--补充开启选项
	if evt.param1 == defs.gadget_operator then
		ScriptLib.SetWorktopOptionsByGroupId(context, 0, evt.param1, {2902})
	end
	return 0
end--]]

function action_group_will_unload(context, evt)
	ScriptLib.FailScenePlayBattle(context, 133102112)
	return 0
end

function action_time_axis_pass(context, evt)
	ScriptLib.PrintContextLog(context, "## time axis pass : "..evt.source_name.." | param1 = "..evt.param1)
	--依次召唤阶段的处理逻辑
	if evt.source_name == "summon" then
		local SummonStep_ = ScriptLib.GetGroupTempValue(context, "SummonStep", {})

		for i=2,4 do
			local temp_ = SummonStep_
			if temp_%math.pow(10,i)//math.pow(10,i-1) == 0 then
				LF_Summon_Action(context, i+1)
				break
			end
		end
	elseif evt.source_name == "summon_delay" then
		SLC_Summon_Start(context)
	elseif evt.source_name == "stage_1" then
		local stage = ScriptLib.GetGroupTempValue(context, "Oceanid_State", {})
		ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : stage = "..stage)
		if 1 == stage then
			SLC_Stage_To_2(context)
		end
	elseif evt.source_name == "shuffle_loop" then
		LF_Random_Attack_Platform(context)
	end
	return 0
end

function action_enter_region(context, evt)
	for i,v in ipairs(defs.summon_region_list) do
		if v == evt.param1 then
			--提前踩出怪,重新计时
			LF_Summon_In_Advance(context)
			LF_Summon_Action(context, i+2)
			break
		end
	end
	return 0
end

function action_any_monster_die(context, evt)
	ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : monster_die = "..evt.param1)
	if evt.param1 == defs.monster_boss then
		ScriptLib.AddScenePlayBattleProgress(context, 133102112, 1)
	else
		for k,v in ipairs(defs.stage_monster_list) do
			if evt.param1 == v then
				--怪死了立即召唤下一只
				local temp_ = ScriptLib.GetGroupTempValue(context, "SummonStep", {})
				for i=2,4 do
					if temp_ == 0 then
						break
					end
					if temp_%math.pow(10,i)//math.pow(10,i-1) ~= 1 then
						LF_Summon_Action(context, i+1)
						break
					end
				end
				ScriptLib.ChangeGroupTempValue(context, "Oceanid_HP", -10, {})
				local hp_ = ScriptLib.GetGroupTempValue(context, "Oceanid_HP", {})
				ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : boss_cur_hp = "..hp_)
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.monster_boss, "SGV_Oceanid_HP", hp_)
				--血量40则进入3阶段
				if hp_ <= 40 then
					ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.monster_boss, "SGV_Oceanid_State", 3)
					ScriptLib.SetGroupTempValue(context, "Oceanid_State", 3, {})
					ScriptLib.RemoveExtraGroupSuite(context, 0, 11)
					LF_Random_Attack_Platform(context)
					ScriptLib.InitTimeAxis(context, "shuffle_loop", {25}, true)
				end
				break 
			end
		end
	end
	return 0
end

function action_auth_change(context, evt)
	---[[
	if evt.param1 == 112009 then
		ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : uid = "..context.uid)
		local ret = ScriptLib.TryReallocateEntityAuthority(context, context.uid, defs.gadget_operator_list[1], evt.param1)
		ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : auth_change_result = "..ret)
		if -1 == ret then
			if 1 == ScriptLib.GetGroupTempValue(context, "is_in_battle", {}) then
				ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : Force_End_Battle_With_Failure")
				ScriptLib.FailScenePlayBattle(context, 133102112)
			end
		end
	end
	--]]
	return 0
end

function action_any_player_die(context, evt)
	local uid_list=ScriptLib.GetSceneUidList(context)
	local cnt = 0
	for i,v in ipairs(uid_list) do
		if ScriptLib.IsPlayerAllAvatarDie(context, v) or LF_Get_Distance(context, v, defs.gadget_operator) >= play.board then
			cnt = cnt + 1
		end
	end
	if cnt < #uid_list then
		return -1
	end
	ScriptLib.FailScenePlayBattle(context, 133102112)
	return 0
end
---------------------------------------
function LF_Get_Distance(context, uid, config_id)
	local eid = ScriptLib.GetAvatarEntityIdByUid(context, uid)
	local pos1 = ScriptLib.GetPosByEntityId(context, eid)
	local pos2 = gadgets[config_id].pos
	local X = pos1.x - pos2.x
	local Y = pos1.y - pos2.y
	local Z = pos1.z - pos2.z
	return math.sqrt(X*X+Y*Y+Z*Z)
end

function LF_Battle_Start(context, evt)
	ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : LF_Battle_Start")
	ScriptLib.SetWeatherAreaState(context, 2021, 1)
	local uid_list = ScriptLib.GetSceneUidList(context)
	LF_Create_Boss(context)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.gadget_operator, 201)
	LF_Check_Avatar_Near_Boss(context)
	--ScriptLib.RemoveExtraGroupSuite(context, 0, 7)
	return 0
end

function LF_Battle_Win(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2021, 0)
	LF_Clear_Battle_Arena(context)
	ScriptLib.AddExtraGroupSuite(context, 0, 7)
	ScriptLib.CreateScenePlayGeneralRewardGadget(context, {group_id = 133102112, config_id = defs.gadget_reward})
	return 0
end

function LF_Battle_Lose(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2021, 0)
	LF_Clear_Battle_Arena(context)
	ScriptLib.AddExtraGroupSuite(context, 0, 7)
	return 0
end

function LF_Manage_OceanId_Replacement(context, manage_type)
	if manage_type == 1 then
		for i,v in ipairs(relevant_group) do
			ScriptLib.SetGroupVariableValueByGroup(context, "is_in_replacement", 1, v)
		end
	elseif manage_type == 0 then
		for i,v in ipairs(relevant_group) do
			ScriptLib.SetGroupVariableValueByGroup(context, "is_in_replacement", 0, v)
		end
	end	
end

function LF_Clear_Battle_Arena(context)
	ScriptLib.PrintContextLog(context, "##ACT_OCEANID_LOG : Clear_Battle_Arena")
	ScriptLib.SetGroupTempValue(context, "is_in_battle", 0, {})
	ScriptLib.SetGroupTempValue(context, "SummonStep", 0, {})
	LF_Manage_OceanId_Replacement(context, 0)
	ScriptLib.EndTimeAxis(context, "stage_1")
	ScriptLib.EndTimeAxis(context, "summon_delay")
	ScriptLib.EndTimeAxis(context, "summon")
	ScriptLib.EndTimeAxis(context, "shuffle_loop")
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.monster_boss, entity_type=EntityType.MONSTER})
	ScriptLib.SetGadgetEnableInteract(context, 133102112, defs.gadget_operator, true)
	for i=2,12 do
		ScriptLib.KillExtraGroupSuite(context, 0, i)
	end
end

function LF_Create_Boss(context)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 12)
	ScriptLib.CreateMonsterWithGlobalValue(context, defs.monster_boss, {["SGV_Oceanid_State"] = 1, ["SGV_Oceanid_HP"] = 100})
	ScriptLib.InitTimeAxis(context, "stage_1", {120}, false)
	ScriptLib.SetGroupTempValue(context, "Oceanid_State", 1, {})
	ScriptLib.PrintContextLog(context, "## Oceanid_Log : init time axis 120")
end

function LF_Random_Attack_Platform(context)
	math.randomseed(ScriptLib.GetServerTime(context))
	local p={0,0,0}
	local array = {1,2,3,4,5,6,7,8,9}
	for j=1,3 do
		local ran = math.random(#array)
		for k,v in pairs(array) do
			if ran == k then
				p[j] = array[k]
				table.remove(array, k)
				break
			end
		end
	end
	ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : p1 = "..p[1].." | p2 = "..p[2].." | p3 = "..p[3])
	for i,v in ipairs(defs.gadget_operator_list) do
		if i == p[1] or i == p[2] or i == p[3]  then
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 201)
		else
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)
			--ScriptLib.SetGroupTempValue(context, "safe", v, {})
		end
	end
end

function LF_Summon_Action(context, idx)
	--根据召唤的suite自行换算行为
	ScriptLib.AddExtraGroupSuite(context, 0, idx)
	ScriptLib.RemoveExtraGroupSuite(context, 0, idx+5)
	local value = ScriptLib.GetGroupTempValue(context, "SummonStep", {})
	value = value - value%math.pow(10,idx-1) + value%math.pow(10,idx-2) + math.pow(10,idx-2) 
	ScriptLib.SetGroupTempValue(context, "SummonStep", value, {})
	if value ~= 1111 then
		ScriptLib.InitTimeAxis(context, "summon", {defs.summon_interval}, true)
	end
end

function LF_Check_Avatar_Near_Boss(context)
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		if 45 >= LF_Get_Distance(context, v, defs.gadget_operator) then
			ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.gadget_operator_list[1], v)
			return 0
		end
	end
	ScriptLib.FailScenePlayBattle(context, 133102112)
	return -1
end
						
--[[
function LF_Summon_Crabs(context)
	local position = {x=0,y=0,z=0}
	local rotation = {x=0,y=0,z=0}
	local ran = ScriptLib.GetGroupTempValue(context, "safe", {})
	local X = gadgets[defs.gadget_operator_list[ran] ].pos.x
	local Y = gadgets[defs.gadget_operator_list[ran] ].pos.y
	local Z = gadgets[defs.gadget_operator_list[ran] ].pos.z
	local born_radius = 5
	math.randomseed(ScriptLib.GetServerTime(context))
	for i,v in ipairs(suites[6].monsters) do
		position.x = X + (2*math.random()-1)*born_radius
		position.y = Y
		position.z = Z + (2*math.random()-1)*born_radius
		local x0 = X - position.x
		local z0 = Z - position.z
		if z0 == 0 then
			z0 = 0.01
		end
		if z0 > 0 then
			rotation.y = math.deg(math.atan(x0/z0))
		else
			rotation.y = math.deg(math.atan(x0/z0)) + 180
		end
		ScriptLib.CreateMonsterByConfigIdByPos(context, config_id, position, rotation)
	end
end
--]]
---------------------------------------
function SLC_Stage_To_2(context)
	ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : SLC_Stage_To_2")
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.monster_boss, "SGV_Oceanid_State", 2)
	ScriptLib.SetGroupTempValue(context, "Oceanid_State", 2, {})
	ScriptLib.EndTimeAxis(context, "stage_1")
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.monster_boss, "SGV_Oceanid_HP", 80)
	ScriptLib.SetGroupTempValue(context, "Oceanid_HP", 80, {})
	ScriptLib.SetGroupTempValue(context, "SummonStep", 0, {})
	ScriptLib.InitTimeAxis(context, "summon_delay", {10}, false)
	ScriptLib.SetGroupTempValue(context, "summon_lock", 0, {})
	return 0
end

function SLC_Summon_Start(context)
	if 1 ~= ScriptLib.GetGroupTempValue(context, "summon_lock", {}) then
		ScriptLib.SetGroupTempValue(context, "summon_lock", 1, {})
	else 
		return -1
	end
	ScriptLib.EndTimeAxis(context, "summon_delay")
	ScriptLib.InitTimeAxis(context, "summon", {defs.summon_interval}, true)
	--0001b为第一只怪的标识
	ScriptLib.AddExtraGroupSuite(context, 0, 2)
	ScriptLib.AddExtraGroupSuite(context, 0, 8)
	ScriptLib.AddExtraGroupSuite(context, 0, 9)
	ScriptLib.AddExtraGroupSuite(context, 0, 10)
	ScriptLib.AddExtraGroupSuite(context, 0, 11)
	ScriptLib.SetGroupTempValue(context, "SummonStep", 1, {})
	return 0
end

function SLC_Platform_Shuffle(context)
	ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : SLC_Shuffle")
	--LF_Summon_Crabs(context)
	LF_Random_Attack_Platform(context)
	return 0
end

function SLC_Boss_Escape(context)
	ScriptLib.FailScenePlayBattle(context, 133102112)
	return 0
end
---------------------------------------
Initialize()

---------------------------------------
--uidValue判定区
--下落攻击命中螃蟹的次数
function SLC_FallingAttack_Crab(context)
	local cnt = ScriptLib.GetScenePlayBattleUidValue(context, 133102112, context.uid, "ACT_OCEANID_FallingAttack_Crab")
	ScriptLib.SetScenePlayBattleUidValue(context, 133102112, context.uid, "ACT_OCEANID_FallingAttack_Crab", cnt+1)
	return 0
end

--上电梯的次数
function SLC_Use_Lift(context)
	local cnt = ScriptLib.GetScenePlayBattleUidValue(context, 133102112, context.uid, "ACT_OCEANID_Use_Lift")
	ScriptLib.SetScenePlayBattleUidValue(context, 133102112, context.uid, "ACT_OCEANID_Use_Lift", cnt+1)
	return 0
end

--承受boss大招次数
function SLC_Endure_Boss_EX_Skill(context)
	local cnt = ScriptLib.GetScenePlayBattleUidValue(context, 133102112, context.uid, "ACT_OCEANID_Endure_Boss_EX_Skill")
	ScriptLib.SetScenePlayBattleUidValue(context, 133102112, context.uid, "ACT_OCEANID_Endure_Boss_EX_Skill", cnt+1)
	return 0
end

--提前踩出小怪次数
function LF_Summon_In_Advance(context)
	local cnt = ScriptLib.GetScenePlayBattleUidValue(context, 133102112, context.uid, "ACT_OCEANID_Summon_In_Advance")
	ScriptLib.SetScenePlayBattleUidValue(context, 133102112, context.uid, "ACT_OCEANID_Summon_In_Advance", cnt+1)
	if 1 == ScriptLib.GetScenePlayBattleUidValue(context, 0, context.uid, "ACT_OCEANID_Summon_In_Advance") then
		ScriptLib.MarkPlayerAction(context, 20050102, 1, 1)
	end
end