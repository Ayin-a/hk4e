-- 基础信息
local base_info = {
	group_id = 220006002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010201, pos = { x = 7.526, y = 42.016, z = 95.456 }, rot = { x = 0.000, y = 196.900, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2002, monster_id = 21010201, pos = { x = -3.315, y = 42.016, z = 107.802 }, rot = { x = 0.000, y = 148.200, z = 0.000 }, level = 1 },
	{ config_id = 2003, monster_id = 21010201, pos = { x = 4.416, y = 42.017, z = 108.423 }, rot = { x = 0.000, y = 180.400, z = 0.000 }, level = 1 },
	{ config_id = 2004, monster_id = 20010801, pos = { x = 35.000, y = 42.017, z = 89.300 }, rot = { x = 0.000, y = 311.890, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2005, monster_id = 20010801, pos = { x = 42.431, y = 42.016, z = 87.866 }, rot = { x = 0.000, y = 299.500, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2006, monster_id = 21010701, pos = { x = 8.568, y = 42.016, z = 108.608 }, rot = { x = 0.000, y = 182.600, z = 0.000 }, level = 2 },
	{ config_id = 2007, monster_id = 21010301, pos = { x = -4.444, y = 42.016, z = 95.175 }, rot = { x = 0.000, y = 65.400, z = 0.000 }, level = 2 },
	{ config_id = 2008, monster_id = 21010501, pos = { x = 13.367, y = 42.017, z = 119.741 }, rot = { x = 0.000, y = 206.400, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2009, monster_id = 20011001, pos = { x = -3.993, y = 42.016, z = 122.346 }, rot = { x = 0.000, y = 190.400, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2010, monster_id = 20011001, pos = { x = -1.810, y = 42.016, z = 121.721 }, rot = { x = 0.000, y = 200.920, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2011, gadget_id = 70220005, pos = { x = 5.979, y = 42.017, z = 97.628 }, rot = { x = 0.000, y = 336.953, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70211001, pos = { x = 23.068, y = 42.070, z = 130.435 }, rot = { x = 0.000, y = 90.780, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 2013, gadget_id = 70350003, pos = { x = 54.893, y = 42.219, z = 120.997 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70360002, pos = { x = 46.985, y = 42.017, z = 126.780 }, rot = { x = 0.000, y = 235.105, z = 0.000 }, level = 1 },
	{ config_id = 2015, gadget_id = 70220011, pos = { x = 15.422, y = 42.017, z = 97.723 }, rot = { x = 0.000, y = 233.500, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220011, pos = { x = 15.710, y = 42.074, z = 108.586 }, rot = { x = 0.000, y = 228.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70220003, pos = { x = 32.015, y = 42.016, z = 131.965 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70220003, pos = { x = -5.424, y = 42.016, z = 117.944 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2019, gadget_id = 70220013, pos = { x = -2.011, y = 42.016, z = 117.854 }, rot = { x = 0.000, y = 266.600, z = 0.000 }, level = 1 },
	{ config_id = 2020, gadget_id = 70220013, pos = { x = -2.114, y = 43.634, z = 117.913 }, rot = { x = 0.000, y = 154.600, z = 0.000 }, level = 1 },
	{ config_id = 2021, gadget_id = 70211001, pos = { x = -2.600, y = 42.016, z = 123.643 }, rot = { x = 0.000, y = 179.700, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 31, shape = RegionShape.SPHERE, radius = 12.21, pos = { x = 74.288, y = 39.517, z = 121.263 } },
	{ config_id = 37, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3.792, y = 42.016, z = 123.971 } }
}

-- 触发器
triggers = {
	{ config_id = 1000028, name = "GADGET_CREATE_28", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_28", action = "action_EVENT_GADGET_CREATE_28" },
	{ config_id = 1000029, name = "SELECT_OPTION_29", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_29", action = "action_EVENT_SELECT_OPTION_29", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000030, name = "SELECT_OPTION_30", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_30", action = "action_EVENT_SELECT_OPTION_30", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000031, name = "ENTER_REGION_31", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31", action = "action_EVENT_ENTER_REGION_31", forbid_guest = false },
	{ config_id = 1000037, name = "ENTER_REGION_37", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_37", action = "action_EVENT_ENTER_REGION_37", forbid_guest = false }
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
		-- description = suite_1,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008 },
		gadgets = { 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021 },
		regions = { 31, 37 },
		triggers = { "GADGET_CREATE_28", "SELECT_OPTION_29", "SELECT_OPTION_30", "ENTER_REGION_31", "ENTER_REGION_37" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_28(context, evt)
	if 2014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_28(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_29(context, evt)
	-- 判断是gadgetid 2014
	if 2014 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_29(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2013, GadgetState.GearStart) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_option")
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_30(context, evt)
	-- 判断是gadgetid 2014
	if 2014 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_30(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2014, GadgetState.GearStart) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_option")
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31(context, evt)
	if evt.param1 ~= 31 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31(context, evt)
	-- 将configid为 2013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_37(context, evt)
	if evt.param1 ~= 37 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_37(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end