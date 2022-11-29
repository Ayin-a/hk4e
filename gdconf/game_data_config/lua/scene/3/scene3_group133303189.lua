-- 基础信息
local base_info = {
	group_id = 133303189
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
	{ config_id = 189001, gadget_id = 70210101, pos = { x = -2009.433, y = 285.699, z = 3397.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 },
	{ config_id = 189002, gadget_id = 70210101, pos = { x = -2001.549, y = 285.011, z = 3384.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 23 },
	{ config_id = 189003, gadget_id = 70210101, pos = { x = -1989.115, y = 289.536, z = 3383.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 189004, gadget_id = 70210101, pos = { x = -1987.410, y = 283.549, z = 3373.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 189005, gadget_id = 70217020, pos = { x = -1994.134, y = 282.952, z = 3364.326 }, rot = { x = 355.240, y = 67.821, z = 2.116 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 189006, gadget_id = 70220103, pos = { x = -2002.993, y = 309.822, z = 3389.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 189007, gadget_id = 70290584, pos = { x = -2010.452, y = 280.278, z = 3388.970 }, rot = { x = 0.000, y = 269.790, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	{ config_id = 189009, gadget_id = 71700434, pos = { x = -1998.421, y = 287.751, z = 3395.511 }, rot = { x = 24.267, y = 0.002, z = 321.376 }, level = 30, area_id = 23 },
	{ config_id = 189010, gadget_id = 71700434, pos = { x = -1998.576, y = 289.664, z = 3394.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 189011, gadget_id = 70290584, pos = { x = -1996.403, y = 278.043, z = 3370.123 }, rot = { x = 0.024, y = 269.901, z = -0.001 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 189008, shape = RegionShape.SPHERE, radius = 4, pos = { x = -2006.283, y = 284.533, z = 3388.880 }, area_id = 23 },
	{ config_id = 189012, shape = RegionShape.SPHERE, radius = 4, pos = { x = -1991.025, y = 283.013, z = 3370.165 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1189008, name = "ENTER_REGION_189008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_189008", action = "action_EVENT_ENTER_REGION_189008" },
	{ config_id = 1189012, name = "ENTER_REGION_189012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_189012", action = "action_EVENT_ENTER_REGION_189012" }
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
		gadgets = { 189001, 189002, 189003, 189004, 189005, 189006, 189007, 189009, 189010, 189011 },
		regions = { 189008, 189012 },
		triggers = { "ENTER_REGION_189008", "ENTER_REGION_189012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_189008(context, evt)
	if evt.param1 ~= 189008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_189008(context, evt)
	-- 将configid为 189007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_189012(context, evt)
	if evt.param1 ~= 189012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_189012(context, evt)
	-- 将configid为 189011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end