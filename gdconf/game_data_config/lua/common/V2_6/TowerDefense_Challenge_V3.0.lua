--[[======================================

||	filename: TowerDefence_Challenge_V3.0

||	owner: chao.cui

||	description: 主控逻辑

||	LogName: TD_V3

||	Protection: ???

=======================================]]

--[[
	-- Trigger变量
	local defs = {
		group_id = 245002001,
		gear_group_id = 245002002,
		route_guide_timer = 5,
		max_escapable_monsters = 20,
		trapGroups = {245002013},
		init_building_points = 800,
		-- 当前关卡
		level = 0, 
		-- 判断怪物掉落死亡的Y值
		dieY = -8, 
	}

	-- DEFS_MISCS

	--怪物group的ID
	monster_group=245002003

	local guide_routes={1}

	routes_start_point={
			[1]={start_point={x=34.46477,y=-7.699215,z=-92.27316},points={1,2,3,4,5,6,7,8,9,10}},
			[2]={start_point={x=3.397061,y=-7.678518,z=-58.50145},points={1,2,3,4,5,6,7,8,9,10}},
	}

	guide_point_pool={1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040}

]]--

local Global = 
{
	totalWaves = 1,
}

-- 打印日志
function PrintLog(context, content)
	local log = "## [TowerDefence_Challenge_V3.0] TD_V3: "..content
	ScriptLib.PrintContextLog(context, log)
end

