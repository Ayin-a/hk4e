-- 基础信息
local base_info = {
	group_id = 133304019
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19001, monster_id = 25210402, pos = { x = -1927.678, y = 209.532, z = 2920.635 }, rot = { x = 0.000, y = 3.569, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9001, area_id = 21 },
	{ config_id = 19002, monster_id = 25210402, pos = { x = -1932.606, y = 209.672, z = 2920.955 }, rot = { x = 0.000, y = 1.158, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9001, area_id = 21 },
	-- 低视野，低广播
	{ config_id = 19005, monster_id = 25210501, pos = { x = -1930.883, y = 209.546, z = 2906.664 }, rot = { x = 0.000, y = 10.576, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, area_id = 21 },
	{ config_id = 19017, monster_id = 25210201, pos = { x = -1932.227, y = 209.739, z = 2893.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9003, area_id = 21 },
	{ config_id = 19020, monster_id = 25210201, pos = { x = -1937.896, y = 221.063, z = 2885.929 }, rot = { x = 0.000, y = 303.119, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9002, area_id = 21 },
	{ config_id = 19021, monster_id = 25210101, pos = { x = -1938.549, y = 221.063, z = 2887.014 }, rot = { x = 0.000, y = 329.221, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9003, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19006, gadget_id = 70310479, pos = { x = -1923.928, y = 209.613, z = 2912.072 }, rot = { x = 0.000, y = 320.340, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 19007, gadget_id = 70310479, pos = { x = -1924.211, y = 209.526, z = 2908.769 }, rot = { x = 0.000, y = 322.954, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 19008, gadget_id = 70310479, pos = { x = -1926.395, y = 215.217, z = 2883.851 }, rot = { x = 0.000, y = 320.015, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 19009, gadget_id = 70310479, pos = { x = -1926.140, y = 215.226, z = 2887.183 }, rot = { x = 0.000, y = 321.674, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 19014, gadget_id = 70290584, pos = { x = -1923.148, y = 204.913, z = 2910.091 }, rot = { x = 0.000, y = 274.939, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 19019, gadget_id = 70290584, pos = { x = -1931.154, y = 210.681, z = 2886.052 }, rot = { x = 0.000, y = 275.148, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	{ config_id = 19022, gadget_id = 70360170, pos = { x = -1941.878, y = 215.292, z = 2880.595 }, rot = { x = 0.000, y = 3.036, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 19023, gadget_id = 70360001, pos = { x = -1942.021, y = 215.292, z = 2880.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 19025, gadget_id = 70210101, pos = { x = -1926.882, y = 210.156, z = 2916.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", area_id = 21 },
	{ config_id = 19026, gadget_id = 70210101, pos = { x = -1917.460, y = 210.575, z = 2918.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 },
	{ config_id = 19027, gadget_id = 70210101, pos = { x = -1936.543, y = 209.936, z = 2908.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", area_id = 21 },
	{ config_id = 19028, gadget_id = 70210101, pos = { x = -1935.413, y = 210.563, z = 2897.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 },
	{ config_id = 19029, gadget_id = 70217020, pos = { x = -1899.930, y = 216.959, z = 2912.942 }, rot = { x = 20.642, y = 319.088, z = 8.122 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 },
	{ config_id = 19030, gadget_id = 70217020, pos = { x = -1919.745, y = 209.847, z = 2895.429 }, rot = { x = 0.000, y = 300.002, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 },
	{ config_id = 19035, gadget_id = 71700434, pos = { x = -1942.208, y = 215.292, z = 2881.067 }, rot = { x = 0.000, y = 4.860, z = 0.000 }, level = 30, isOneoff = true, area_id = 21 },
	{ config_id = 19036, gadget_id = 71700434, pos = { x = -1943.887, y = 215.292, z = 2882.299 }, rot = { x = 0.000, y = 329.793, z = 0.000 }, level = 30, isOneoff = true, area_id = 21 },
	{ config_id = 19037, gadget_id = 70220005, pos = { x = -1942.525, y = 215.292, z = 2882.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, area_id = 21 },
	{ config_id = 19038, gadget_id = 70210101, pos = { x = -1920.326, y = 215.831, z = 2921.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 },
	{ config_id = 19039, gadget_id = 70210101, pos = { x = -1912.623, y = 216.107, z = 2908.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 19015, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1930.944, y = 209.495, z = 2906.390 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1019011, name = "GROUP_LOAD_19011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_19011", action = "action_EVENT_GROUP_LOAD_19011", trigger_count = 0 },
	{ config_id = 1019013, name = "VARIABLE_CHANGE_19013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_19013", action = "action_EVENT_VARIABLE_CHANGE_19013" },
	{ config_id = 1019015, name = "ENTER_REGION_19015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19015", action = "action_EVENT_ENTER_REGION_19015" },
	{ config_id = 1019024, name = "GADGET_CREATE_19024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19024", action = "action_EVENT_GADGET_CREATE_19024" },
	{ config_id = 1019034, name = "SELECT_OPTION_19034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_19034", action = "action_EVENT_SELECT_OPTION_19034" }
}

-- 变量
variables = {
	{ config_id = 2, name = "door", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 19003, monster_id = 25210501, pos = { x = -1915.948, y = 215.296, z = 2908.328 }, rot = { x = 0.000, y = 6.919, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9503, area_id = 21 },
		{ config_id = 19004, monster_id = 25210201, pos = { x = -1915.329, y = 215.293, z = 2910.884 }, rot = { x = 0.000, y = 202.772, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9501, area_id = 21 }
	},
	triggers = {
		{ config_id = 1019010, name = "GROUP_LOAD_19010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_19010", action = "action_EVENT_GROUP_LOAD_19010" }
	}
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
		monsters = { 19001, 19002, 19005, 19017, 19020, 19021 },
		gadgets = { 19006, 19007, 19008, 19009, 19014, 19019, 19022, 19023, 19025, 19026, 19027, 19028, 19029, 19030, 19035, 19036, 19037, 19038, 19039 },
		regions = { 19015 },
		triggers = { "GROUP_LOAD_19011", "VARIABLE_CHANGE_19013", "ENTER_REGION_19015", "GADGET_CREATE_19024", "SELECT_OPTION_19034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_19011(context, evt)
	-- 判断变量"door"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "door", 133304019) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_19011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 19014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_19013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "door", 133304019) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_19013(context, evt)
	-- 将configid为 19014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19015(context, evt)
	if evt.param1 ~= 19015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19015(context, evt)
	-- 将configid为 19014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_19024(context, evt)
	if 19023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_19024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_19034(context, evt)
	-- 判断是gadgetid 19023 option_id 1
	if 19023 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_19034(context, evt)
	-- 将configid为 19022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 19019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133304019 ；指定config：19023；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304019, 19023, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end