-- 基础信息
local base_info = {
	group_id = 133314164
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
	-- dropID没有
	{ config_id = 164001, gadget_id = 70330368, pos = { x = -940.712, y = -141.836, z = 4872.621 }, rot = { x = 345.570, y = 339.086, z = 352.868 }, level = 26, chest_drop_id = 1050268, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 164002, gadget_id = 70330379, pos = { x = -833.940, y = -137.191, z = 4904.782 }, rot = { x = 344.592, y = 152.044, z = 6.329 }, level = 26, chest_drop_id = 1050245, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 164003, gadget_id = 70211121, pos = { x = -945.806, y = -132.088, z = 4919.792 }, rot = { x = 0.000, y = 294.313, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 164004, gadget_id = 70330384, pos = { x = -1055.188, y = -147.824, z = 5015.165 }, rot = { x = 305.436, y = 62.742, z = 0.217 }, level = 26, chest_drop_id = 1050248, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 164005, gadget_id = 70330379, pos = { x = -1012.690, y = -134.887, z = 5023.716 }, rot = { x = 348.245, y = 80.111, z = 357.208 }, level = 26, chest_drop_id = 1050245, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 164006, gadget_id = 70330374, pos = { x = -886.316, y = -174.519, z = 5037.449 }, rot = { x = 284.429, y = 344.689, z = 316.707 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 164007, gadget_id = 70330372, pos = { x = -942.806, y = -192.420, z = 5088.824 }, rot = { x = 302.878, y = 304.153, z = 347.911 }, level = 26, chest_drop_id = 1050239, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 164008, gadget_id = 70330445, pos = { x = -948.351, y = -132.107, z = 4917.879 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 164009, gadget_id = 70330320, pos = { x = -951.482, y = -132.098, z = 4922.201 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, interact_id = 168, area_id = 32 },
	{ config_id = 164016, gadget_id = 70290648, pos = { x = -951.597, y = -132.098, z = 4922.159 }, rot = { x = 0.000, y = 69.968, z = 0.000 }, level = 32, arguments = { 18 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 164010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -948.351, y = -132.107, z = 4917.879 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1164010, name = "ENTER_REGION_164010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_164010", action = "action_EVENT_ENTER_REGION_164010" },
	{ config_id = 1164011, name = "GADGET_STATE_CHANGE_164011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164011", action = "action_EVENT_GADGET_STATE_CHANGE_164011" },
	{ config_id = 1164012, name = "GROUP_LOAD_164012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_164012", action = "action_EVENT_GROUP_LOAD_164012", trigger_count = 0 },
	{ config_id = 1164013, name = "GROUP_LOAD_164013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_164013", action = "action_EVENT_GROUP_LOAD_164013", trigger_count = 0 },
	{ config_id = 1164014, name = "GADGET_STATE_CHANGE_164014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164014", action = "action_EVENT_GADGET_STATE_CHANGE_164014" }
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
		gadgets = { 164001, 164002, 164004, 164005, 164006, 164007, 164009, 164016 },
		regions = { 164010 },
		triggers = { "ENTER_REGION_164010", "GADGET_STATE_CHANGE_164011", "GROUP_LOAD_164012", "GROUP_LOAD_164013", "GADGET_STATE_CHANGE_164014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_164010(context, evt)
	if evt.param1 ~= 164010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_164010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164011(context, evt)
	if 164016 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164011(context, evt)
	-- 创建id为164003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为164008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_164012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314164, 164016) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_164012(context, evt)
	-- 创建id为164003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为164008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 164008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_164013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314164, 164009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_164013(context, evt)
	-- 将configid为 164016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164014(context, evt)
	if 164009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164014(context, evt)
	-- 将configid为 164016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end