-- 基础信息
local base_info = {
	group_id = 133104281
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 281007, monster_id = 21020301, pos = { x = 293.043, y = 220.976, z = 234.050 }, rot = { x = 0.000, y = 304.218, z = 0.000 }, level = 19, drop_id = 1000100, pose_id = 401, area_id = 9 },
	{ config_id = 281008, monster_id = 21020301, pos = { x = 279.614, y = 221.792, z = 233.290 }, rot = { x = 0.888, y = 340.699, z = 2.533 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 281010, monster_id = 21030101, pos = { x = 286.479, y = 223.635, z = 229.264 }, rot = { x = 0.000, y = 348.998, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 }
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
	{ config_id = 1281009, name = "ANY_MONSTER_DIE_281009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_281009", action = "action_EVENT_ANY_MONSTER_DIE_281009" }
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
		monsters = { 281007, 281008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_281009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 281007, 281008, 281010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_281009" },
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
function condition_EVENT_ANY_MONSTER_DIE_281009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_281009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310428101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end