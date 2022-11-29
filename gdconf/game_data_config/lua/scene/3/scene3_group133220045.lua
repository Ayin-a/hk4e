-- 基础信息
local base_info = {
	group_id = 133220045
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 45001, gadget_id = 70310009, pos = { x = -1758.322, y = 200.491, z = -4114.672 }, rot = { x = 359.693, y = 24.926, z = 0.660 }, level = 1, area_id = 11 },
	{ config_id = 45002, gadget_id = 70300105, pos = { x = -1760.626, y = 200.381, z = -4118.590 }, rot = { x = 0.000, y = 299.815, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 45004, gadget_id = 70300094, pos = { x = -1762.811, y = 200.672, z = -4117.616 }, rot = { x = 0.000, y = 260.615, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 45005, gadget_id = 70220048, pos = { x = -1758.802, y = 200.634, z = -4120.966 }, rot = { x = 2.850, y = 221.766, z = 0.124 }, level = 1, area_id = 11 },
	{ config_id = 45006, gadget_id = 70300094, pos = { x = -1753.322, y = 200.000, z = -4106.733 }, rot = { x = 0.000, y = 57.844, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 45007, gadget_id = 70220048, pos = { x = -1760.300, y = 200.698, z = -4119.866 }, rot = { x = 0.000, y = 65.404, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 45008, gadget_id = 70220048, pos = { x = -1757.342, y = 200.654, z = -4119.954 }, rot = { x = 2.710, y = 201.097, z = 359.110 }, level = 1, area_id = 11 },
	{ config_id = 45009, gadget_id = 70300094, pos = { x = -1762.382, y = 200.638, z = -4119.165 }, rot = { x = 0.105, y = 6.971, z = 0.173 }, level = 1, area_id = 11 },
	{ config_id = 45011, gadget_id = 70220025, pos = { x = -1759.035, y = 200.797, z = -4119.429 }, rot = { x = 89.980, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 45012, gadget_id = 70220025, pos = { x = -1761.052, y = 200.743, z = -4118.828 }, rot = { x = 89.980, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 45013, gadget_id = 70220025, pos = { x = -1762.671, y = 200.791, z = -4117.931 }, rot = { x = 89.980, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 45014, gadget_id = 70220025, pos = { x = -1759.887, y = 200.750, z = -4118.032 }, rot = { x = 89.980, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 45015, gadget_id = 70220025, pos = { x = -1761.573, y = 200.776, z = -4117.013 }, rot = { x = 89.909, y = 320.074, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 45016, gadget_id = 70211001, pos = { x = -1751.738, y = 200.548, z = -4105.809 }, rot = { x = 1.170, y = 236.379, z = 359.489 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 45017, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1759.172, y = 200.558, z = -4115.306 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1045017, name = "ENTER_REGION_45017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45017", action = "action_EVENT_ENTER_REGION_45017" }
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
	end_suite = 2,
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
		gadgets = { 45004, 45005, 45006, 45007, 45008, 45009, 45016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 45001, 45002, 45011, 45012, 45013, 45014, 45015, 45016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 45001, 45002, 45011, 45012, 45013, 45014, 45015, 45016 },
		regions = { 45017 },
		triggers = { "ENTER_REGION_45017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_45017(context, evt)
	if evt.param1 ~= 45017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45017(context, evt)
	-- 调用提示id为 -1074246789 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246789) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end