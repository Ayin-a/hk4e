-- 基础信息
local base_info = {
	group_id = 247007015
}

-- DEFS_MISCS
local GroupId = 247007015
local ChestConfigID = 0
local RegionID = 15051
local ChestConfigIDList = {15046,15056}

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
	{ config_id = 15034, gadget_id = 70310133, pos = { x = 233.454, y = 0.050, z = 314.750 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15035, gadget_id = 70310132, pos = { x = 246.799, y = 0.050, z = 325.285 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15036, gadget_id = 70310132, pos = { x = 235.046, y = 0.050, z = 313.158 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15037, gadget_id = 70310132, pos = { x = 245.681, y = 0.050, z = 313.097 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15038, gadget_id = 70310133, pos = { x = 245.207, y = 0.050, z = 326.877 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15039, gadget_id = 70310133, pos = { x = 247.289, y = 0.050, z = 314.702 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15040, gadget_id = 70310133, pos = { x = 234.737, y = 0.050, z = 326.360 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15041, gadget_id = 70310132, pos = { x = 233.130, y = 0.050, z = 324.755 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15042, gadget_id = 70360283, pos = { x = 236.692, y = 8.352, z = 323.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15043, gadget_id = 70360283, pos = { x = 236.544, y = 8.805, z = 316.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15044, gadget_id = 70360283, pos = { x = 244.009, y = 8.352, z = 323.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15045, gadget_id = 70360283, pos = { x = 244.016, y = 8.805, z = 316.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 15046, gadget_id = 70211111, pos = { x = 240.903, y = 0.050, z = 318.215 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 15047, gadget_id = 70310125, pos = { x = 239.993, y = 0.169, z = 299.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 15048, gadget_id = 70310125, pos = { x = 260.079, y = 0.146, z = 319.981 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 15049, gadget_id = 70310125, pos = { x = 220.125, y = 0.206, z = 319.991 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 15050, gadget_id = 70310125, pos = { x = 239.985, y = 0.206, z = 339.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15056, gadget_id = 70211111, pos = { x = 238.099, y = 0.038, z = 321.364 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 15001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 240.000, y = 0.050, z = 320.128 } },
	{ config_id = 15051, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 240.012, y = -0.608, z = 320.012 } },
	-- 悬吊陷阱1
	{ config_id = 15052, shape = RegionShape.CUBIC, size = { x = 5.000, y = 15.000, z = 5.000 }, pos = { x = 236.546, y = 4.446, z = 323.496 } },
	-- 悬吊陷阱2
	{ config_id = 15053, shape = RegionShape.CUBIC, size = { x = 5.000, y = 15.000, z = 5.000 }, pos = { x = 236.398, y = 4.446, z = 316.391 } },
	-- 悬吊陷阱3
	{ config_id = 15054, shape = RegionShape.CUBIC, size = { x = 5.000, y = 15.000, z = 5.000 }, pos = { x = 243.864, y = 4.446, z = 323.421 } },
	-- 悬吊陷阱4
	{ config_id = 15055, shape = RegionShape.CUBIC, size = { x = 5.000, y = 15.000, z = 5.000 }, pos = { x = 243.870, y = 4.446, z = 316.408 } }
}

-- 触发器
triggers = {
	{ config_id = 1015001, name = "ENTER_REGION_15001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1015051, name = "ENTER_REGION_15051", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 悬吊陷阱1
	{ config_id = 1015052, name = "ENTER_REGION_15052", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15052", action = "action_EVENT_ENTER_REGION_15052" },
	-- 悬吊陷阱2
	{ config_id = 1015053, name = "ENTER_REGION_15053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15053", action = "action_EVENT_ENTER_REGION_15053" },
	-- 悬吊陷阱3
	{ config_id = 1015054, name = "ENTER_REGION_15054", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15054", action = "action_EVENT_ENTER_REGION_15054" },
	-- 悬吊陷阱4
	{ config_id = 1015055, name = "ENTER_REGION_15055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15055", action = "action_EVENT_ENTER_REGION_15055" }
}

-- 点位
points = {
	{ config_id = 15002, pos = { x = 236.082, y = 0.107, z = 327.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 15003, pos = { x = 244.166, y = 0.105, z = 327.741 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 15004, pos = { x = 240.061, y = 0.101, z = 328.686 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 15005, pos = { x = 232.905, y = 0.121, z = 326.580 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 2 },
	{ config_id = 15006, pos = { x = 247.125, y = 0.115, z = 326.139 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 2 },
	{ config_id = 15007, pos = { x = 231.685, y = 0.105, z = 323.858 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, tag = 2 },
	{ config_id = 15008, pos = { x = 248.793, y = 0.110, z = 323.874 }, rot = { x = 0.000, y = 250.000, z = 0.000 }, tag = 2 },
	{ config_id = 15009, pos = { x = 231.433, y = 0.100, z = 320.152 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 15010, pos = { x = 248.894, y = 0.108, z = 320.168 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 15011, pos = { x = 240.096, y = 0.115, z = 328.226 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 15012, pos = { x = 234.310, y = 0.126, z = 327.293 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 4 },
	{ config_id = 15013, pos = { x = 245.787, y = 0.100, z = 327.259 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 4 },
	{ config_id = 15014, pos = { x = 231.366, y = 0.108, z = 322.614 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 4 },
	{ config_id = 15015, pos = { x = 248.917, y = 0.106, z = 322.619 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, tag = 4 },
	{ config_id = 15016, pos = { x = 231.381, y = 0.102, z = 317.730 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 4 },
	{ config_id = 15017, pos = { x = 248.823, y = 0.101, z = 317.785 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, tag = 4 },
	{ config_id = 15018, pos = { x = 234.359, y = 0.100, z = 313.062 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 4 },
	{ config_id = 15019, pos = { x = 245.716, y = 0.100, z = 312.977 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 4 },
	{ config_id = 15020, pos = { x = 239.997, y = 0.100, z = 312.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 15021, pos = { x = 232.881, y = 0.142, z = 327.309 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 15022, pos = { x = 247.161, y = 0.117, z = 327.312 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 8 },
	{ config_id = 15023, pos = { x = 232.884, y = 0.100, z = 312.959 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 8 },
	{ config_id = 15024, pos = { x = 247.084, y = 0.100, z = 313.037 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 15025, pos = { x = 240.186, y = 0.117, z = 327.558 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 15026, pos = { x = 239.988, y = 0.100, z = 312.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 15027, pos = { x = 231.907, y = 0.101, z = 320.131 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 8 },
	{ config_id = 15028, pos = { x = 248.282, y = 0.104, z = 320.096 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 15029, pos = { x = 232.012, y = 0.102, z = 316.067 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 8 },
	{ config_id = 15030, pos = { x = 247.980, y = 0.109, z = 323.506 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, tag = 8 },
	{ config_id = 15031, pos = { x = 243.419, y = 0.100, z = 312.483 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 15032, pos = { x = 236.167, y = 0.126, z = 327.405 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 15033, pos = { x = 245.610, y = 0.050, z = 315.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 256 }
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
		gadgets = { 15034, 15035, 15036, 15037, 15038, 15039, 15040, 15041, 15042, 15043, 15044, 15045, 15046, 15047, 15048, 15049, 15050, 15056 },
		regions = { 15051, 15052, 15053, 15054, 15055 },
		triggers = { "ENTER_REGION_15051", "ENTER_REGION_15052", "ENTER_REGION_15053", "ENTER_REGION_15054", "ENTER_REGION_15055" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_15052(context, evt)
	if evt.param1 ~= 15052 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15052(context, evt)
	-- 将configid为 15042 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15042, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15053(context, evt)
	if evt.param1 ~= 15053 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15053(context, evt)
	-- 将configid为 15043 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15043, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15054(context, evt)
	if evt.param1 ~= 15054 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15054(context, evt)
	-- 将configid为 15044 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15044, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15055(context, evt)
	if evt.param1 ~= 15055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15055(context, evt)
	-- 将configid为 15045 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15045, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/RogueDungeon_ChestRoom"