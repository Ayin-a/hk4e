-- 基础信息
local base_info = {
	group_id = 201065001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 25050301, pos = { x = 8.165, y = 0.097, z = 1.400 }, rot = { x = 0.000, y = 309.460, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 1002, monster_id = 25050301, pos = { x = 5.536, y = 0.097, z = -3.275 }, rot = { x = 0.000, y = 323.460, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 1003, monster_id = 25050301, pos = { x = -6.312, y = 0.097, z = -3.222 }, rot = { x = 0.000, y = 34.770, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 1004, monster_id = 25050301, pos = { x = -7.174, y = 0.097, z = 1.391 }, rot = { x = 0.000, y = 53.500, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 1005, monster_id = 25050301, pos = { x = 2.045, y = 0.097, z = -3.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 1006, monster_id = 25050301, pos = { x = 4.933, y = 0.097, z = -3.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 1007, monster_id = 25050301, pos = { x = 8.434, y = 0.097, z = -3.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 1008, monster_id = 25050301, pos = { x = -1.733, y = 0.097, z = -3.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 1009, monster_id = 25050301, pos = { x = -4.703, y = 0.097, z = -4.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 1010, monster_id = 25050301, pos = { x = -7.388, y = 0.097, z = -4.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 1011, monster_id = 25050401, pos = { x = 0.013, y = 0.097, z = -1.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_id = 1000100, disableWander = true },
	{ config_id = 1012, monster_id = 25080401, pos = { x = 0.075, y = 0.097, z = -6.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 4, drop_id = 1000100, disableWander = true, affix = { 1033, 1018 }, pose_id = 1, title_id = 10048, special_name_id = 10072 },
	{ config_id = 1013, monster_id = 25050301, pos = { x = 3.276, y = 0.097, z = -6.716 }, rot = { x = 0.000, y = 351.330, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1019 } },
	{ config_id = 1014, monster_id = 25050301, pos = { x = 7.076, y = 0.097, z = -6.628 }, rot = { x = 0.000, y = 339.580, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1019 } },
	{ config_id = 1015, monster_id = 25050301, pos = { x = -3.452, y = 0.097, z = -6.682 }, rot = { x = 0.000, y = 8.500, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1019 } },
	{ config_id = 1016, monster_id = 25050301, pos = { x = -5.739, y = 0.097, z = -6.662 }, rot = { x = 0.000, y = 25.860, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1019 } },
	{ config_id = 1017, monster_id = 25050401, pos = { x = 0.054, y = 0.097, z = -7.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1006, 1019 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1026, gadget_id = 70211021, pos = { x = 0.021, y = 0.097, z = -2.527 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗高级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 1023, shape = RegionShape.SPHERE, radius = 30, pos = { x = -0.022, y = 0.097, z = 4.506 } },
	{ config_id = 1024, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1025, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1001018, name = "ANY_MONSTER_DIE_1018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1018", action = "action_EVENT_ANY_MONSTER_DIE_1018", tag = "1001" },
	{ config_id = 1001019, name = "ANY_MONSTER_DIE_1019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1019", action = "action_EVENT_ANY_MONSTER_DIE_1019", tag = "1002" },
	-- 战斗通关判定
	{ config_id = 1001020, name = "ANY_MONSTER_DIE_1020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1020", action = "action_EVENT_ANY_MONSTER_DIE_1020", trigger_count = 0 },
	-- boss开始刷小怪
	{ config_id = 1001021, name = "SPECIFIC_MONSTER_HP_CHANGE_1021", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1012", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1021", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1021" },
	{ config_id = 1001022, name = "TIME_AXIS_PASS_1022", event = EventType.EVENT_TIME_AXIS_PASS, source = "spawnCountDown", condition = "condition_EVENT_TIME_AXIS_PASS_1022", action = "action_EVENT_TIME_AXIS_PASS_1022", trigger_count = 0 },
	{ config_id = 1001023, name = "ENTER_REGION_1023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1023" },
	{ config_id = 1001024, name = "ENTER_REGION_1024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1024" },
	{ config_id = 1001025, name = "ENTER_REGION_1025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1025" },
	{ config_id = 1001027, name = "QUEST_FINISH_1027", event = EventType.EVENT_QUEST_FINISH, source = "201804", condition = "", action = "action_EVENT_QUEST_FINISH_1027" }
}

-- 变量
variables = {
	{ config_id = 1, name = "mobNum", value = 0, no_refresh = false },
	{ config_id = 2, name = "leaderNum", value = 0, no_refresh = false },
	{ config_id = 3, name = "bossNum", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 1001, 1002, 1003, 1004 },
		gadgets = { },
		regions = { 1023 },
		triggers = { "ANY_MONSTER_DIE_1018", "ENTER_REGION_1023", "QUEST_FINISH_1027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1005, 1006, 1007, 1008, 1009, 1010, 1011 },
		gadgets = { },
		regions = { 1024 },
		triggers = { "ANY_MONSTER_DIE_1019", "ENTER_REGION_1024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1012 },
		gadgets = { },
		regions = { 1025 },
		triggers = { "ANY_MONSTER_DIE_1020", "SPECIFIC_MONSTER_HP_CHANGE_1021", "TIME_AXIS_PASS_1022", "ENTER_REGION_1025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1018(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201065001, 2)
	
	-- 终止识别id为1001的挑战，并判定成功
		ScriptLib.StopChallenge(context, 1001, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1019(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201065001, 3)
	
	-- 终止识别id为1002的挑战，并判定成功
		ScriptLib.StopChallenge(context, 1002, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1020(context, evt)
	--判断死亡怪物的configid是否为 1012
	if evt.param1 ~= 1012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1020(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201065001, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 停止标识为"spawnCountDown"的时间轴
	ScriptLib.EndTimeAxis(context, "spawnCountDown")
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "201065001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 终止识别id为1003的挑战，并判定成功
		ScriptLib.StopChallenge(context, 1003, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1021(context, evt)
	if evt.param1 == 1012 and evt.param3 < 60 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1021(context, evt)
	-- 判断怪物血量到达60%
		-- 创建定时器，每45秒刷怪
		ScriptLib.InitTimeAxis(context, "spawnCountDown", {45}, true)
		ScriptLib.CreateMonster(context, { config_id = 1013, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 1014, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 1015, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 1016, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 1017, delay_time = 0 })
		ScriptLib.ShowReminder(context, 10650101)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1022(context, evt)
	if "spawnCountDown" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1022(context, evt)
		ScriptLib.CreateMonster(context, { config_id = 1013, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 1014, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 1015, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 1016, delay_time = 0 })
		ScriptLib.CreateMonster(context, { config_id = 1017, delay_time = 0 })
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_1023(context, evt)
	-- 创建编号为1001（该挑战的识别id),挑战内容为111189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 111189, 1, 1001, 4, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_1024(context, evt)
	-- 创建编号为1002（该挑战的识别id),挑战内容为111190的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1002, 111190, 1, 1002, 7, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_1025(context, evt)
	-- 创建编号为1003（该挑战的识别id),挑战内容为111191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1003, 111191, 1, 1001, 7, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1027(context, evt)
	-- 创建id为1026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end