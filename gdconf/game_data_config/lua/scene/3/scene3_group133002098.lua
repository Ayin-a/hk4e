-- 基础信息
local base_info = {
	group_id = 133002098
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
	{ config_id = 98001, gadget_id = 70710611, pos = { x = 1789.260, y = 233.162, z = -881.474 }, rot = { x = 0.000, y = 265.593, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 98002, gadget_id = 70710611, pos = { x = 1786.419, y = 232.926, z = -883.404 }, rot = { x = 0.000, y = 187.507, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 98003, gadget_id = 70710611, pos = { x = 1790.991, y = 232.978, z = -882.207 }, rot = { x = 0.000, y = 267.604, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 98004, gadget_id = 70500000, pos = { x = 1786.419, y = 232.926, z = -883.404 }, rot = { x = 0.000, y = 187.507, z = 0.000 }, level = 1, point_type = 9184, area_id = 3 },
	{ config_id = 98005, gadget_id = 70500000, pos = { x = 1789.260, y = 233.162, z = -881.474 }, rot = { x = 0.000, y = 265.593, z = 0.000 }, level = 1, point_type = 9184, area_id = 3 },
	{ config_id = 98006, gadget_id = 70500000, pos = { x = 1790.991, y = 232.978, z = -882.207 }, rot = { x = 0.000, y = 267.604, z = 0.000 }, level = 1, point_type = 9184, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 98007, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1788.732, y = 233.224, z = -881.622 }, area_id = 3 },
	{ config_id = 98008, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1788.732, y = 233.224, z = -881.622 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1098007, name = "ENTER_REGION_98007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98007", action = "action_EVENT_ENTER_REGION_98007" },
	{ config_id = 1098008, name = "ENTER_REGION_98008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98008", action = "action_EVENT_ENTER_REGION_98008" }
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
		gadgets = { 98001, 98002, 98003 },
		regions = { 98007 },
		triggers = { "ENTER_REGION_98007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 98004, 98005, 98006 },
		regions = { 98008 },
		triggers = { "ENTER_REGION_98008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_98007(context, evt)
	if evt.param1 ~= 98007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_98007(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1793.522,y=235.2067,z=-920.8842}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110435, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_98008(context, evt)
	if evt.param1 ~= 98008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_98008(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1793.522,y=235.2067,z=-920.8842}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110436, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end