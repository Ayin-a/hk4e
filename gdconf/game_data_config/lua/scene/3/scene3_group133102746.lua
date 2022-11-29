-- 基础信息
local base_info = {
	group_id = 133102746
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
	{ config_id = 746001, gadget_id = 70310001, pos = { x = 1968.303, y = 198.273, z = 840.358 }, rot = { x = 0.000, y = 43.073, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 746002, gadget_id = 70310001, pos = { x = 1971.622, y = 195.405, z = 838.825 }, rot = { x = 0.000, y = 61.626, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 746003, gadget_id = 70310001, pos = { x = 1976.408, y = 195.128, z = 836.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 746004, gadget_id = 70310001, pos = { x = 1978.711, y = 191.418, z = 835.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 746005, gadget_id = 70310001, pos = { x = 1982.337, y = 191.367, z = 833.387 }, rot = { x = 0.000, y = 46.128, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 746006, gadget_id = 70310001, pos = { x = 1964.651, y = 198.233, z = 833.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 746007, gadget_id = 70310001, pos = { x = 1968.571, y = 195.292, z = 831.954 }, rot = { x = 0.000, y = 69.495, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 746008, gadget_id = 70310001, pos = { x = 1973.342, y = 195.075, z = 829.618 }, rot = { x = 0.000, y = 26.115, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 746009, gadget_id = 70310001, pos = { x = 1976.153, y = 191.388, z = 828.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 746010, gadget_id = 70310001, pos = { x = 1979.554, y = 191.374, z = 827.027 }, rot = { x = 0.000, y = 291.126, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 746019, gadget_id = 70211101, pos = { x = 2039.090, y = 200.522, z = 795.119 }, rot = { x = 0.000, y = 269.832, z = 355.315 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 746020, gadget_id = 70500000, pos = { x = 2095.608, y = 191.459, z = 783.734 }, rot = { x = 3.000, y = 274.000, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 746021, gadget_id = 70500000, pos = { x = 2086.193, y = 189.324, z = 773.396 }, rot = { x = 353.210, y = 37.660, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 746022, gadget_id = 70500000, pos = { x = 2086.091, y = 189.324, z = 772.613 }, rot = { x = 353.700, y = 71.480, z = 336.700 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 746023, gadget_id = 70500000, pos = { x = 2086.658, y = 189.324, z = 773.132 }, rot = { x = 340.540, y = 34.040, z = 0.277 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 746024, gadget_id = 70500000, pos = { x = 2095.744, y = 191.459, z = 783.422 }, rot = { x = 353.700, y = 71.480, z = 336.700 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 746025, gadget_id = 70500000, pos = { x = 1968.997, y = 196.767, z = 842.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 746026, gadget_id = 70500000, pos = { x = 1950.938, y = 202.270, z = 841.469 }, rot = { x = 16.049, y = 116.339, z = 358.570 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 746031, gadget_id = 70310006, pos = { x = 1965.052, y = 210.234, z = 855.705 }, rot = { x = 359.543, y = 308.876, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 746013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1962.408, y = 199.608, z = 838.956 }, area_id = 5 },
	{ config_id = 746014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1968.134, y = 196.023, z = 836.201 }, area_id = 5 },
	{ config_id = 746015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1971.944, y = 193.488, z = 834.363 }, area_id = 5 },
	{ config_id = 746016, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1975.345, y = 190.967, z = 833.303 }, area_id = 5 },
	{ config_id = 746017, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1978.568, y = 190.276, z = 830.862 }, area_id = 5 },
	{ config_id = 746018, shape = RegionShape.SPHERE, radius = 3.7, pos = { x = 1980.962, y = 188.052, z = 829.830 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1746013, name = "ENTER_REGION_746013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_746013", action = "action_EVENT_ENTER_REGION_746013" },
	{ config_id = 1746014, name = "ENTER_REGION_746014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_746014", action = "action_EVENT_ENTER_REGION_746014" },
	{ config_id = 1746015, name = "ENTER_REGION_746015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_746015", action = "action_EVENT_ENTER_REGION_746015" },
	{ config_id = 1746016, name = "ENTER_REGION_746016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_746016", action = "action_EVENT_ENTER_REGION_746016" },
	{ config_id = 1746017, name = "ENTER_REGION_746017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_746017", action = "action_EVENT_ENTER_REGION_746017" },
	{ config_id = 1746018, name = "ENTER_REGION_746018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_746018", action = "action_EVENT_ENTER_REGION_746018" }
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
		gadgets = { 746001, 746002, 746003, 746004, 746005, 746006, 746007, 746008, 746009, 746010, 746019, 746020, 746021, 746022, 746023, 746024, 746025, 746026, 746031 },
		regions = { 746013, 746014, 746015, 746016, 746017, 746018 },
		triggers = { "ENTER_REGION_746013", "ENTER_REGION_746014", "ENTER_REGION_746015", "ENTER_REGION_746016", "ENTER_REGION_746017", "ENTER_REGION_746018" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_746013(context, evt)
	if evt.param1 ~= 746013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_746013(context, evt)
	-- 将configid为 746001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 746001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 746006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 746006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_746014(context, evt)
	if evt.param1 ~= 746014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_746014(context, evt)
	-- 将configid为 746002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 746002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 746007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 746007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_746015(context, evt)
	if evt.param1 ~= 746015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_746015(context, evt)
	-- 将configid为 746003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 746003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 746008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 746008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_746016(context, evt)
	if evt.param1 ~= 746016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_746016(context, evt)
	-- 将configid为 746004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 746004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 746009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 746009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_746017(context, evt)
	if evt.param1 ~= 746017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_746017(context, evt)
	-- 将configid为 746005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 746005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 746010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 746010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_746018(context, evt)
	if evt.param1 ~= 746018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_746018(context, evt)
	-- 调用提示id为 31020827 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020827) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end