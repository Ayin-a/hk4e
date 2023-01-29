-- 基础信息
local base_info = {
	group_id = 133106031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31001, monster_id = 21020501, pos = { x = -769.461, y = 238.436, z = 1377.075 }, rot = { x = 0.000, y = 317.235, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王", isOneoff = true, area_id = 8 },
	{ config_id = 31013, monster_id = 21010101, pos = { x = -776.841, y = 236.178, z = 1391.517 }, rot = { x = 0.000, y = 232.270, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 8 },
	{ config_id = 31014, monster_id = 21010101, pos = { x = -777.956, y = 237.425, z = 1384.293 }, rot = { x = 0.000, y = 245.470, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 31003, gadget_id = 70300086, pos = { x = -767.215, y = 237.044, z = 1372.537 }, rot = { x = 0.001, y = 28.052, z = 24.964 }, level = 1, area_id = 8 },
	{ config_id = 31004, gadget_id = 70300086, pos = { x = -764.247, y = 233.938, z = 1390.480 }, rot = { x = 345.406, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 31005, gadget_id = 70300086, pos = { x = -789.066, y = 238.791, z = 1381.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 31006, gadget_id = 70220065, pos = { x = -774.248, y = 239.862, z = 1370.895 }, rot = { x = 0.000, y = 341.250, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 8 },
	{ config_id = 31007, gadget_id = 70220065, pos = { x = -772.836, y = 239.332, z = 1373.266 }, rot = { x = 0.000, y = 15.415, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 8 },
	{ config_id = 31008, gadget_id = 70220067, pos = { x = -775.994, y = 239.639, z = 1375.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 8 },
	{ config_id = 31009, gadget_id = 70300093, pos = { x = -777.940, y = 236.357, z = 1389.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 31010, gadget_id = 70710346, pos = { x = -777.240, y = 236.244, z = 1390.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 31011, gadget_id = 70710347, pos = { x = -776.922, y = 236.696, z = 1390.307 }, rot = { x = 33.802, y = 194.146, z = 247.952 }, level = 1, area_id = 8 },
	{ config_id = 31012, gadget_id = 70710346, pos = { x = -777.778, y = 236.310, z = 1390.589 }, rot = { x = 8.065, y = 88.969, z = 53.077 }, level = 1, area_id = 8 },
	{ config_id = 31015, gadget_id = 70590061, pos = { x = -768.317, y = 238.601, z = 1375.513 }, rot = { x = 297.527, y = 356.979, z = 1.669 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1031002, name = "ANY_MONSTER_DIE_31002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31002", action = "action_EVENT_ANY_MONSTER_DIE_31002", trigger_count = 0 }
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
		monsters = { 31001, 31013, 31014 },
		gadgets = { 31003, 31004, 31005, 31006, 31007, 31008, 31009, 31010, 31011, 31012, 31015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_31002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2103302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end