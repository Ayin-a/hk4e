-- 基础信息
local base_info = {
	group_id = 133107936
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 936001, monster_id = 21011001, pos = { x = -298.705, y = 357.207, z = 574.175 }, rot = { x = 0.000, y = 4.940, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 9002, area_id = 7 },
	{ config_id = 936002, monster_id = 21011001, pos = { x = -290.341, y = 359.350, z = 576.473 }, rot = { x = 0.000, y = 65.400, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 9013, area_id = 7 },
	{ config_id = 936003, monster_id = 21010201, pos = { x = -294.800, y = 359.153, z = 571.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 9003, area_id = 7 },
	{ config_id = 936004, monster_id = 21010201, pos = { x = -297.052, y = 358.522, z = 570.780 }, rot = { x = 0.000, y = 45.060, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 9003, area_id = 7 },
	{ config_id = 936005, monster_id = 21010201, pos = { x = -291.569, y = 358.595, z = 578.586 }, rot = { x = 0.000, y = 48.830, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 9010, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 936006, gadget_id = 70300081, pos = { x = -299.762, y = 356.510, z = 575.697 }, rot = { x = 0.000, y = 184.600, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 936007, gadget_id = 70300088, pos = { x = -288.405, y = 359.618, z = 577.179 }, rot = { x = 0.000, y = 154.100, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 936008, gadget_id = 70300088, pos = { x = -289.958, y = 358.951, z = 579.258 }, rot = { x = 0.000, y = 142.320, z = 0.000 }, level = 24, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1936009, name = "ANY_MONSTER_DIE_936009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_936009", action = "action_EVENT_ANY_MONSTER_DIE_936009", trigger_count = 0 }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 936001, 936002, 936003, 936004, 936005 },
		gadgets = { 936006, 936007, 936008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_936009" },
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
function condition_EVENT_ANY_MONSTER_DIE_936009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_936009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133107936") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end