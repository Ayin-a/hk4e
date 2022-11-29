--[[======================================

||	filename: TowerDefence_Monster_V3.0

||	owner: chao.cui

||	description: 怪物相关逻辑

||	LogName: TD_V3

||	Protection: ???

=======================================]]

--编辑器配置
--[[

	local defs = {
		group_id = 245002003,
		gear_group_id = 245002002
	}

	-- DEFS_MISCS

	route_map={
		[1]={route_points={1,2,3,4,5,6,7,8,9,10},tags=2},
		[2]={route_points={1,2,3,4,5,6,7,8,9,10},tags=4},
		[3]={route_points={1,2,3,4,5,6,7,8,9,10},tags=8},
		[4]={route_points={1,2,3,4,5,6,7,8,9,10},tags=16},
	}

	-- 刷怪方案。在MonsterWaveConfig中配置
	local monsterTides = tides_level_01_sample

]]--

-- 怪物潮概念说明
-- WAVE: 轮次。显示在屏幕上的1/1轮
-- TIDE：每个WAVE中的刷挂波次

-- 打印日志
function PrintLog(context, content)
	local log = "## [TowerDefence_Monster_V3.0] TD_V3: "..content
	ScriptLib.PrintContextLog(context, log)
end

-- 初始化一些trigger和var
function LF_Init_Monster_Group()

	local extraTriggers = 
	{
		t1 = { config_id = 40000001, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 },
		t3 = { config_id = 40000003, name = "MONSTER_WILL_LEAVE_SCENE", event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_MONSTER_DIE_BEFORE_LEAVE_SCENE", trigger_count = 0 },
		--t4 = { config_id = 40000004, name = "EVENT_ANY_MONSTER_LIVE", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_ANY_MONSTER_LIVE", trigger_count = 0 },	
	}

	for _, _trigger in pairs(extraTriggers) do
		table.insert(triggers, _trigger)
		table.insert(suites[1].triggers, _trigger.name)
	end

	table.insert(variables, { config_id=50000001,name = "tide_ptr", value = 0}) -- TIDE
	table.insert(variables, { config_id=50000002,name = "challenge_group", value = 0}) -- 主控group
	table.insert(variables, { config_id=50000003,name = "left_monsters", value = 0}) -- 该wave的怪物总数
	table.insert(variables, { config_id=50000004,name = "monster_tide_index", value = 1}) -- 真正的mini刷怪波次
	table.insert(variables, { config_id=50000005,name = "monster_kill_count", value = 0}) -- 死亡（包含逃走）的怪物
	-- table.insert(variables, { name = "planNum", value = 1, no_refresh = true})
	table.insert(variables, { config_id=50000006,name = "monster_wave_ptr", value = 1}) -- WAVE

	table.insert(variables, { config_id=50000007,name = "currentTideMonsters", value = 0}) -- 当前tide的怪物数量

end

function action_monster_die(context, evt)
	ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "UpdateLeftMonsterNum", {0})

	LF_UpdateMonsterKillCount(context)
	
	return 0
end

function action_MONSTER_DIE_BEFORE_LEAVE_SCENE(context, evt)

	PrintLog(context, "怪物在离开场景前死亡事件触发。")

	-- 根据monsterId判断死亡的怪物是否是【精英怪】
	local eid = evt.source_eid
	local mid = ScriptLib.GetMonsterIdByEntityId(context, eid)
	PrintLog(context, "MONSTERID:"..mid)

	local eliteMonsters = superMonsters or {}
	local isElite = 0
	for _, _monsterId in pairs(eliteMonsters) do
		if mid == _monsterId then 
			isElite = 1
		end
	end

	-- 获取主控Group编号
	local challengeGroup = ScriptLib.GetGroupVariableValue(context, "challenge_group")

	-- 地脉异常L1检查（掉落击杀）
	LF_GetDieFallBonusPoints(context, evt, isElite)

	-- 地脉异常L3检查
	ScriptLib.ExecuteGroupLua(context, challengeGroup, "LF_SpecialGameplayLevel3", {isElite})

	return 0
end

-- 掉落死亡判定
function LF_GetDieFallBonusPoints(context, evt, _isElite)

	local dieReason = evt.param3
	if dieReason == nil then 
		PrintLog(context, "死亡原因未知")
		return 0
	else
		PrintLog(context, "死亡原因:"..dieReason)
	end

	local challengeGroup = ScriptLib.GetGroupVariableValue(context, "challenge_group")

	if dieReason == 5 or dieReason == 6 or dieReason == 7 then 
		-- 地脉异常L1检查 
		ScriptLib.ExecuteGroupLua(context, challengeGroup, "LF_SpecialGameplayLevel1", {_isElite})
	end

end

-- SLC 怪物到达终点（成功逃跑）
-- 复用已有的塔防怪物终点物件。为不影响之前版本逻辑，所以没有修改此function名称为SLC_MonsterArrive
function MonsterArrive(context)
	local entityId = context.target_entity_id
	ScriptLib.PrintContextLog(context, "TowerDefenseMonsterArrive"..context.target_entity_id)
	
	-- points是刷怪点位
	for k, v in pairs(points) do
		if ScriptLib.GetEntityIdByConfigId(context, v.config_id) == entityId then

			-- ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "MonsterEscaped", {0})
			ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "UpdateLeftMonsterNum", {0})
			
			-- 直接Remove（不会走掉血死亡流程）
			ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.MONSTER, v.config_id)

			-- 更新死亡怪物数量
			LF_UpdateMonsterKillCount(context)

			return 0
		end
	end
	return 0
