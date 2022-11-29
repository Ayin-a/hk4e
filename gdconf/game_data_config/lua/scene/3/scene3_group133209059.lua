-- 基础信息
local base_info = {
	group_id = 133209059
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 59001, monster_id = 25100201, pos = { x = -2765.820, y = 200.184, z = -4027.521 }, rot = { x = 0.000, y = 272.993, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1006 }, pose_id = 1, title_id = 10050, special_name_id = 10074, area_id = 11 },
	{ config_id = 59002, monster_id = 25080201, pos = { x = -2763.902, y = 200.771, z = -4031.463 }, rot = { x = 0.000, y = 313.276, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 59004, monster_id = 25080201, pos = { x = -2766.593, y = 200.000, z = -4021.322 }, rot = { x = 0.000, y = 227.186, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 1, area_id = 11 }
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
	{ config_id = 1059003, name = "ANY_MONSTER_DIE_59003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_59003", action = "action_EVENT_ANY_MONSTER_DIE_59003" }
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
		-- description = ,
		monsters = { 59001, 59002, 59004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_59003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_59003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_59003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133209059") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end