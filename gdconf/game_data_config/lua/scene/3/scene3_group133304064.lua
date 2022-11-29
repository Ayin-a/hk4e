-- 基础信息
local base_info = {
	group_id = 133304064
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
	{ config_id = 64001, gadget_id = 70900050, pos = { x = -1154.939, y = 301.226, z = 2460.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 64002, gadget_id = 70900050, pos = { x = -1148.461, y = 299.014, z = 2473.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 64003, gadget_id = 70900050, pos = { x = -1140.569, y = 299.787, z = 2458.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 64013, gadget_id = 70211101, pos = { x = -1148.221, y = 300.449, z = 2463.171 }, rot = { x = 7.783, y = 359.429, z = 351.617 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
	-- 进入消除红圈1
	{ config_id = 64004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1154.939, y = 301.226, z = 2460.121 }, area_id = 21 },
	-- 进入消除红圈2
	{ config_id = 64005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1148.461, y = 299.014, z = 2473.617 }, area_id = 21 },
	-- 进入消除红圈3
	{ config_id = 64006, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1140.569, y = 299.787, z = 2458.734 }, area_id = 21 },
	-- 离开生成红圈1
	{ config_id = 64007, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1154.939, y = 301.226, z = 2460.121 }, area_id = 21 },
	-- 离开生成红圈2
	{ config_id = 64008, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1148.461, y = 299.014, z = 2473.617 }, area_id = 21 },
	-- 离开生成红圈3
	{ config_id = 64009, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1140.569, y = 299.787, z = 2458.734 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 进入消除红圈1
	{ config_id = 1064004, name = "ENTER_REGION_64004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_64004", action = "action_EVENT_ENTER_REGION_64004", trigger_count = 0 },
	-- 进入消除红圈2
	{ config_id = 1064005, name = "ENTER_REGION_64005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_64005", action = "action_EVENT_ENTER_REGION_64005", trigger_count = 0 },
	-- 进入消除红圈3
	{ config_id = 1064006, name = "ENTER_REGION_64006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_64006", action = "action_EVENT_ENTER_REGION_64006", trigger_count = 0 },
	-- 离开生成红圈1
	{ config_id = 1064007, name = "LEAVE_REGION_64007", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_64007", action = "action_EVENT_LEAVE_REGION_64007", trigger_count = 0 },
	-- 离开生成红圈2
	{ config_id = 1064008, name = "LEAVE_REGION_64008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_64008", action = "action_EVENT_LEAVE_REGION_64008", trigger_count = 0 },
	-- 离开生成红圈3
	{ config_id = 1064009, name = "LEAVE_REGION_64009", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_64009", action = "action_EVENT_LEAVE_REGION_64009", trigger_count = 0 },
	{ config_id = 1064011, name = "GADGET_STATE_CHANGE_64011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64011", action = "action_EVENT_GADGET_STATE_CHANGE_64011", trigger_count = 0 }
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
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 64001, state = 202 },
			{ config_id = 64002, state = 202 },
			{ config_id = 64003, state = 202 }
		},
		monsters = {
		},
		regions = { 64004, 64005, 64006, 64007, 64008, 64009 },
		triggers = { "ENTER_REGION_64004", "ENTER_REGION_64005", "ENTER_REGION_64006", "LEAVE_REGION_64007", "LEAVE_REGION_64008", "LEAVE_REGION_64009", "GADGET_STATE_CHANGE_64011" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 64001, state = 201 },
			{ config_id = 64002, state = 201 },
			{ config_id = 64003, state = 201 },
			{ config_id = 64013, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_64004(context, evt)
	if evt.param1 ~= 64004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_64004(context, evt)
	-- 将configid为 64001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_64005(context, evt)
	if evt.param1 ~= 64005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_64005(context, evt)
	-- 将configid为 64002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_64006(context, evt)
	if evt.param1 ~= 64006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_64006(context, evt)
	-- 将configid为 64003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_64007(context, evt)
	-- 判断是区域64007
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 64007 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_64007(context, evt)
	-- 将configid为 64001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_64008(context, evt)
	-- 判断是区域64008
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 64008 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_64008(context, evt)
	-- 将configid为 64002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_64009(context, evt)
	-- 判断是区域64009
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 64009 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_64009(context, evt)
	-- 将configid为 64003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304064, 64001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304064, 64002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304064, 64003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64011(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304064, 2)
	
	return 0
end