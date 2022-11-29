-- 基础信息
local base_info = {
	group_id = 133303194
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
	{ config_id = 194001, gadget_id = 70210101, pos = { x = -1251.969, y = 238.032, z = 3744.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 },
	{ config_id = 194002, gadget_id = 70210101, pos = { x = -1264.475, y = 237.412, z = 3763.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 23 },
	{ config_id = 194003, gadget_id = 70210101, pos = { x = -1263.201, y = 249.656, z = 3737.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 194004, gadget_id = 70210101, pos = { x = -1257.096, y = 243.692, z = 3717.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 194005, gadget_id = 70217020, pos = { x = -1260.335, y = 232.521, z = 3755.781 }, rot = { x = 0.000, y = 164.589, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 194006, gadget_id = 70220103, pos = { x = -1269.147, y = 271.623, z = 3739.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 194008, gadget_id = 70360170, pos = { x = -1268.038, y = 239.286, z = 3763.261 }, rot = { x = 89.391, y = 194.864, z = 56.129 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 194009, gadget_id = 70290584, pos = { x = -1251.348, y = 247.874, z = 3729.156 }, rot = { x = 0.190, y = 48.581, z = 180.900 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 194010, gadget_id = 70210101, pos = { x = -1260.469, y = 249.382, z = 3719.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 23 },
	{ config_id = 194013, gadget_id = 70290584, pos = { x = -1260.336, y = 232.572, z = 3751.300 }, rot = { x = 358.796, y = 140.145, z = 0.157 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	{ config_id = 194014, gadget_id = 70290584, pos = { x = -1269.379, y = 232.331, z = 3762.191 }, rot = { x = 0.000, y = 140.542, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	{ config_id = 194015, gadget_id = 70290584, pos = { x = -1259.414, y = 232.413, z = 3761.296 }, rot = { x = 0.000, y = 229.791, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 194016, gadget_id = 70290584, pos = { x = -1261.374, y = 247.853, z = 3730.034 }, rot = { x = 0.905, y = 320.532, z = 179.841 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 194018, gadget_id = 70360001, pos = { x = -1267.375, y = 239.286, z = 3762.294 }, rot = { x = 0.000, y = 139.212, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 769 } }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 194011, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1256.692, y = 243.721, z = 3725.356 }, area_id = 23 },
	{ config_id = 194012, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1264.777, y = 237.413, z = 3756.702 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1194011, name = "ENTER_REGION_194011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_194011", action = "action_EVENT_ENTER_REGION_194011" },
	{ config_id = 1194012, name = "ENTER_REGION_194012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_194012", action = "action_EVENT_ENTER_REGION_194012" },
	{ config_id = 1194017, name = "SELECT_OPTION_194017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_194017", action = "action_EVENT_SELECT_OPTION_194017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "room1", value = 0, no_refresh = false },
	{ config_id = 2, name = "room2", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 194007, gadget_id = 70350007, pos = { x = -1258.661, y = 231.790, z = 3747.427 }, rot = { x = 270.630, y = 140.366, z = 179.997 }, level = 30, area_id = 23 }
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
		monsters = { },
		gadgets = { 194001, 194002, 194003, 194004, 194005, 194006, 194008, 194009, 194010, 194013, 194014, 194015, 194016, 194018 },
		regions = { 194011, 194012 },
		triggers = { "ENTER_REGION_194011", "ENTER_REGION_194012", "SELECT_OPTION_194017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_194011(context, evt)
	if evt.param1 ~= 194011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_194011(context, evt)
	-- 将configid为 194016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_194012(context, evt)
	if evt.param1 ~= 194012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_194012(context, evt)
	-- 将configid为 194015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_194017(context, evt)
	-- 判断是gadgetid 194018 option_id 769
	if 194018 ~= evt.param1 then
		return false	
	end
	
	if 769 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_194017(context, evt)
	-- 将configid为 194013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 194014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 194008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303194, EntityType.GADGET, 194018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end