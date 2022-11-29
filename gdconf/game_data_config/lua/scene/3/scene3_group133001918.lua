-- 基础信息
local base_info = {
	group_id = 133001918
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 918001, monster_id = 21010101, pos = { x = 1750.758, y = 213.414, z = -1392.244 }, rot = { x = 0.000, y = 45.658, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 2 },
	{ config_id = 918002, monster_id = 21010101, pos = { x = 1751.000, y = 214.004, z = -1388.599 }, rot = { x = 0.000, y = 181.326, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 2 },
	{ config_id = 918003, monster_id = 21010901, pos = { x = 1752.691, y = 213.372, z = -1395.695 }, rot = { x = 0.000, y = 116.529, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 918004, monster_id = 21010901, pos = { x = 1758.068, y = 214.035, z = -1389.031 }, rot = { x = 0.000, y = 151.332, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 918005, monster_id = 21030101, pos = { x = 1754.596, y = 213.652, z = -1390.634 }, rot = { x = 0.000, y = 259.226, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 2 },
	{ config_id = 918006, monster_id = 21020101, pos = { x = 1746.139, y = 214.565, z = -1390.060 }, rot = { x = 0.000, y = 100.560, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 918008, monster_id = 20011201, pos = { x = 1752.257, y = 214.051, z = -1390.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 918007, gadget_id = 70300087, pos = { x = 1752.207, y = 213.589, z = -1390.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 918009, gadget_id = 70220035, pos = { x = 1751.653, y = 213.414, z = -1396.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 918010, gadget_id = 70220035, pos = { x = 1751.511, y = 214.056, z = -1385.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 918011, gadget_id = 70220026, pos = { x = 1750.247, y = 213.463, z = -1396.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 918012, gadget_id = 70220013, pos = { x = 1748.472, y = 213.519, z = -1395.454 }, rot = { x = 0.000, y = 37.482, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 918014, gadget_id = 70220014, pos = { x = 1757.520, y = 214.146, z = -1387.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1918013, name = "ANY_MONSTER_DIE_918013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_918013", action = "action_EVENT_ANY_MONSTER_DIE_918013", trigger_count = 0 }
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
		monsters = { 918001, 918002, 918003, 918004, 918005, 918006, 918008 },
		gadgets = { 918007, 918009, 918010, 918011, 918012, 918014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_918013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_918013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_918013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330019181") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end