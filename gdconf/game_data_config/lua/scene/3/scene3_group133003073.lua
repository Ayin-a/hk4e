-- 基础信息
local base_info = {
	group_id = 133003073
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
	{ config_id = 73001, gadget_id = 70710613, pos = { x = 2485.105, y = 327.138, z = -1680.998 }, rot = { x = 0.000, y = 322.464, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 73002, gadget_id = 70710613, pos = { x = 2484.526, y = 327.146, z = -1683.910 }, rot = { x = 0.000, y = 9.535, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 73003, gadget_id = 70710613, pos = { x = 2482.749, y = 326.627, z = -1681.609 }, rot = { x = 0.000, y = 64.689, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 73004, gadget_id = 70500000, pos = { x = 2482.721, y = 326.616, z = -1681.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9186, area_id = 1 },
	{ config_id = 73005, gadget_id = 70500000, pos = { x = 2484.519, y = 327.144, z = -1683.905 }, rot = { x = 0.000, y = 307.424, z = 0.000 }, level = 1, point_type = 9186, area_id = 1 },
	{ config_id = 73006, gadget_id = 70500000, pos = { x = 2485.091, y = 327.182, z = -1681.036 }, rot = { x = 0.000, y = 75.098, z = 0.000 }, level = 1, point_type = 9186, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 73007, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2484.005, y = 326.931, z = -1682.074 }, area_id = 1 },
	{ config_id = 73008, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2484.005, y = 326.931, z = -1682.074 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1073007, name = "ENTER_REGION_73007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_73007", action = "action_EVENT_ENTER_REGION_73007" },
	{ config_id = 1073008, name = "ENTER_REGION_73008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_73008", action = "action_EVENT_ENTER_REGION_73008" }
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
		gadgets = { 73001, 73002, 73003 },
		regions = { 73007 },
		triggers = { "ENTER_REGION_73007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 73004, 73005, 73006 },
		regions = { 73008 },
		triggers = { "ENTER_REGION_73008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_ENTER_REGION_73007(context, evt)
	if evt.param1 ~= 73007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_73007(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2484.005,y=326.9309,z=-1682.074}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110438, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_73008(context, evt)
	if evt.param1 ~= 73008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_73008(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2484.005,y=326.9309,z=-1682.074}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110452, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end