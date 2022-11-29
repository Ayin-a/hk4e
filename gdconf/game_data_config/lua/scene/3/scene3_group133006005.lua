-- 基础信息
local base_info = {
	group_id = 133006005
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
	{ config_id = 5001, gadget_id = 70210101, pos = { x = 2595.560, y = 196.694, z = -2349.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 5002, gadget_id = 70210101, pos = { x = 2598.330, y = 196.429, z = -2350.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 5004, gadget_id = 70210101, pos = { x = 2595.563, y = 196.679, z = -2347.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 5005, gadget_id = 70220038, pos = { x = 2599.822, y = 192.308, z = -2356.154 }, rot = { x = 1.571, y = 101.961, z = 355.016 }, level = 15, isOneoff = true, area_id = 1 },
	{ config_id = 5006, gadget_id = 70310004, pos = { x = 2595.122, y = 195.709, z = -2352.886 }, rot = { x = 351.158, y = 16.798, z = 3.671 }, level = 30, area_id = 1 },
	{ config_id = 5007, gadget_id = 70290017, pos = { x = 2601.122, y = 196.099, z = -2357.061 }, rot = { x = 278.984, y = 235.240, z = 318.683 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 5008, gadget_id = 70500000, pos = { x = 2601.170, y = 196.004, z = -2357.040 }, rot = { x = 7.840, y = 218.179, z = 357.189 }, level = 30, point_type = 9123, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 5009, gadget_id = 70360040, pos = { x = 2601.307, y = 196.164, z = -2357.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 5012, gadget_id = 70310007, pos = { x = 2656.537, y = 198.676, z = -2354.252 }, rot = { x = 0.000, y = 90.038, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 5013, gadget_id = 70310007, pos = { x = 2619.468, y = 192.467, z = -2268.888 }, rot = { x = 0.000, y = 322.799, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 5014, gadget_id = 70210101, pos = { x = 2641.649, y = 201.345, z = -2359.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 5015, gadget_id = 70210101, pos = { x = 2638.093, y = 201.462, z = -2350.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 5016, gadget_id = 70210101, pos = { x = 2619.367, y = 201.639, z = -2348.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 5017, gadget_id = 70290017, pos = { x = 2601.225, y = 196.115, z = -2357.042 }, rot = { x = 278.984, y = 235.240, z = 289.089 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 5018, gadget_id = 70290017, pos = { x = 2601.088, y = 196.106, z = -2356.955 }, rot = { x = 278.984, y = 235.240, z = 345.429 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 5019, gadget_id = 70210101, pos = { x = 2601.853, y = 195.466, z = -2361.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005010, name = "GATHER_5010", event = EventType.EVENT_GATHER, source = "5008", condition = "", action = "action_EVENT_GATHER_5010" },
	{ config_id = 1005011, name = "ANY_GADGET_DIE_5011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5011", action = "action_EVENT_ANY_GADGET_DIE_5011" }
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
		gadgets = { 5001, 5002, 5004, 5005, 5006, 5012, 5013, 5014, 5015, 5016, 5019 },
		regions = { },
		triggers = { "GATHER_5010", "ANY_GADGET_DIE_5011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_5010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133006005, EntityType.GADGET, 5009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133006005, EntityType.GADGET, 5007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133006005, EntityType.GADGET, 5017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133006005, EntityType.GADGET, 5018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5011(context, evt)
	if 5005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5011(context, evt)
	-- 创建id为5009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end