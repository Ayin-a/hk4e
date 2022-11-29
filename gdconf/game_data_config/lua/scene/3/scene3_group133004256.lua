-- 基础信息
local base_info = {
	group_id = 133004256
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3, monster_id = 20011101, pos = { x = 2143.585, y = 209.710, z = -535.020 }, rot = { x = 0.000, y = 65.037, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, affix = { 1007, 1018 }, isElite = true, area_id = 3 },
	{ config_id = 667, monster_id = 20011001, pos = { x = 2143.004, y = 209.808, z = -536.767 }, rot = { x = 0.000, y = 65.037, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 668, monster_id = 20011001, pos = { x = 2141.638, y = 209.799, z = -534.360 }, rot = { x = 0.000, y = 73.703, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000290, name = "ANY_MONSTER_LIVE_290", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_290", action = "action_EVENT_ANY_MONSTER_LIVE_290" },
	{ config_id = 1000292, name = "ANY_MONSTER_DIE_292", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_292", action = "action_EVENT_ANY_MONSTER_DIE_292" }
}

-- 变量
variables = {
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_290", "ANY_MONSTER_DIE_292" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_290(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_290(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 667, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 668, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_292(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_292(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133004256") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end