-- 初始化Group的各种变量
function LF_Init_Challenge_Group()

	local innerTriggers = 
	{

		t3 = { config_id = 40000003, name = "challenge_success", event = EventType.EVENT_SCENE_MULTISTAGE_PLAY_STAGE_END, source = "", condition = "", action = "action_STAGE_END", trigger_count = 0},
		t4 = { config_id = 40000004, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	    t5 = { config_id = 40000005, name = "timer_event", event = EventType.EVENT_TIMER_EVENT, source = "route_points_delay", condition = "", action = "action_add_route_points", trigger_count = 0},
		t6 = { config_id = 40000006, name = "point_arrive", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_REACH_POINT", trigger_count = 0 },
		t7 = { config_id = 40000007, name = "end_stage_request", event = EventType.EVENT_SCENE_MULTISTAGE_PLAY_END_STAGE_REQ, source = "", condition = "", action = "action_END_STAGE_REQ", trigger_count = 0 },
		-- t8 = { config_id = 8000008, name = "pick_card_event", event = EventType.EVENT_MECHANICUS_PICKED_CARD, source = "", condition = "", action = "action_PICK_CARD", trigger_count = 0 }
		--t9 = { config_id = 40000009,name = "TIMER_EVENT_DELAY", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_NEXT_BUILD_STAGE", trigger_count = 0 },
		
		t10 = { config_id = 40000010,name = "TIMER_EVENT_START_REMINDER", event = EventType.EVENT_TIMER_EVENT, source = "reminder", condition = "", action = "action_START_REMINDER", trigger_count = 0 },
		t11 = { config_id = 40000011,name = "ALL_AVATAR_DIE", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_ALL_AVATAR_DIE", trigger_count = 0 },

	}
	
	for i, v in ipairs(suites) do
		for _, _trigger in pairs(innerTriggers) do
			table.insert(v.triggers, _trigger.name)
		end
	end

	for _, _trigger in pairs(innerTriggers) do
		table.insert(triggers, _trigger)
	end

	-- inner variables
	-- table.insert(variables, { name = "towerNum", value = 0})
	-- table.insert(variables, { name = "cardEffect", value = 1})
	-- table.insert(variables, { name = "newGadget", value = 0})


	table.insert(variables, { config_id=50000001,name = "wave_ptr", value = 0})
	--table.insert(variables, { name = "max_escapable_monsters", value = 10})
	--table.insert(variables, { name = "escaped_monsters", value = 0})

	table.insert(variables, { config_id=50000002,name = "left_monsters", value = 0})
	table.insert(variables, { config_id=50000003,name = "route_guide_points_index", value = 1, no_refresh = true})


	-- 掉落击杀的怪物获得资源点提升
	table.insert(variables, { config_id=50000004,name = "CardPicked_DieReasonIsFall", value = 0})
	-- 机关冷却时间减半
	table.insert(variables, { config_id=50000005,name = "CardPicked_GearCoolDown", value = 0})
	-- 地脉异常4是否激活
	table.insert(variables, { config_id=50000006,name = "M4_Active", value = 0})

	--
	--table.insert(variables, { name = "DieY", value = 0})

		-- GM
		table.insert(variables, { config_id=50000007,name = "GM_LevelNum", value = 0})
 
end

-- 游戏结束条件-所有玩家角色死亡
function action_ALL_AVATAR_DIE(context, evt)
	local uidList = ScriptLib.GetSceneUidList(context)
	local count = 0
	for i = 1, #uidList do
		if ScriptLib.IsPlayerAllAvatarDie(context, uidList[i]) then
			count = count + 1
		end
	end
	if count >= #uidList then
		ScriptLib.EndSceneMultiStagePlay(context, 999, false)
		return 0
	end
	return 0
end

-- 请求结束Stage（提前结束建造）
function action_END_STAGE_REQ(context, evt)
	if evt.param2 == Multistage.IrodoriChessBuild then
		ScriptLib.EndSceneMultiStagePlayStage(context, 999, "build"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"), true)
	end
	return 0
end

-- stage结束
function action_STAGE_END(context, evt)
	if evt.param2 == Multistage.IrodoriChessBuild then
		LF_StopRouteGuidePoints(context)

		local wave = ScriptLib.GetGroupVariableValue(context, "wave_ptr")
		ScriptLib.ExecuteGroupLua(context, monster_group, "LF_StartWave", {defs.group_id, wave})
		ScriptLib.StartSceneMultiStagePlayStage(context, 999, 0, Multistage.IrodoriChessKill, "battle"..wave,{})

		PrintLog(context, "战斗阶段开始: "..wave)
	end
	return 0
end

function action_group_load(context, evt)

	PrintLog(context, "Challenge Group Load Begin.")

	--ScriptLib.SetGroupVariableValue(context, "DieY", defs.dieY)
	-- 初始化允许逃逸的怪物数量
	-- ScriptLib.SetGroupVariableValue(context, "max_escapable_monsters", defs.max_escapable_monsters or 999)
	-- 初始化波数 
	ScriptLib.SetGroupVariableValue(context, "wave_ptr", 1)

	--local ban_list={}

	-- 初始建造点
	-- local initBuildingPoints = defs.init_building_points or 1000

	if 0 ~= ScriptLib.InitSceneMultistagePlay(context, 999, MultistagePlayType.IrodoriChess, {}, ScriptLib.GetSceneUidList(context)) then
		PrintLog(context, "MultiStage初始化失败")
	else
		PrintLog(context, "成功设置MultiStage")
	end

	-- 统计怪物总数量
	ScriptLib.ExecuteGroupLua(context, monster_group, "set_monster_number_req", {defs.group_id})
	PrintLog(context, "成功设置剩余怪物")

	-- 通知服务器leftMonsters
	ScriptLib.SetSceneMultiStagePlayValue(context, 999, "left_monsters", ScriptLib.GetGroupVariableValue(context, "left_monsters"), true)
	PrintLog(context, "成功设置显示参数 left_monsters="..ScriptLib.GetGroupVariableValue(context, "left_monsters"))

	-- 生成路径引导特效
	LF_AddRouteGuidePoints(context)

	-- 处理局外选取的卡牌
	LF_GetPickedCards(context)

	-- x秒后弹出开局文字提示
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "reminder", 5)

	-- 开始第一阶段BUILD（准备时间为10分钟）
	ScriptLib.StartSceneMultiStagePlayStage(context, 999, 600, Multistage.IrodoriChessBuild,"build"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})
	PrintLog(context, "开始第一阶段挑战")

	PrintLog(context, "Challenge Group Load End.")
	return 0
end

-- 开局的文字提示
function action_START_REMINDER(context, evt)
	--"利用机关击败敌人"
	ScriptLib.ShowReminder(context, 400025)
	return 0
end

-- 进入新一WAVE的建造阶段（塔防三期只有一个WAVE。所以该事件不会触发）
-- function action_NEXT_BUILD_STAGE(context, evt)

-- 	LF_AddRouteGuidePoints(context)
-- 	ScriptLib.ExecuteGroupLua(context, monster_group, "set_monster_number_req", {ScriptLib.GetGroupVariableValue(context, "wave_ptr")})
-- 	ScriptLib.SetSceneMultiStagePlayValue(context, 999, "left_monsters", ScriptLib.GetGroupVariableValue(context, "left_monsters"), true)
-- 	ScriptLib.StartSceneMultiStagePlayStage(context, 999, 600, Multistage.IrodoriChessBuild,"build"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"),{})

-- 	return 0
-- end

-- 生成新的路径引导特效TIMER事件
function action_add_route_points(context, evt)
	LF_AddRouteGuidePoints(context)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "route_points_delay", defs.route_guide_timer)
	return 0
end

-- 生成路径引导特效。
function LF_AddRouteGuidePoints(context)

	if guide_routes == nil then
		PrintLog(context, "GuideRoute is Nil.")
		return 0
	end

	-- routes_start_point Table 看上去是标记路径信息
	-- guide_point_pool Table 存储了Group中引导特效点的ConfigId
	for i = 1, #guide_routes do
		local idx = ScriptLib.GetGroupVariableValue(context, "route_guide_points_index")
		if -2 == ScriptLib.CreateGadgetByConfigIdByPos(context, guide_point_pool[idx], routes_start_point[guide_routes[i]].start_point, { x = 0.000, y = 0.000, z = 0.000 }) then
			PrintLog(context, "Guide Points Not Enough")
			return 0
		end

		if 0 ~= ScriptLib.SetPlatformPointArray(context, guide_point_pool[idx], guide_routes[i], routes_start_point[guide_routes[i]].points, { route_type = 0 }) then 
			PrintLog(context, "设置点阵失败")
		end
		
		if idx >= #guide_point_pool then
			idx = 1
		else
			idx = idx + 1
		end
		ScriptLib.SetGroupVariableValue(context, "route_guide_points_index", idx)
	end

	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "route_points_delay", defs.route_guide_timer)
	return 0
end

-- 删除路径引导特效
function LF_StopRouteGuidePoints(context)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, "route_points_delay")
	ScriptLib.KillGroupEntity(context,{group_id = defs.group_id, gadgets = guide_point_pool})
	return 0
end

-- 移动平台到达路点触发的Action（引导特效相关的）
function action_REACH_POINT(context, evt)
	--ScriptLib.KillEntityByConfigId(context, { config_id = evt.param1 })

	-- 进入GearStart状态。5s后会KillSelf
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, evt.param1, GadgetState.GearStart)
	return 0
