-- 基础信息
local base_info = {
	group_id = 220149017
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
	{ config_id = 17001, gadget_id = 70900201, pos = { x = 512.594, y = 101.486, z = 284.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17002, gadget_id = 70900201, pos = { x = 535.662, y = 111.248, z = 310.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17005, gadget_id = 70900201, pos = { x = 535.336, y = 116.944, z = 336.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17006, gadget_id = 70900201, pos = { x = 524.321, y = 117.595, z = 340.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17007, gadget_id = 70900201, pos = { x = 515.308, y = 119.625, z = 364.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17009, gadget_id = 70900201, pos = { x = 454.603, y = 138.072, z = 402.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 科学家房间
	{ config_id = 17010, gadget_id = 70900201, pos = { x = 492.492, y = 132.144, z = 408.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17011, gadget_id = 70900201, pos = { x = 474.287, y = 131.418, z = 402.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17012, gadget_id = 70900201, pos = { x = 476.374, y = 133.868, z = 376.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 高台勾爪
	{ config_id = 17013, gadget_id = 70900201, pos = { x = 438.828, y = 149.658, z = 370.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 17015, gadget_id = 70900201, pos = { x = 435.330, y = 145.229, z = 346.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	-- 透明地板
	{ config_id = 17018, gadget_id = 70900201, pos = { x = 434.767, y = 128.043, z = 333.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17025, gadget_id = 70900201, pos = { x = 431.015, y = 99.052, z = 310.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17027, gadget_id = 70900201, pos = { x = 527.718, y = 117.249, z = 338.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17028, gadget_id = 70900201, pos = { x = 470.161, y = 108.407, z = 307.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17029, gadget_id = 70900201, pos = { x = 535.506, y = 111.239, z = 310.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17031, gadget_id = 70900201, pos = { x = 528.543, y = 109.902, z = 309.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17033, gadget_id = 70900201, pos = { x = 529.803, y = 105.736, z = 293.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17034, gadget_id = 70900201, pos = { x = 504.891, y = 101.659, z = 266.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 高台勾爪
	{ config_id = 17037, gadget_id = 70900201, pos = { x = 468.570, y = 133.835, z = 378.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL }
}

-- 区域
regions = {
	{ config_id = 17003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 512.594, y = 105.234, z = 284.700 } },
	{ config_id = 17004, shape = RegionShape.CUBIC, size = { x = 20.000, y = 20.000, z = 8.000 }, pos = { x = 540.608, y = 112.930, z = 310.713 } },
	{ config_id = 17008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 514.151, y = 121.151, z = 364.307 } },
	{ config_id = 17014, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = 474.287, y = 131.418, z = 402.640 } },
	{ config_id = 17016, shape = RegionShape.SPHERE, radius = 8, pos = { x = 438.828, y = 149.837, z = 369.852 } },
	{ config_id = 17017, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 435.330, y = 138.750, z = 346.660 } },
	{ config_id = 17019, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 10.000 }, pos = { x = 434.767, y = 130.458, z = 333.515 } },
	{ config_id = 17020, shape = RegionShape.SPHERE, radius = 5, pos = { x = 412.094, y = 129.689, z = 313.108 } },
	{ config_id = 17021, shape = RegionShape.CUBIC, size = { x = 8.000, y = 10.000, z = 10.000 }, pos = { x = 446.525, y = 146.245, z = 311.001 } },
	{ config_id = 17022, shape = RegionShape.SPHERE, radius = 4, pos = { x = 456.158, y = 151.927, z = 334.644 } },
	{ config_id = 17023, shape = RegionShape.SPHERE, radius = 4, pos = { x = 441.734, y = 162.128, z = 321.451 } },
	{ config_id = 17024, shape = RegionShape.SPHERE, radius = 8, pos = { x = 434.809, y = 157.238, z = 312.924 } },
	{ config_id = 17026, shape = RegionShape.SPHERE, radius = 20, pos = { x = 431.015, y = 99.414, z = 310.838 } },
	{ config_id = 17030, shape = RegionShape.CUBIC, size = { x = 15.000, y = 15.000, z = 10.000 }, pos = { x = 538.054, y = 119.239, z = 310.822 } },
	{ config_id = 17032, shape = RegionShape.SPHERE, radius = 5, pos = { x = 469.445, y = 110.767, z = 307.046 } },
	{ config_id = 17035, shape = RegionShape.SPHERE, radius = 5, pos = { x = 528.314, y = 112.878, z = 309.741 } },
	{ config_id = 17036, shape = RegionShape.SPHERE, radius = 7, pos = { x = 529.354, y = 108.967, z = 293.165 } },
	{ config_id = 17039, shape = RegionShape.SPHERE, radius = 8, pos = { x = 438.828, y = 149.837, z = 369.852 } }
}

-- 触发器
triggers = {
	{ config_id = 1017003, name = "ENTER_REGION_17003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17003", action = "action_EVENT_ENTER_REGION_17003" },
	{ config_id = 1017004, name = "ENTER_REGION_17004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17004", action = "action_EVENT_ENTER_REGION_17004" },
	{ config_id = 1017008, name = "ENTER_REGION_17008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17008", action = "action_EVENT_ENTER_REGION_17008" },
	{ config_id = 1017014, name = "ENTER_REGION_17014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17014", action = "action_EVENT_ENTER_REGION_17014" },
	{ config_id = 1017016, name = "ENTER_REGION_17016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17016", action = "action_EVENT_ENTER_REGION_17016" },
	{ config_id = 1017017, name = "ENTER_REGION_17017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17017", action = "action_EVENT_ENTER_REGION_17017" },
	{ config_id = 1017019, name = "ENTER_REGION_17019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17019", action = "action_EVENT_ENTER_REGION_17019" },
	{ config_id = 1017020, name = "ENTER_REGION_17020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17020", action = "action_EVENT_ENTER_REGION_17020", trigger_count = 0 },
	{ config_id = 1017021, name = "ENTER_REGION_17021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17021", action = "action_EVENT_ENTER_REGION_17021", trigger_count = 0 },
	{ config_id = 1017022, name = "ENTER_REGION_17022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17022", action = "action_EVENT_ENTER_REGION_17022", trigger_count = 0 },
	{ config_id = 1017023, name = "ENTER_REGION_17023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17023", action = "action_EVENT_ENTER_REGION_17023" },
	{ config_id = 1017024, name = "ENTER_REGION_17024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17024", action = "action_EVENT_ENTER_REGION_17024" },
	{ config_id = 1017026, name = "ENTER_REGION_17026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17026", action = "action_EVENT_ENTER_REGION_17026" },
	{ config_id = 1017030, name = "ENTER_REGION_17030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17030", action = "action_EVENT_ENTER_REGION_17030" },
	{ config_id = 1017032, name = "ENTER_REGION_17032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17032", action = "action_EVENT_ENTER_REGION_17032" },
	{ config_id = 1017035, name = "ENTER_REGION_17035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17035", action = "action_EVENT_ENTER_REGION_17035" },
	{ config_id = 1017036, name = "ENTER_REGION_17036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17036", action = "action_EVENT_ENTER_REGION_17036" },
	{ config_id = 1017038, name = "VARIABLE_CHANGE_17038", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_17038", action = "action_EVENT_VARIABLE_CHANGE_17038" },
	{ config_id = 1017039, name = "ENTER_REGION_17039", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17039", action = "action_EVENT_ENTER_REGION_17039" }
}

-- 变量
variables = {
	{ config_id = 1, name = "RaioState", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { 17001 },
		regions = { 17003 },
		triggers = { "ENTER_REGION_17003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 17002 },
		regions = { 17004 },
		triggers = { "ENTER_REGION_17004" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 17005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 17006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 17007 },
		regions = { 17008 },
		triggers = { "ENTER_REGION_17008" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 17010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 17011 },
		regions = { 17014 },
		triggers = { "ENTER_REGION_17014" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 17009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 17012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 17013 },
		regions = { 17016 },
		triggers = { "ENTER_REGION_17016" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 17015 },
		regions = { 17017 },
		triggers = { "ENTER_REGION_17017" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 17018 },
		regions = { 17019 },
		triggers = { "ENTER_REGION_17019" },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 17020, 17021, 17022, 17023, 17024 },
		triggers = { "ENTER_REGION_17020", "ENTER_REGION_17021", "ENTER_REGION_17022", "ENTER_REGION_17023", "ENTER_REGION_17024" },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { },
		gadgets = { 17025 },
		regions = { 17026 },
		triggers = { "ENTER_REGION_17026" },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { },
		gadgets = { 17028 },
		regions = { 17032 },
		triggers = { "ENTER_REGION_17032" },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = ,
		monsters = { },
		gadgets = { 17031 },
		regions = { 17035 },
		triggers = { "ENTER_REGION_17035" },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = ,
		monsters = { },
		gadgets = { 17027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 19,
		-- description = ,
		monsters = { },
		gadgets = { 17029 },
		regions = { 17030 },
		triggers = { "ENTER_REGION_17030" },
		rand_weight = 100
	},
	{
		-- suite_id = 20,
		-- description = ,
		monsters = { },
		gadgets = { 17033 },
		regions = { 17036 },
		triggers = { "ENTER_REGION_17036" },
		rand_weight = 100
	},
	{
		-- suite_id = 21,
		-- description = ,
		monsters = { },
		gadgets = { 17034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 22,
		-- description = ,
		monsters = { },
		gadgets = { 17037 },
		regions = { 17039 },
		triggers = { "VARIABLE_CHANGE_17038", "ENTER_REGION_17039" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_17003(context, evt)
	if evt.param1 ~= 17003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17004(context, evt)
	if evt.param1 ~= 17004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17008(context, evt)
	if evt.param1 ~= 17008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17014(context, evt)
	if evt.param1 ~= 17014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 9 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17016(context, evt)
	if evt.param1 ~= 17016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 12 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17017(context, evt)
	if evt.param1 ~= 17017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 13 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17019(context, evt)
	if evt.param1 ~= 17019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17019(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 14 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149018, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17020(context, evt)
	if evt.param1 ~= 17020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149018, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17021(context, evt)
	if evt.param1 ~= 17021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149018, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17022(context, evt)
	if evt.param1 ~= 17022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149018, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17023(context, evt)
	if evt.param1 ~= 17023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149018, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17024(context, evt)
	if evt.param1 ~= 17024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 15 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149018, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17026(context, evt)
	if evt.param1 ~= 17026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220149005, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220149017, EntityType.GADGET, 17025 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17030(context, evt)
	if evt.param1 ~= 17030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17030(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 20 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17032(context, evt)
	if evt.param1 ~= 17032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17032(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 17 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17035(context, evt)
	if evt.param1 ~= 17035 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17035(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 18 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17036(context, evt)
	if evt.param1 ~= 17036 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17036(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 21 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_17038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"RaioState"为1
	if ScriptLib.GetGroupVariableValue(context, "RaioState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_17038(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 11 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17039(context, evt)
	if evt.param1 ~= 17039 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17039(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 12 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end