--[[
local defs = {
	monster_boss = xxx,
	summon_region_list = {1,2,3}, --region出怪的list
	summon_interval = 15,			--自动出怪时间
	gadget_operator_list = {1,2,3....9} --9个锚点
}
--]]

local Tri = {
	{ name = "variable_change", config_id = 8000001, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0	},
	{ name = "time_axis_pass", config_id = 8000002, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
	{ name = "any_monster_die", config_id = 8000003, event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die", trigger_count = 0 },
}

local other_Tri = {
	[1] = { name = "enter_region", config_id = 8000010, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", forbid_guest = false, trigger_count = 0 }
}

function Initialize()
	for i,v in ipairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[2].triggers, v.name)
	end
	table.insert(triggers, other_Tri[1])
	table.insert(suites[10].triggers, other_Tri[1].name)
end
-----------------------------------
--处理召唤进度，需要保留
function action_variable_change(context, evt)
	if evt.param1 == evt.param2 then
		return -1
	end
	ScriptLib.PrintContextLog(context, "## ## BossDungeon : variable change | "..evt.source_name.." "..evt.param2.." -> "..evt.param1)
	--竞争处理
	if evt.source_name == "SummonStep" then
		if evt.param1 == 1111 then
			ScriptLib.EndTimeAxis(context, "summon")
		end
	end
	return -1
end

--处理局内计时，需要保留
function action_time_axis_pass(context, evt)
	ScriptLib.PrintContextLog(context, "## BossDungeon : time axis pass : "..evt.source_name.." | param1 = "..evt.param1)
	--依次召唤阶段的处理逻辑
	if evt.source_name == "summon" then
		local SummonStep_ = ScriptLib.GetGroupTempValue(context, "SummonStep", {})
		for i=2,4 do
			local temp_ = SummonStep_
			if temp_%math.pow(10,i)//math.pow(10,i-1) == 0 then
				LF_Summon_Action(context, i)
				break
			end
		end
	elseif evt.source_name == "summon_delay" then
		SLC_Summon_Start(context)
	elseif evt.source_name == "stage_1" then
		local stage = ScriptLib.GetGroupTempValue(context, "Oceanid_State", {})
		ScriptLib.PrintContextLog(context, "## BossDungeon : stage = "..stage)
		if 1 == stage then
			SLC_Stage_To_2(context)
		end
	elseif evt.source_name == "shuffle_loop" then
		LF_Random_Attack_Platform(context)
	end
	return 0
end

--处理踩怪，需要保留
function action_enter_region(context, evt)
	for i,v in ipairs(defs.summon_region_list) do
		if v == evt.param1 then
			--提前踩出怪,重新计时
			LF_Summon_Action(context, i+1)
			break
		end
	end
	return 0
end

function action_any_monster_die(context, evt)
	ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : monster_die = "..evt.param1)
	if evt.param1 == defs.monster_boss then
		LF_Clear_Battle_Arena(context)
	else
		--根据召唤的suite自行换算行为
		local noob = ScriptLib.GetMonsterAbilityFloatValue(context, 0, defs.monster_boss, "_MONSTERAFFIX_OCEANID_02_ANIMALSELECT")
		local noob_suite = noob + 4
		for k,v in ipairs(suites[noob_suite].monsters) do
			if evt.param1 == v then
				--怪死了立即召唤下一只
				local temp_ = ScriptLib.GetGroupTempValue(context, "SummonStep", {})
				for i=2,4 do
					if temp_ == 0 then
						break
					end
					if temp_%math.pow(10,i)//math.pow(10,i-1) ~= 1 then
						LF_Summon_Action(context, i)
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
					--ScriptLib.RemoveExtraGroupSuite(context, 0, 11)
					LF_Random_Attack_Platform(context)
					ScriptLib.InitTimeAxis(context, "shuffle_loop", {25}, true)
				end
				break 
			end
		end
	end
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

function LF_Clear_Battle_Arena(context)
	ScriptLib.PrintContextLog(context, "##ACT_OCEANID_LOG : Clear_Battle_Arena")
	ScriptLib.SetGroupTempValue(context, "is_in_battle", 0, {})
	ScriptLib.SetGroupTempValue(context, "SummonStep", 0, {})
	ScriptLib.EndTimeAxis(context, "stage_1")
	ScriptLib.EndTimeAxis(context, "summon_delay")
	ScriptLib.EndTimeAxis(context, "summon")
	ScriptLib.EndTimeAxis(context, "shuffle_loop")
	for i=2,10 do
		ScriptLib.KillExtraGroupSuite(context, 0, i)
	end
	--变量转给group内部
end

function LF_Create_Boss(context)
	--调资源包接口
	ScriptLib.InitTimeAxis(context, "stage_1", {120}, false)
	ScriptLib.SetGroupTempValue(context, "Oceanid_State", 1, {})
	ScriptLib.AddExtraGroupSuite(context, 0, 2)
end

function LF_Random_Attack_Platform(context)
	math.randomseed(ScriptLib.GetServerTime(context))
	local p={}
	local array = {1,2,3,4,5,6,7,8,9}
	local _max = 3
	if 0 ~= ScriptLib.GetMonsterAbilityFloatValue(context, 0, defs.monster_boss, "_MONSTERAFFIX_OCEANID_02_PLATFORMDAMAGE_SUM_UP") then
		_max = 5
	end
	for j=1,_max do
		local ran = math.random(#array)
		for k,v in pairs(array) do
			if ran == k then
				p[j] = array[k]
				table.remove(array, k)
				break
			end
		end
	end
	ScriptLib.PrintContextLog(context, "## BossDungeon : Platform_Sum = "..#p)
	for i,v in ipairs(defs.gadget_operator_list) do
		local is_match = false
		for m,n in ipairs(p) do
			if i == n then
				is_match = true
				break
			end
		end
		if is_match == true then
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 201)
		else
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)
		end
	end
end

function LF_Summon_Action(context, idx)
	--根据召唤的suite自行换算行为
	local noob = ScriptLib.GetMonsterAbilityFloatValue(context, 0, defs.monster_boss, "_MONSTERAFFIX_OCEANID_02_ANIMALSELECT")
	local noob_suite = noob + 4
	local noob_heal = ScriptLib.GetMonsterAbilityFloatValue(context, 0, defs.monster_boss, "_MONSTERAFFIX_OCEANID_02_ANIMALHEAL_UP")
	local noob_bomb = ScriptLib.GetMonsterAbilityFloatValue(context, 0, defs.monster_boss, "_MONSTERAFFIX_OCEANID_02_ANIMAL_DEATHEXPLODE")
	local noob_level = ScriptLib.GetEffigyChallengeMonsterLevel(context) + 1
	ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : noob = "..noob.." | noob_heal = "..noob_heal)
	ScriptLib.CreateMonster(context, {config_id=suites[noob_suite].monsters[idx], level=noob_level, delay_time=0, server_global_value={["SGV_MONSTERAFFIX_OCEANID_02_ANIMALHEAL_UP"]=noob_heal,["SGV_MONSTERAFFIX_OCEANID_02_ANIMAL_DEATHEXPLODE"]=noob_bomb}})
	--remove相应的region
	if idx ~= 1 then
		ScriptLib.RemoveExtraGroupSuite(context, 0, idx+5)
	end
	local value = ScriptLib.GetGroupTempValue(context, "SummonStep", {})
	value = value - value%math.pow(10,idx) + value%math.pow(10,idx-1) + math.pow(10,idx-1) 
	ScriptLib.SetGroupTempValue(context, "SummonStep", value, {})
	if value ~= 1111 then
		ScriptLib.InitTimeAxis(context, "summon", {defs.summon_interval}, true)
	end
end

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
	local noob = ScriptLib.GetMonsterAbilityFloatValue(context, 0, defs.monster_boss, "_MONSTERAFFIX_OCEANID_02_ANIMALSELECT")
	local noob_suite = noob + 4
	local noob_heal = ScriptLib.GetMonsterAbilityFloatValue(context, 0, defs.monster_boss, "_MONSTERAFFIX_OCEANID_02_ANIMALHEAL_UP")
	local noob_bomb = ScriptLib.GetMonsterAbilityFloatValue(context, 0, defs.monster_boss, "_MONSTERAFFIX_OCEANID_02_ANIMAL_DEATHEXPLODE")
	local noob_level = ScriptLib.GetEffigyChallengeMonsterLevel(context) + 1
	ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : noob = "..noob.." | noob_heal = "..noob_heal)
	ScriptLib.CreateMonster(context, {config_id=suites[noob_suite].monsters[1], level=noob_level, delay_time=0, server_global_value={["SGV_MONSTERAFFIX_OCEANID_02_ANIMALHEAL_UP"]=noob_heal,["SGV_MONSTERAFFIX_OCEANID_02_ANIMAL_DEATHEXPLODE"]=noob_bomb}})
	ScriptLib.AddExtraGroupSuite(context, 0, 7)
	ScriptLib.AddExtraGroupSuite(context, 0, 8)
	ScriptLib.AddExtraGroupSuite(context, 0, 9)
	ScriptLib.AddExtraGroupSuite(context, 0, 10)
	ScriptLib.SetGroupTempValue(context, "SummonStep", 1, {})
	return 0
end

function SLC_Platform_Shuffle(context)
	ScriptLib.PrintContextLog(context, "## ACT_OCEANID_LOG : SLC_Shuffle")
	LF_Random_Attack_Platform(context)
	return 0
end

function SLC_Boss_Escape(context)
	ScriptLib.PrintContextLog(context, "## oceanid escape")
	return 0
end
---------------------------------------
Initialize()

---------------------------------------