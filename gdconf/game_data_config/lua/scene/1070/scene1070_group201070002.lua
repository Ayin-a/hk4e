-- 基础信息
local base_info = {
	group_id = 201070002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 25210501, pos = { x = -3.942, y = -0.102, z = -8.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2002, monster_id = 25210101, pos = { x = 0.082, y = -0.102, z = -10.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2003, monster_id = 25210201, pos = { x = 0.144, y = -0.102, z = 9.995 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2004, monster_id = 25210301, pos = { x = -9.953, y = -0.102, z = 0.003 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2006, monster_id = 25310101, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2007, monster_id = 25210301, pos = { x = 10.162, y = -0.102, z = -0.001 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2008, monster_id = 25210401, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2009, monster_id = 25310201, pos = { x = -3.984, y = -0.102, z = -8.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2010, monster_id = 25310301, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2011, monster_id = 25210201, pos = { x = 0.144, y = -0.102, z = 9.995 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2012, monster_id = 25210201, pos = { x = -9.953, y = -0.102, z = 0.003 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2013, monster_id = 25210201, pos = { x = 10.162, y = -0.102, z = -0.001 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2014, monster_id = 25310101, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2015, monster_id = 25310201, pos = { x = -3.984, y = -0.102, z = -8.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2016, monster_id = 25310301, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2017, monster_id = 25210101, pos = { x = 0.144, y = -0.102, z = 9.995 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2018, monster_id = 25210401, pos = { x = -9.953, y = -0.102, z = 0.003 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2019, monster_id = 25210501, pos = { x = 10.162, y = -0.102, z = -0.001 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2020, monster_id = 23050101, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2021, monster_id = 25310201, pos = { x = -3.984, y = -0.102, z = -8.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2022, monster_id = 25310301, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2023, monster_id = 23010201, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2024, monster_id = 25310201, pos = { x = -3.984, y = -0.102, z = -8.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2025, monster_id = 25310201, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2026, monster_id = 23010101, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2027, monster_id = 25310101, pos = { x = -3.984, y = -0.102, z = -8.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2028, monster_id = 25310101, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2029, monster_id = 23010601, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2030, monster_id = 25310101, pos = { x = -3.984, y = -0.102, z = -8.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2031, monster_id = 25310201, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2032, monster_id = 23010601, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2037, monster_id = 25310101, pos = { x = -3.984, y = -0.102, z = -8.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2038, monster_id = 25310201, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2044, monster_id = 25210201, pos = { x = 0.090, y = -0.102, z = 9.871 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2045, monster_id = 25100101, pos = { x = -3.984, y = -0.102, z = -8.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2046, monster_id = 25100201, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2047, monster_id = 25210201, pos = { x = -9.927, y = -0.102, z = -0.085 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2048, monster_id = 25210201, pos = { x = 10.132, y = -0.102, z = -0.085 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2049, monster_id = 25310101, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2050, monster_id = 25310201, pos = { x = -3.984, y = -0.102, z = -8.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2051, monster_id = 25310301, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2052, monster_id = 25010301, pos = { x = 0.144, y = -0.102, z = 9.995 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2053, monster_id = 25010301, pos = { x = -9.953, y = -0.102, z = 0.003 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2054, monster_id = 25010301, pos = { x = 10.162, y = -0.102, z = -0.001 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2055, monster_id = 23020102, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2056, monster_id = 25310101, pos = { x = -3.984, y = -0.102, z = -8.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2057, monster_id = 25310301, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2058, monster_id = 23040102, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2059, monster_id = 25310101, pos = { x = -3.984, y = -0.102, z = -8.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2060, monster_id = 25310101, pos = { x = 3.121, y = -0.102, z = -8.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2061, monster_id = 23030102, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2062, monster_id = 25310101, pos = { x = 0.044, y = -0.102, z = 9.924 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2063, monster_id = 25210201, pos = { x = 10.102, y = -0.102, z = -0.018 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2064, monster_id = 25210201, pos = { x = -9.937, y = -0.102, z = -0.022 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2065, monster_id = 23010301, pos = { x = 0.090, y = -0.102, z = -10.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2066, monster_id = 25310101, pos = { x = 0.044, y = -0.102, z = 9.924 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2067, monster_id = 25210201, pos = { x = 10.102, y = -0.102, z = -0.018 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2068, monster_id = 25210201, pos = { x = -9.937, y = -0.102, z = -0.022 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2033, gadget_id = 70360010, pos = { x = 10.144, y = -0.153, z = -0.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 184, 185, 186 } } },
	{ config_id = 2034, gadget_id = 70900205, pos = { x = 0.018, y = -1.221, z = -0.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2039, gadget_id = 70360010, pos = { x = -9.891, y = -0.153, z = -0.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 184, 185, 186 } } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002005, name = "ANY_MONSTER_DIE_2005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2005", action = "action_EVENT_ANY_MONSTER_DIE_2005" },
	{ config_id = 1002035, name = "SELECT_OPTION_2035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2035", action = "action_EVENT_SELECT_OPTION_2035" },
	{ config_id = 1002036, name = "SELECT_OPTION_2036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2036", action = "action_EVENT_SELECT_OPTION_2036" },
	{ config_id = 1002040, name = "SELECT_OPTION_2040", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2040", action = "action_EVENT_SELECT_OPTION_2040" },
	{ config_id = 1002041, name = "SELECT_OPTION_2041", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2041", action = "action_EVENT_SELECT_OPTION_2041" },
	{ config_id = 1002042, name = "SELECT_OPTION_2042", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2042", action = "action_EVENT_SELECT_OPTION_2042" },
	{ config_id = 1002043, name = "SELECT_OPTION_2043", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2043", action = "action_EVENT_SELECT_OPTION_2043" }
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
		gadgets = { 2034 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2005", "SELECT_OPTION_2035", "SELECT_OPTION_2036", "SELECT_OPTION_2040", "SELECT_OPTION_2041", "SELECT_OPTION_2042", "SELECT_OPTION_2043" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2001, 2002, 2003, 2004, 2007, 2008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2006, 2009, 2010, 2011, 2012, 2013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 2014, 2015, 2016, 2017, 2018, 2019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 2020, 2021, 2022 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 2023, 2024, 2025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 2026, 2027, 2028 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 2029, 2030, 2031 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 2032, 2037, 2038 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { 2044, 2045, 2046, 2047, 2048 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { 2049, 2050, 2051, 2052, 2053, 2054 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 2033, 2039 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { 2055, 2056, 2057 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { 2058, 2059, 2060 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { 2061, 2062, 2063, 2064 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { 2065, 2066, 2067, 2068 },
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
function condition_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201070002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2035(context, evt)
	-- 判断是gadgetid 2033 option_id 184
	if 2033 ~= evt.param1 then
		return false	
	end
	
	if 184 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2035(context, evt)
	-- 将configid为 2033 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2033, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201070002 ；指定config：2033；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2033, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2033；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2033, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2033；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2033, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201070002, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2039 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2036(context, evt)
	-- 判断是gadgetid 2033 option_id 185
	if 2033 ~= evt.param1 then
		return false	
	end
	
	if 185 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2036(context, evt)
	-- 将configid为 2033 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2033, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201070002 ；指定config：2033；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2033, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2033；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2033, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2033；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2033, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201070002, 6)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2039 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2040(context, evt)
	-- 判断是gadgetid 2033 option_id 186
	if 2033 ~= evt.param1 then
		return false	
	end
	
	if 186 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2040(context, evt)
	-- 将configid为 2033 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2033, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201070002 ；指定config：2033；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2033, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2033；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2033, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2033；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2033, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201070002, 7)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2039 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2041(context, evt)
	-- 判断是gadgetid 2039 option_id 184
	if 2039 ~= evt.param1 then
		return false	
	end
	
	if 184 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2041(context, evt)
	-- 将configid为 2039 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2039, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201070002 ；指定config：2039；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2039, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2039；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2039, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2039；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2039, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201070002, 8)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2033 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2042(context, evt)
	-- 判断是gadgetid 2039 option_id 185
	if 2039 ~= evt.param1 then
		return false	
	end
	
	if 185 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2042(context, evt)
	-- 将configid为 2039 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2039, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201070002 ；指定config：2039；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2039, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2039；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2039, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2039；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2039, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201070002, 9)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2033 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2043(context, evt)
	-- 判断是gadgetid 2039 option_id 186
	if 2039 ~= evt.param1 then
		return false	
	end
	
	if 186 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2043(context, evt)
	-- 将configid为 2039 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2039, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201070002 ；指定config：2039；物件身上指定option：185；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2039, 185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2039；物件身上指定option：184；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2039, 184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201070002 ；指定config：2039；物件身上指定option：186；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201070002, 2039, 186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201070002, 10)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2033 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end