end

-- 更新剩余怪物总数（由TowerDefense_Monster_V3.0调用）
function UpdateLeftMonsterNum(context, prev_context, param1, param2, param3)
	local leftMonsters = ScriptLib.GetGroupVariableValue(context, "left_monsters")
	if leftMonsters == 0 then
		return 0
	end
	leftMonsters = leftMonsters - 1
	ScriptLib.SetGroupVariableValue(context, "left_monsters", leftMonsters)
	ScriptLib.SetSceneMultiStagePlayValue(context, 999, "left_monsters", leftMonsters, true)
	return 0
end

-- 初始化怪物总数（由TowerDefense_Monster_V3.0调用）
function LF_InitLeftMonsterNum(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "left_monsters", param1)
	return 0
end

-- wave结束（由TowerDefense_Monster_V3.0调用）
function wave_done(context, prev_context, param1, param2, param3)
	ScriptLib.EndSceneMultiStagePlayStage(context, 999, "battle"..ScriptLib.GetGroupVariableValue(context, "wave_ptr"), true)
	local wave = ScriptLib.GetGroupVariableValue(context, "wave_ptr")
	wave = wave + 1
	ScriptLib.SetGroupVariableValue(context, "wave_ptr", wave)
	PrintLog(context, "nextWave-"..wave)

	-- 游戏结束退出条件
	if wave > Global.totalWaves then
		ScriptLib.EndSceneMultiStagePlay(context, 999, true)
		PrintLog(context, "所有波次结束")
		return 0
	end

	-- 塔防三期只有1个WAVE。
	-- ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "delay", 3)
	return 0
