-- 基础信息
local base_info = {
	group_id = 133220711
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 711001, monster_id = 22040201, pos = { x = -2465.532, y = 202.211, z = -4159.883 }, rot = { x = 0.000, y = 254.810, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 711002, monster_id = 22040201, pos = { x = -2469.811, y = 202.049, z = -4154.774 }, rot = { x = 0.000, y = 207.762, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 711005, monster_id = 22050201, pos = { x = -2469.811, y = 202.049, z = -4154.774 }, rot = { x = 0.000, y = 207.762, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	{ config_id = 711006, monster_id = 22040201, pos = { x = -2465.532, y = 202.211, z = -4159.883 }, rot = { x = 0.000, y = 254.810, z = 0.000 }, level = 14, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 711004, gadget_id = 70710399, pos = { x = -2468.810, y = 202.455, z = -4159.790 }, rot = { x = 5.057, y = 359.139, z = 351.153 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1711003, name = "ANY_MONSTER_DIE_711003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_711003", action = "action_EVENT_ANY_MONSTER_DIE_711003" },
	{ config_id = 1711007, name = "ANY_MONSTER_DIE_711007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_711007", action = "action_EVENT_ANY_MONSTER_DIE_711007" }
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
		monsters = { 711001, 711002 },
		gadgets = { 711004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_711003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 711005, 711006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_711007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_711003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_711003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220711, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_711007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_711007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1204107") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end