-- 基础信息
local base_info = {
	group_id = 133212162
}

-- Trigger变量
local defs = {
	gadget_id = 0
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162001, monster_id = 25100101, pos = { x = -3590.436, y = 200.399, z = -2451.483 }, rot = { x = 0.000, y = 263.333, z = 0.000 }, level = 1, drop_tag = "高阶武士", pose_id = 1002, area_id = 13 },
	{ config_id = 162002, monster_id = 25100201, pos = { x = -3604.103, y = 200.361, z = -2440.550 }, rot = { x = 0.000, y = 106.417, z = 0.000 }, level = 1, drop_tag = "高阶武士", pose_id = 1, area_id = 13 },
	{ config_id = 162003, monster_id = 25080201, pos = { x = -3577.278, y = 200.675, z = -2453.587 }, rot = { x = 0.000, y = 246.140, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 13 },
	{ config_id = 162004, monster_id = 25080301, pos = { x = -3596.764, y = 200.000, z = -2445.101 }, rot = { x = 0.000, y = 146.492, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 13 },
	{ config_id = 162008, monster_id = 25080101, pos = { x = -3570.807, y = 200.359, z = -2481.792 }, rot = { x = 0.000, y = 330.856, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 13 },
	{ config_id = 162009, monster_id = 25080101, pos = { x = -3595.132, y = 200.915, z = -2414.413 }, rot = { x = 0.000, y = 154.068, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 162005, gadget_id = 70360063, pos = { x = -3593.451, y = 200.229, z = -2450.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1162006, name = "MONSTER_BATTLE_162006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_162006", action = "action_EVENT_MONSTER_BATTLE_162006" },
	{ config_id = 1162007, name = "ANY_MONSTER_DIE_162007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162007", action = "action_EVENT_ANY_MONSTER_DIE_162007" },
	{ config_id = 1162010, name = "ANY_MONSTER_DIE_162010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162010", action = "action_EVENT_ANY_MONSTER_DIE_162010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = false },
	{ config_id = 2, name = "isSpawn", value = 0, no_refresh = false }
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
		monsters = { 162001 },
		gadgets = { 162005 },
		regions = { },
		triggers = { "MONSTER_BATTLE_162006", "ANY_MONSTER_DIE_162007", "ANY_MONSTER_DIE_162010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 162003, 162004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 162002, 162008, 162009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_162006(context, evt)
	-- 判断变量"isSpawn"为0
	if ScriptLib.GetGroupVariableValue(context, "isSpawn") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_162006(context, evt)
	-- 将本组内变量名为 "isSpawn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isSpawn", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212162, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162007(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3590.379,y=200.5155,z=-2445.77}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212162, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162010(context, evt)
	-- 判断变量"isSpawn"为0
	if ScriptLib.GetGroupVariableValue(context, "isSpawn") ~= 0 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162010(context, evt)
	-- 将本组内变量名为 "isSpawn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isSpawn", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212162, 2)
	
	return 0
end