-- 基础信息
local base_info = {
	group_id = 111101123
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
	{ config_id = 123001, gadget_id = 70290055, pos = { x = 2779.309, y = 194.600, z = -1890.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 123002, gadget_id = 70290056, pos = { x = 2751.881, y = 194.600, z = -1924.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 123003, gadget_id = 70290057, pos = { x = 2718.232, y = 194.600, z = -1882.038 }, rot = { x = 0.000, y = 48.141, z = 0.000 }, level = 1 },
	{ config_id = 123004, gadget_id = 70290061, pos = { x = 2750.040, y = 194.600, z = -1889.609 }, rot = { x = 0.000, y = 156.789, z = 0.000 }, level = 1 },
	{ config_id = 123005, gadget_id = 70220068, pos = { x = 2793.894, y = 194.600, z = -1900.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 123006, gadget_id = 70950092, pos = { x = 2745.702, y = 194.600, z = -1872.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 123007, gadget_id = 70290059, pos = { x = 2732.269, y = 194.600, z = -1871.273 }, rot = { x = 0.000, y = 49.078, z = 0.000 }, level = 1 },
	{ config_id = 123008, gadget_id = 70290060, pos = { x = 2738.834, y = 198.768, z = -1871.384 }, rot = { x = 0.000, y = 183.937, z = 0.000 }, level = 1 },
	{ config_id = 123009, gadget_id = 70950093, pos = { x = 2732.759, y = 194.600, z = -1896.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 123010, gadget_id = 70950093, pos = { x = 2749.084, y = 194.600, z = -1856.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 123011, gadget_id = 70290061, pos = { x = 2755.239, y = 194.600, z = -1860.278 }, rot = { x = 0.000, y = 44.936, z = 0.000 }, level = 1 },
	{ config_id = 123012, gadget_id = 70290057, pos = { x = 2742.426, y = 194.600, z = -1853.074 }, rot = { x = 0.000, y = 191.444, z = 0.000 }, level = 1 },
	{ config_id = 123013, gadget_id = 70950087, pos = { x = 2723.688, y = 194.600, z = -1865.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 123014, gadget_id = 70950087, pos = { x = 2747.709, y = 194.600, z = -1868.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 123016, gadget_id = 70290058, pos = { x = 2745.702, y = 194.600, z = -1872.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 123015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2793.894, y = 194.600, z = -1900.520 } }
}

-- 触发器
triggers = {
	{ config_id = 1123015, name = "ENTER_REGION_123015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_123015", action = "action_EVENT_ENTER_REGION_123015" },
	{ config_id = 1123017, name = "ANY_GADGET_DIE_123017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_123017", action = "action_EVENT_ANY_GADGET_DIE_123017" }
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
		gadgets = { 123001, 123002, 123003, 123004, 123005, 123006, 123007, 123008, 123009, 123010, 123011, 123012, 123013, 123014, 123016 },
		regions = { 123015 },
		triggers = { "ENTER_REGION_123015", "ANY_GADGET_DIE_123017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_123015(context, evt)
	if evt.param1 ~= 123015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_123015(context, evt)
	-- 将configid为 123005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_123017(context, evt)
	if 123006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_123017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 123008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end