end

-- 怪物逃跑（由TowerDefense_Monster_V3.0调用）
-- function MonsterEscaped(context, prev_context, param1, param2, param3)

-- 	local max_escapable_monsters = ScriptLib.GetGroupVariableValue(context, "max_escapable_monsters")
-- 	local escaped_monsters = ScriptLib.GetGroupVariableValue(context, "escaped_monsters")

-- 	-- 特殊怪物
-- 	if param1 == 1 then
-- 		escaped_monsters = escaped_monsters+1

-- 		if escaped_monsters >= max_escapable_monsters then
-- 			ScriptLib.EndSceneMultiStagePlay(context, 999, false)
-- 			return 0
-- 		end
-- 		ScriptLib.SetGroupVariableValue(context, "escaped_monsters", escaped_monsters)
-- 		return 0
-- 	end
	
-- 	escaped_monsters = escaped_monsters + 1

-- 	-- 游戏失败
-- 	if escaped_monsters >= max_escapable_monsters then
-- 		ScriptLib.EndSceneMultiStagePlay(context, 999, false)
-- 		return 0
-- 	end
-- 	ScriptLib.SetGroupVariableValue(context, "escaped_monsters", escaped_monsters)
-- 	return 0
-- end

-- 处理局外选取的卡牌
function LF_GetPickedCards(context)
	PrintLog(context, "设置局外选取的卡牌")
	local cards = ScriptLib.GetIrodoriChessSelectedCards(context, defs.group_id, 999)

	-- 掉落击杀的怪物额外获得资源卡牌编号
	local Card_DieReasonIsFall = 52
	-- 机关冷却时间减半卡牌编号
	local Card_GearCoolDown = 53

	for _, _card in pairs(cards) do
		if _card == Card_DieReasonIsFall then 
			ScriptLib.SetGroupVariableValueByGroup(context, "CardPicked_DieReasonIsFall", 1, 0)
		end
		if _card == Card_GearCoolDown then 
			ScriptLib.SetGroupVariableValueByGroup(context, "CardPicked_GearCoolDown", 1, 0)
		end
	end
	return 0
end

-- 增加建造点
function LF_AddBuildingPoints(context, prev_context, _buildingPoint)
	local uidList = ScriptLib.GetSceneUidList(context)
	for i = 1, #uidList do
		ScriptLib.AddIrodoriChessBuildingPoints(context, defs.group_id, 999, _buildingPoint)
	end
	return 0
end

-- 关卡1的地脉异常：掉落击杀可获得资源点
function LF_SpecialGameplayLevel1(context, prev_context, _isElite)
	local currentLevel = defs.level or 0

		-- GM
		local gmLevel = ScriptLib.GetGroupVariableValue(context, "GM_LevelNum")
		if gmLevel > 0 then currentLevel = gmLevel end

	--region 简单1/困难1
	if currentLevel ~= 1 and currentLevel ~= 5 then 
		return 0
	end

	local buildingPoint = 0
	if currentLevel == 1 then 
		buildingPoint = 10
		if _isElite > 0 then 
			buildingPoint = 50
		end
	end
	if currentLevel == 5 then 
		buildingPoint = 15
		if _isElite > 0 then 
			buildingPoint = 60
		end
	end
	--endregion

	-- 掉落击杀资源点翻倍卡
	local cardPicked = ScriptLib.GetGroupVariableValueByGroup(context, "CardPicked_DieReasonIsFall", 0)
	if cardPicked > 0 then
		buildingPoint = buildingPoint * 2
	end

	LF_AddBuildingPoints(context, prev_context, buildingPoint)

	PrintLog(context, "地脉异常LV1，增加"..buildingPoint.."点建造值")

	return 0
