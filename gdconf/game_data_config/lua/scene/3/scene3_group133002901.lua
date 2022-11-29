-- 基础信息
local base_info = {
	group_id = 133002901
}

-- Trigger变量
local defs = {
	gadget_id_1 = 66,
	gadget_id_2 = 67,
	gadget_id_3 = 68,
	gadget_id_4 = 69,
	gadget_id_5 = 107,
	gadget_id_6 = 185,
	gadget_id_7 = 225,
	gadget_id_8 = 226,
	gadget_id_9 = 227,
	gadget_id_10 = 316,
	gadget_id_11 = 317,
	gadget_id_12 = 318,
	gadget_id_13 = 321,
	gadget_id_14 = 331,
	gadget_id_15 = 366,
	gadget_id_16 = 373,
	gadget_id_17 = 901001,
	gadget_id_18 = 901002,
	gadget_id_19 = 901003,
	gadget_id_20 = 901004,
	gadget_id_21 = 901005,
	gadget_id_22 = 901006,
	gadget_id_23 = 901007
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
}

-- 区域
regions = {
	{ config_id = 66, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1765.625, y = 221.863, z = -405.583 }, area_id = 3 },
	{ config_id = 67, shape = RegionShape.SPHERE, radius = 60, pos = { x = 2137.000, y = 207.000, z = -1174.000 }, area_id = 1 },
	{ config_id = 68, shape = RegionShape.SPHERE, radius = 60, pos = { x = 2157.039, y = 235.408, z = -1644.083 }, area_id = 1 },
	{ config_id = 69, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1644.786, y = 255.438, z = -1414.120 }, area_id = 2 },
	{ config_id = 107, shape = RegionShape.SPHERE, radius = 8, pos = { x = 2009.054, y = 204.243, z = -881.293 }, area_id = 3 },
	{ config_id = 185, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1773.553, y = 221.863, z = -390.494 }, area_id = 3 },
	{ config_id = 225, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1660.223, y = 255.849, z = -1426.925 }, area_id = 2 },
	{ config_id = 226, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1772.133, y = 221.863, z = -393.091 }, area_id = 3 },
	{ config_id = 227, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1814.012, y = 218.684, z = -395.323 }, area_id = 3 },
	{ config_id = 316, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1999.334, y = 250.769, z = -277.118 }, area_id = 3 },
	{ config_id = 317, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2011.395, y = 255.841, z = -321.266 }, area_id = 3 },
	{ config_id = 318, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2060.913, y = 259.989, z = -343.706 }, area_id = 3 },
	{ config_id = 321, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1772.273, y = 221.863, z = -391.774 }, area_id = 3 },
	{ config_id = 331, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1980.343, y = 203.421, z = -823.950 }, area_id = 3 },
	{ config_id = 366, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1956.797, y = 219.430, z = -550.308 }, area_id = 3 },
	{ config_id = 373, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2016.241, y = 205.459, z = -926.329 }, area_id = 3 },
	{ config_id = 901001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1974.118, y = 202.613, z = -800.668 }, area_id = 3 },
	{ config_id = 901002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1935.107, y = 209.083, z = -809.563 }, area_id = 3 },
	{ config_id = 901003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1971.700, y = 207.783, z = -756.711 }, area_id = 3 },
	{ config_id = 901004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1974.283, y = 202.640, z = -800.314 }, area_id = 3 },
	{ config_id = 901005, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1980.802, y = 202.654, z = -821.029 }, area_id = 3 },
	{ config_id = 901006, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2009.070, y = 225.967, z = -696.632 }, area_id = 3 },
	{ config_id = 901007, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1857.992, y = 200.846, z = -170.941 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000066, name = "ENTER_REGION_66", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_66", action = "", trigger_count = 0 },
	{ config_id = 1000067, name = "ENTER_REGION_67", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_67", action = "", trigger_count = 0 },
	{ config_id = 1000068, name = "ENTER_REGION_68", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68", action = "", trigger_count = 0 },
	{ config_id = 1000069, name = "ENTER_REGION_69", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_69", action = "", trigger_count = 0 },
	{ config_id = 1000107, name = "ENTER_REGION_107", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107", action = "", trigger_count = 0 },
	{ config_id = 1000185, name = "ENTER_REGION_185", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185", action = "", trigger_count = 0 },
	{ config_id = 1000225, name = "ENTER_REGION_225", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_225", action = "", trigger_count = 0 },
	{ config_id = 1000226, name = "ENTER_REGION_226", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_226", action = "", trigger_count = 0 },
	{ config_id = 1000227, name = "ENTER_REGION_227", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_227", action = "", trigger_count = 0 },
	{ config_id = 1000316, name = "ENTER_REGION_316", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_316", action = "", trigger_count = 0 },
	{ config_id = 1000317, name = "ENTER_REGION_317", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_317", action = "", trigger_count = 0 },
	{ config_id = 1000318, name = "ENTER_REGION_318", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_318", action = "", trigger_count = 0 },
	{ config_id = 1000321, name = "ENTER_REGION_321", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_321", action = "", trigger_count = 0 },
	{ config_id = 1000331, name = "ENTER_REGION_331", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_331", action = "", trigger_count = 0 },
	{ config_id = 1000366, name = "ENTER_REGION_366", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_366", action = "", trigger_count = 0 },
	{ config_id = 1000373, name = "ENTER_REGION_373", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_373", action = "", trigger_count = 0 },
	{ config_id = 1901001, name = "ENTER_REGION_901001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901001", action = "", trigger_count = 0 },
	{ config_id = 1901002, name = "ENTER_REGION_901002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901002", action = "", trigger_count = 0 },
	{ config_id = 1901003, name = "ENTER_REGION_901003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901003", action = "", trigger_count = 0 },
	{ config_id = 1901004, name = "ENTER_REGION_901004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901004", action = "", trigger_count = 0 },
	{ config_id = 1901005, name = "ENTER_REGION_901005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901005", action = "", trigger_count = 0 },
	{ config_id = 1901006, name = "ENTER_REGION_901006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901006", action = "", trigger_count = 0 },
	{ config_id = 1901007, name = "ENTER_REGION_901007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901007", action = "", trigger_count = 0 }
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
	rand_suite = true
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
		regions = { 66, 67, 68, 69, 107, 185, 225, 226, 227, 316, 317, 318, 321, 331, 366, 373, 901001, 901002, 901003, 901004, 901005, 901006, 901007 },
		triggers = { "ENTER_REGION_66", "ENTER_REGION_67", "ENTER_REGION_68", "ENTER_REGION_69", "ENTER_REGION_107", "ENTER_REGION_185", "ENTER_REGION_225", "ENTER_REGION_226", "ENTER_REGION_227", "ENTER_REGION_316", "ENTER_REGION_317", "ENTER_REGION_318", "ENTER_REGION_321", "ENTER_REGION_331", "ENTER_REGION_366", "ENTER_REGION_373", "ENTER_REGION_901001", "ENTER_REGION_901002", "ENTER_REGION_901003", "ENTER_REGION_901004", "ENTER_REGION_901005", "ENTER_REGION_901006", "ENTER_REGION_901007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_66(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 38301) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_67(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30600) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_2 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_68(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30700) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_3 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_69(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 30800) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_4 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 45202) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_5 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_185(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 46504) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_6 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_225(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 46506) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_7 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_226(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 46601) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_8 then
		return true
	end
	return false
	
end

-- 触发条件
function condition_EVENT_ENTER_REGION_227(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 46603) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_9 then
		return true
	end
	return false
	
end

-- 触发条件
function condition_EVENT_ENTER_REGION_316(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 45414) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_10 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_317(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 45408) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_11 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_318(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 45409) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_12 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_321(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 39701) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_13 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_331(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2000709) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_14 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_366(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2001709) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_15 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_373(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2001809) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_16 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901001(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006106) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_17 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901002(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006107) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_18 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901003(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006108) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_19 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901004(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006110) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_20 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901005(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006102) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_21 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901006(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006111) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_22 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901007(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2006306) == QuestState.UNFINISHED and evt.param1 == defs.gadget_id_23 then
		return true
	end
	return false
end