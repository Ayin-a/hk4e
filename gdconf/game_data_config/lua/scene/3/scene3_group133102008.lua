-- 基础信息
local base_info = {
	group_id = 133102008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 22010201, pos = { x = 1938.674, y = 258.146, z = 755.031 }, rot = { x = 353.287, y = 95.152, z = 356.892 }, level = 25, drop_id = 1000100, pose_id = 9013, area_id = 5 },
	{ config_id = 8002, monster_id = 21010601, pos = { x = 1950.530, y = 261.129, z = 758.444 }, rot = { x = 3.117, y = 251.186, z = 0.827 }, level = 25, drop_id = 1000100, pose_id = 9012, area_id = 5 },
	{ config_id = 8003, monster_id = 21010201, pos = { x = 1951.446, y = 260.654, z = 753.838 }, rot = { x = 2.583, y = 273.112, z = 1.931 }, level = 25, drop_id = 1000100, pose_id = 9012, area_id = 5 },
	{ config_id = 8004, monster_id = 21010201, pos = { x = 1943.895, y = 256.976, z = 745.771 }, rot = { x = 357.756, y = 10.387, z = 2.316 }, level = 25, drop_id = 1000100, pose_id = 9012, area_id = 5 },
	{ config_id = 8005, monster_id = 21010601, pos = { x = 1949.138, y = 259.178, z = 748.463 }, rot = { x = 0.450, y = 154.325, z = 356.807 }, level = 25, drop_id = 1000100, pose_id = 9012, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8007, gadget_id = 70220013, pos = { x = 1941.819, y = 259.425, z = 759.713 }, rot = { x = 354.871, y = 68.947, z = 359.105 }, level = 1, area_id = 5 },
	{ config_id = 8008, gadget_id = 70220013, pos = { x = 1938.121, y = 256.293, z = 748.637 }, rot = { x = 1.444, y = 326.784, z = 5.457 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008010, name = "ANY_MONSTER_DIE_8010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8010", action = "action_EVENT_ANY_MONSTER_DIE_8010" }
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
		-- description = suite_1,
		monsters = { 8001, 8002, 8003, 8004, 8005 },
		gadgets = { 8007, 8008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_MONSTER_DIE_8010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133102008") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end