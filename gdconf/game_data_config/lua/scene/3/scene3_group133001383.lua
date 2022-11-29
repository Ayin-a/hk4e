-- 基础信息
local base_info = {
	group_id = 133001383
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 383001, monster_id = 21010401, pos = { x = 1646.576, y = 232.360, z = -1195.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 383002, monster_id = 21010401, pos = { x = 1644.559, y = 232.362, z = -1193.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 383003, monster_id = 21010401, pos = { x = 1646.236, y = 232.383, z = -1191.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 383004, monster_id = 21020201, pos = { x = 1649.209, y = 232.392, z = -1188.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 383005, gadget_id = 70220013, pos = { x = 1640.739, y = 232.745, z = -1194.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 383006, gadget_id = 70220013, pos = { x = 1639.636, y = 233.121, z = -1193.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 383007, gadget_id = 70220013, pos = { x = 1642.402, y = 232.684, z = -1192.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 383008, gadget_id = 70220013, pos = { x = 1642.159, y = 233.023, z = -1185.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 383009, gadget_id = 70220013, pos = { x = 1644.406, y = 232.632, z = -1184.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 383010, gadget_id = 70220013, pos = { x = 1644.341, y = 232.645, z = -1185.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 383011, gadget_id = 70220026, pos = { x = 1648.791, y = 232.327, z = -1184.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 383012, gadget_id = 70220026, pos = { x = 1650.178, y = 232.345, z = -1184.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 383013, gadget_id = 70220026, pos = { x = 1648.138, y = 232.425, z = -1196.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 383014, gadget_id = 70220026, pos = { x = 1648.534, y = 232.428, z = -1194.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 383016, gadget_id = 70310001, pos = { x = 1651.548, y = 232.389, z = -1186.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 383017, gadget_id = 70310001, pos = { x = 1650.859, y = 232.519, z = -1192.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1383015, name = "ANY_MONSTER_DIE_383015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_383015", action = "action_EVENT_ANY_MONSTER_DIE_383015" }
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
		monsters = { 383001, 383002, 383003, 383004 },
		gadgets = { 383005, 383006, 383007, 383008, 383009, 383010, 383011, 383012, 383013, 383014, 383016, 383017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_383015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_383015(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001383) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_383015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330013831") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end