-- 基础信息
local base_info = {
	group_id = 133002107
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
	{ config_id = 107001, gadget_id = 70710612, pos = { x = 1939.005, y = 240.913, z = -343.497 }, rot = { x = 0.000, y = 344.325, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 107002, gadget_id = 70710612, pos = { x = 1943.427, y = 241.771, z = -347.037 }, rot = { x = 0.000, y = 229.005, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 107003, gadget_id = 70710612, pos = { x = 1937.647, y = 242.338, z = -351.721 }, rot = { x = 0.000, y = 117.099, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 107004, gadget_id = 70500000, pos = { x = 1939.005, y = 240.913, z = -343.497 }, rot = { x = 0.000, y = 344.325, z = 0.000 }, level = 1, point_type = 9185, area_id = 3 },
	{ config_id = 107005, gadget_id = 70500000, pos = { x = 1943.427, y = 241.771, z = -347.037 }, rot = { x = 0.000, y = 229.005, z = 0.000 }, level = 1, point_type = 9185, area_id = 3 },
	{ config_id = 107006, gadget_id = 70500000, pos = { x = 1937.647, y = 242.338, z = -351.721 }, rot = { x = 0.000, y = 117.099, z = 0.000 }, level = 1, point_type = 9185, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 107007, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1935.327, y = 241.659, z = -348.466 }, area_id = 3 },
	{ config_id = 107008, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1935.327, y = 241.659, z = -348.466 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1107007, name = "ENTER_REGION_107007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107007", action = "action_EVENT_ENTER_REGION_107007" },
	{ config_id = 1107008, name = "ENTER_REGION_107008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107008", action = "action_EVENT_ENTER_REGION_107008" }
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
		gadgets = { 107001, 107002, 107003 },
		regions = { 107008 },
		triggers = { "ENTER_REGION_107008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 107004, 107005, 107006 },
		regions = { 107007 },
		triggers = { "ENTER_REGION_107007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_107007(context, evt)
	if evt.param1 ~= 107007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107007(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1935.327,y=241.1396,z=-348.466}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110451, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107008(context, evt)
	if evt.param1 ~= 107008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107008(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1935.327,y=241.1396,z=-348.466}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110437, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end