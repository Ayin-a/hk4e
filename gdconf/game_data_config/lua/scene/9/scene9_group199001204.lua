-- 基础信息
local base_info = {
	group_id = 199001204
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
	{ config_id = 204001, gadget_id = 70500000, pos = { x = 219.412, y = 150.432, z = 344.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, area_id = 402 },
	{ config_id = 204002, gadget_id = 70500000, pos = { x = 219.793, y = 150.363, z = 345.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, area_id = 402 },
	{ config_id = 204003, gadget_id = 70500000, pos = { x = 218.797, y = 150.488, z = 345.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, area_id = 402 },
	{ config_id = 204004, gadget_id = 70500000, pos = { x = 219.481, y = 150.444, z = 344.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, area_id = 402 },
	{ config_id = 204006, gadget_id = 70500000, pos = { x = 219.412, y = 150.432, z = 344.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, area_id = 402 },
	{ config_id = 204007, gadget_id = 70500000, pos = { x = 219.793, y = 150.363, z = 345.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, area_id = 402 },
	{ config_id = 204008, gadget_id = 70500000, pos = { x = 218.797, y = 150.488, z = 345.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, area_id = 402 },
	{ config_id = 204009, gadget_id = 70500000, pos = { x = 219.481, y = 150.444, z = 344.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2006, isOneoff = true, area_id = 402 },
	{ config_id = 204010, gadget_id = 70290196, pos = { x = 219.791, y = 150.408, z = 344.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 204005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 219.173, y = 149.604, z = 345.169 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1204005, name = "ENTER_REGION_204005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_204005", action = "action_EVENT_ENTER_REGION_204005" }
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
		gadgets = { 204001, 204002, 204003, 204004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 204006, 204007, 204008, 204009 },
		regions = { 204005 },
		triggers = { "ENTER_REGION_204005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 204010 },
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
function condition_EVENT_ENTER_REGION_204005(context, evt)
	if evt.param1 ~= 204005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_204005(context, evt)
	-- 调用提示id为 1111204 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111204) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end