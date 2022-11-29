-- 基础信息
local base_info = {
	group_id = 133221006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6003, monster_id = 25080101, pos = { x = -1878.357, y = 200.000, z = -4185.638 }, rot = { x = 0.000, y = 214.943, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 6008, monster_id = 25080301, pos = { x = -1876.339, y = 200.062, z = -4186.314 }, rot = { x = 0.000, y = 223.138, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 6009, monster_id = 25080201, pos = { x = -1877.330, y = 200.175, z = -4188.809 }, rot = { x = 0.000, y = 231.242, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 6010, monster_id = 25080101, pos = { x = -1876.229, y = 199.882, z = -4182.837 }, rot = { x = 0.000, y = 223.170, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 6011, monster_id = 25080101, pos = { x = -1874.356, y = 200.442, z = -4186.375 }, rot = { x = 0.000, y = 235.513, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11 }
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
	-- WQ7280406 第一波浪人被击杀
	{ config_id = 1006007, name = "ANY_MONSTER_DIE_6007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6007", action = "action_EVENT_ANY_MONSTER_DIE_6007" },
	{ config_id = 1006012, name = "ANY_MONSTER_DIE_6012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6012", action = "action_EVENT_ANY_MONSTER_DIE_6012" }
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
		monsters = { 6003, 6009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 6008, 6010, 6011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6012" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_6007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332210061") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133221006, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332210061") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end