end

-- 关卡3的地脉异常：塔数<N时击杀加建造值
function LF_SpecialGameplayLevel3(context, prev_context, _isElite)
	local currentLevel = defs.level or 0

		-- GM
		local gmLevel = ScriptLib.GetGroupVariableValue(context, "GM_LevelNum")
		if gmLevel > 0 then currentLevel = gmLevel end

	if currentLevel ~= 3 and currentLevel ~= 7 then 
		return 0
	end

	-- 获取塔的总数
	local towers = ScriptLib.GetGroupVariableValueByGroup(context, "towers", defs.gear_group_id)
	
	local buildingPoint = 10
	if _isElite > 0 then 
		buildingPoint = 50
	end

	local N = 10
	if towers < N then 
		LF_AddBuildingPoints(context, prev_context, buildingPoint)
		PrintLog(context, "地脉异常LV3，增加"..buildingPoint.."点建造值")
	end

	return 0
end

-- 关卡4的地脉异常：塔数<N时塔的伤害提升
function LF_SpecialGameplayLevel4(context, prev_context, param1)

	PrintLog(context, "地脉异常4检查开始")

	
	local currentLevel = defs.level or 0

		-- GM
		local gmLevel = ScriptLib.GetGroupVariableValue(context, "GM_LevelNum")
		if gmLevel > 0 then currentLevel = gmLevel end
		-- 

	if currentLevel ~= 4 and currentLevel ~=8 then 
		return 0
	end

	-- 获取塔的总数
	local towers = ScriptLib.GetGroupVariableValueByGroup(context, "towers", defs.gear_group_id)	
	-- 地脉异常4是否开启
	local M4 = ScriptLib.GetGroupVariableValueByGroup(context, "M4_Active", 0)

	-- 临界值条件
	local N = 10

	-- 关卡4简单
	if currentLevel == 4 then 
		-- 满足开启条件
		if towers < N and M4 == 0 then 
			PrintLog(context, "!开启L4地脉异常")

			local sgvDeltaTbl = 
			{
				SGV_AttackRatioUp = 1,
			}
			ScriptLib.AddIrodoriChessTowerServerGlobalValue(context, defs.group_id, 999, 0, sgvDeltaTbl)
			ScriptLib.SetGroupVariableValueByGroup(context, "M4_Active", 1, defs.group_id)
		end

		-- 满足关闭条件
		if towers >= N and M4 == 1 then 
			PrintLog(context, "关闭L4地脉异常")
			local sgvDeltaTbl = 
			{
				SGV_AttackRatioUp = -1,
			}
			ScriptLib.AddIrodoriChessTowerServerGlobalValue(context, defs.group_id, 999, 0, sgvDeltaTbl)
			ScriptLib.SetGroupVariableValueByGroup(context, "M4_Active", 0, defs.group_id)
		end
	end

	-- 关卡4困难
	if currentLevel == 8 then 
		-- 满足开启条件
		if towers < N and M4 == 0 then 
			PrintLog(context, "!开启L4地脉异常")

			local sgvDeltaTbl = 
			{
				SGV_AttackRatioUp = 2,
			}
			ScriptLib.AddIrodoriChessTowerServerGlobalValue(context, defs.group_id, 999, 0, sgvDeltaTbl)
			ScriptLib.SetGroupVariableValueByGroup(context, "M4_Active", 1, defs.group_id)
		end

		-- 满足关闭条件
		if towers >= N and M4 == 1 then 
			PrintLog(context, "关闭L4地脉异常")
			local sgvDeltaTbl = 
			{
				SGV_AttackRatioUp = -2,
			}
			ScriptLib.AddIrodoriChessTowerServerGlobalValue(context, defs.group_id, 999, 0, sgvDeltaTbl)
			ScriptLib.SetGroupVariableValueByGroup(context, "M4_Active", 0, defs.group_id)
		end
	end
	

	return 0
end

LF_Init_Challenge_Group()