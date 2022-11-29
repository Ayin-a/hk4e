-- 基础信息
local base_info = {
	group_id = 133304142
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 142001, monster_id = 22010401, pos = { x = -1203.178, y = 341.368, z = 2449.633 }, rot = { x = 0.000, y = 112.110, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 },
	{ config_id = 142003, monster_id = 22010101, pos = { x = -1198.922, y = 340.905, z = 2450.789 }, rot = { x = 0.000, y = 17.061, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 },
	{ config_id = 142004, monster_id = 22010301, pos = { x = -1200.008, y = 340.482, z = 2455.016 }, rot = { x = 0.000, y = 180.191, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 },
	{ config_id = 142005, monster_id = 22010201, pos = { x = -1203.178, y = 341.368, z = 2449.633 }, rot = { x = 0.000, y = 112.110, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 21 },
	{ config_id = 142007, monster_id = 21020201, pos = { x = -1195.940, y = 339.780, z = 2450.534 }, rot = { x = 0.000, y = 9.615, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 21 },
	{ config_id = 142008, monster_id = 21010201, pos = { x = -1194.049, y = 338.903, z = 2451.787 }, rot = { x = 0.000, y = 275.232, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 21 },
	{ config_id = 142009, monster_id = 21010201, pos = { x = -1196.261, y = 340.024, z = 2453.843 }, rot = { x = 0.000, y = 158.038, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012, area_id = 21 }
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
	{ config_id = 1142013, name = "ANY_MONSTER_DIE_142013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_142013", action = "action_EVENT_ANY_MONSTER_DIE_142013", trigger_count = 0 }
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
	rand_suite = true
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
		monsters = { 142003, 142004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_142013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 142001, 142005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_142013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 142007, 142008, 142009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_142013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_142013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_142013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2302511") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end