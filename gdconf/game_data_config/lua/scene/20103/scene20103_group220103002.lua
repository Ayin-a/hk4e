-- 基础信息
local base_info = {
	group_id = 220103002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2004, monster_id = 21011001, pos = { x = -86.345, y = -15.484, z = 110.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2005, monster_id = 21010901, pos = { x = -75.489, y = -15.484, z = 110.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2006, monster_id = 21010502, pos = { x = -81.425, y = -15.577, z = 126.499 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 2011, monster_id = 21010701, pos = { x = -88.250, y = -15.483, z = 115.363 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1 },
	{ config_id = 2012, monster_id = 21010701, pos = { x = -74.194, y = -15.483, z = 117.713 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2013, monster_id = 21020201, pos = { x = -88.654, y = -15.498, z = 125.424 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2002, gadget_id = 70211111, pos = { x = -91.910, y = -15.497, z = 99.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2003, gadget_id = 70220013, pos = { x = -92.710, y = -15.483, z = 101.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70900202, pos = { x = -81.369, y = -13.968, z = 117.829 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, gadget_id = 70350003, pos = { x = -103.011, y = -12.495, z = 125.732 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, gadget_id = 70900201, pos = { x = -123.964, y = -11.467, z = 128.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70900205, pos = { x = -62.760, y = -28.142, z = 126.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70220026, pos = { x = -71.348, y = -15.484, z = 106.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70220025, pos = { x = -72.762, y = -15.416, z = 105.968 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2019, gadget_id = 70220025, pos = { x = -71.703, y = -15.412, z = 107.846 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2020, gadget_id = 70360002, pos = { x = -81.369, y = -15.397, z = 117.829 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2021, gadget_id = 70220025, pos = { x = -75.166, y = -15.390, z = 104.259 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2022, gadget_id = 70220035, pos = { x = -90.280, y = -15.517, z = 105.310 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 2023, gadget_id = 70220035, pos = { x = -90.915, y = -15.570, z = 106.224 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1 },
	{ config_id = 2024, gadget_id = 70220014, pos = { x = -93.705, y = -15.594, z = 109.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2025, gadget_id = 70220014, pos = { x = -93.702, y = -15.541, z = 111.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2026, gadget_id = 70220026, pos = { x = -78.403, y = -15.483, z = 131.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2027, gadget_id = 70220013, pos = { x = -71.630, y = -15.484, z = 104.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2028, gadget_id = 70220013, pos = { x = -73.487, y = -15.484, z = 104.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2029, gadget_id = 70310001, pos = { x = -81.557, y = -15.571, z = 104.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2030, gadget_id = 70220013, pos = { x = -76.913, y = -15.465, z = 130.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2031, gadget_id = 70310001, pos = { x = -82.173, y = -15.569, z = 130.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2032, gadget_id = 70220013, pos = { x = -90.668, y = -15.483, z = 101.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2033, gadget_id = 70310001, pos = { x = -71.642, y = -15.472, z = 120.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2034, gadget_id = 70310001, pos = { x = -71.567, y = -15.500, z = 113.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2035, gadget_id = 70220015, pos = { x = -71.347, y = -15.183, z = 126.176 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 2036, gadget_id = 70220015, pos = { x = -71.385, y = -15.137, z = 125.334 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 2037, gadget_id = 70220015, pos = { x = -71.397, y = -15.173, z = 124.477 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 2038, gadget_id = 70211101, pos = { x = -73.613, y = -15.583, z = 128.694 }, rot = { x = 0.000, y = 215.000, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2039, gadget_id = 70310001, pos = { x = -92.309, y = -15.606, z = 115.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2040, gadget_id = 70220025, pos = { x = -80.926, y = -15.429, z = 109.085 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2041, gadget_id = 70220025, pos = { x = -84.213, y = -15.340, z = 117.918 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2042, gadget_id = 70220025, pos = { x = -73.848, y = -15.421, z = 117.388 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2043, gadget_id = 70220025, pos = { x = -88.377, y = -15.429, z = 115.316 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2044, gadget_id = 70220025, pos = { x = -88.434, y = -15.424, z = 125.453 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2047, gadget_id = 70220025, pos = { x = -81.359, y = -15.333, z = 115.112 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2001, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 30.000 }, pos = { x = -82.465, y = -12.172, z = 118.110 } }
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "ENTER_REGION_2001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2001", action = "action_EVENT_ENTER_REGION_2001" },
	{ config_id = 1002008, name = "TIMER_EVENT_2008", event = EventType.EVENT_TIMER_EVENT, source = "monster", condition = "", action = "action_EVENT_TIMER_EVENT_2008" },
	{ config_id = 1002014, name = "ANY_MONSTER_DIE_2014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2014", action = "action_EVENT_ANY_MONSTER_DIE_2014" },
	{ config_id = 1002015, name = "SELECT_OPTION_2015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2015", action = "action_EVENT_SELECT_OPTION_2015" }
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
		gadgets = { 2002, 2003, 2009, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2047 },
		regions = { 2001 },
		triggers = { "ENTER_REGION_2001", "TIMER_EVENT_2008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2004, 2005, 2006 },
		gadgets = { 2016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2011, 2012, 2013 },
		gadgets = { 2016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2014", "SELECT_OPTION_2015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2001(context, evt)
	if evt.param1 ~= 2001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2001(context, evt)
	-- 延迟12秒后,向groupId为：220103002的对象,请求一次调用,并将string参数："monster" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220103002, "monster", 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 2029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2033 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2033, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2034 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2034, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2039 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2039, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220103002中， configid为2020的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220103002, 2020, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220103001, monsters = {}, gadgets = {1021} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220103002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220103002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2014(context, evt)
	-- 改变指定group组220103002中， configid为2020的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220103002, 2020, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220103002, 2020, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 创建id为2007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2015(context, evt)
	-- 判断是gadgetid 2020 option_id 1
	if 2020 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2015(context, evt)
	-- 改变指定group组220103002中， configid为2009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220103002, 2009, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 220103002 ；指定config：2020；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220103002, 2020, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220103003, 2)
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220103002, monsters = {}, gadgets = {2007} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为2010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end