end

function LF_UpdateMonsterKillCount(context)
	local monster_kill_count = ScriptLib.GetGroupVariableValue(context, "monster_kill_count")
	monster_kill_count = monster_kill_count + 1
	ScriptLib.SetGroupVariableValue(context, "monster_kill_count", monster_kill_count)

	if monster_kill_count >= ScriptLib.GetGroupVariableValue(context, "currentTideMonsters") then
		LF_MonsterTideOver(context)
	end
end

-- 计算并设置当前WAVE怪物总数（会由TowerDefence_Challenge_V3.0调用）
function set_monster_number_req(context, prev_context, _challengeGroup, param2, param3)

	--local wave_ptr = param1

	--设置挑战groupid
	ScriptLib.SetGroupVariableValue(context, "challenge_group", _challengeGroup)

	local monstersLeft = 0

	if monsterTides == nil or #monsterTides == 0 then
		PrintLog(context, "monsterTides未配置")
		return 0
	end

	PrintLog(context, "tide count:"..#monsterTides)

	-- 计算当前WAVE的怪物总数
	for i = 1, #monsterTides do
		-- 循环tide的资源包组
		for j = 1, #monsterTides[i] do
			monstersLeft = monstersLeft + (monsterTides[i][j].count * #monsterTides[i][j].route)
		end
	end

	PrintLog(context, "剩余怪物总数"..monstersLeft)


	ScriptLib.ExecuteGroupLua(context, _challengeGroup, "LF_InitLeftMonsterNum", {monstersLeft})
	ScriptLib.SetGroupVariableValue(context, "left_monsters", monstersLeft)
	return 0
end

-- 初始化某tide的怪物总数
function LF_SetTideMonsterNum(context, tide)
	local wave = 1

	local num = 0
	local tideConfigInfo = monsterTides[tide]

	for i = 1, #tideConfigInfo do
		num = num + (tideConfigInfo[i].count * #tideConfigInfo[i].route)
	end

	PrintLog(context, "tide"..tide.."怪物数量设置为"..num)

	ScriptLib.SetGroupVariableValue(context, "currentTideMonsters", num)
	ScriptLib.SetGroupVariableValue(context, "monster_kill_count", 0)
end

--启动此wave的tide1（会由TowerDefence_Challenge_V3.0调用）
-- @param1 主控GroupId
-- @param2 当前wave编号
function LF_StartWave(context, prev_context, param1, param2, param3)

	PrintLog(context, "WAVE开启！")

	local wave = param2
	
	ScriptLib.SetGroupVariableValue(context, "challenge_group", param1)
	ScriptLib.SetGroupVariableValue(context, "monster_wave_ptr", wave)
	ScriptLib.SetGroupVariableValue(context, "tide_ptr", 1)

	LF_StartTide(context, 1)

	return 0
end

-- tide结束
function LF_MonsterTideOver(context)

	ScriptLib.PrintContextLog(context, "TIDE结束")
	
	-- 当前wave和tide
	local wave = ScriptLib.GetGroupVariableValue(context, "monster_wave_ptr")
	local tide = ScriptLib.GetGroupVariableValue(context, "tide_ptr")
	
	if tide >= #monsterTides then
		local challenge_group = ScriptLib.GetGroupVariableValue(context, "challenge_group")
		ScriptLib.ExecuteGroupLua(context, challenge_group, "wave_done", {0})
		PrintLog(context, "此WAVE的所有TIDE结束")
		return 0
	end

	--tide自然结束,开启下一tide
	tide = tide + 1

	LF_StartTide(context, tide)

	return 0
end

function LF_StartTide(context, tide)

	LF_SetTideMonsterNum(context, tide)

	local miniTide = ScriptLib.GetGroupVariableValue(context, "monster_tide_index")
	local affix={}
	for i = 1, #monsterTides[tide] do

		local monster_pool_table = monsterTides[tide][i].monster_package

		if monster_pool_table == nil or #monster_pool_table == 0 then
			PrintLog(context, "Tide"..tide.."的monster_pool_table没取到")
		else
			for i=1,#monster_pool_table do
				PrintLog(context, "Tide"..tide.."的monster_pool_table="..monster_pool_table[i])
			end
		end

		for j = 1, #monsterTides[tide][i].route do
			if 0 ~= ScriptLib.AutoPoolMonsterTide(context, miniTide, defs.group_id, monster_pool_table, monsterTides[tide][i].route[j], route_map[monsterTides[tide][i].route[j]].route_points, affix, {total_count=monsterTides[tide][i].count, min_count=monsterTides[tide][i].min, max_count=monsterTides[tide][i].max, tag=route_map[monsterTides[tide][i].route[j]].tags,fill_time=5,fill_count=5}) then
				PrintLog(context, "MiniTide"..miniTide.."AutoPool失败")
			else
				PrintLog(context, "MiniTide"..miniTide.."AutoPool成功")
			end
			miniTide = miniTide + 1
		end
	end

	ScriptLib.SetGroupVariableValue(context, "monster_tide_index", miniTide)
	ScriptLib.SetGroupVariableValue(context, "tide_ptr", tide)

	return 0
end

------------------------------------
LF_Init_Monster_Group()