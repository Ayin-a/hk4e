-- 基础信息
local base_info = {
	group_id = 133008556
}

-- DEFS_MISCS
--新版性能优化使用regionVision进行处理，考虑到旧1区域的平滑过渡，改为检测进出4/8region时剔除/归还vision

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
}

-- 区域
regions = {
	{ config_id = 556001, shape = RegionShape.CUBIC, size = { x = 1200.000, y = 150.000, z = 1200.000 }, pos = { x = 1091.809, y = 255.000, z = -832.003 }, area_id = 10, vision_type_list = { 1 } },
	{ config_id = 556002, shape = RegionShape.CUBIC, size = { x = 1200.000, y = 185.000, z = 1200.000 }, pos = { x = 1091.809, y = 272.500, z = -832.003 }, area_id = 10, vision_type_list = { 2 } },
	{ config_id = 556003, shape = RegionShape.CUBIC, size = { x = 1200.000, y = 140.000, z = 1200.000 }, pos = { x = 1091.809, y = 330.000, z = -832.003 }, area_id = 10, vision_type_list = { 3 } },
	{ config_id = 556004, shape = RegionShape.CUBIC, size = { x = 1200.000, y = 140.000, z = 1200.000 }, pos = { x = 1091.809, y = 365.000, z = -832.003 }, area_id = 10, vision_type_list = { 4 } },
	{ config_id = 556005, shape = RegionShape.CUBIC, size = { x = 1200.000, y = 140.000, z = 1200.000 }, pos = { x = 1091.809, y = 400.000, z = -832.003 }, area_id = 10, vision_type_list = { 5 } },
	{ config_id = 556006, shape = RegionShape.CUBIC, size = { x = 1200.000, y = 505.000, z = 1200.000 }, pos = { x = 1091.809, y = 617.500, z = -832.003 }, area_id = 10, vision_type_list = { 6 } },
	{ config_id = 556007, shape = RegionShape.CUBIC, size = { x = 1200.000, y = 470.000, z = 1200.000 }, pos = { x = 1091.809, y = 635.000, z = -832.003 }, area_id = 10, vision_type_list = { 7 } },
	{ config_id = 556008, shape = RegionShape.CUBIC, size = { x = 1200.000, y = 470.000, z = 1200.000 }, pos = { x = 1091.809, y = 670.000, z = -832.003 }, area_id = 10, vision_type_list = { 8 } }
}

-- 触发器
triggers = {
	{ config_id = 1556001, name = "ENTER_REGION_556001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "", action = "action_EVENT_ENTER_REGION_556001", trigger_count = 0, forbid_guest = false },
	{ config_id = 1556002, name = "LEAVE_REGION_556002", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "", action = "action_EVENT_LEAVE_REGION_556002", trigger_count = 0, forbid_guest = false }
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
		regions = { 556001, 556002, 556003, 556004, 556005, 556006, 556007, 556008 },
		triggers = { "ENTER_REGION_556001", "LEAVE_REGION_556002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_556001(context, evt)
	if evt.param1 == 556005 or evt.param1 == 556008 then
		ScriptLib.DelPlayerGroupVisionType(context, {context.uid}, {1})
		return 0
	end
	return -1
end

-- 触发操作
function action_EVENT_LEAVE_REGION_556002(context, evt)
	if evt.param1 ~= 556005 and evt.param1 ~= 556008 then
		return -1
	end
	local position = ScriptLib.GetPosByEntityId(context, context.target_entity_id)
	if math.abs(position.x - regions[5].pos.x) <= regions[5].size.x/2 then
		if math.abs(position.z - regions[5].pos.z) <= regions[5].size.z/2 then
			if position.y < regions[8].pos.y + regions[8].size.y/2 and position.y > regions[5].pos.y - regions[5].size.y/2 then
				return -4
			end
		end
	end
	ScriptLib.AddPlayerGroupVisionType(context, {context.uid}, {1})
	return 0
end