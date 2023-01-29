-- 基础信息
local base_info = {
	group_id = 133314130
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
	{ config_id = 130001, gadget_id = 70330373, pos = { x = -254.704, y = -23.009, z = 4696.944 }, rot = { x = 329.552, y = 255.338, z = 0.000 }, level = 26, chest_drop_id = 1050240, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 130002, gadget_id = 70330384, pos = { x = -152.501, y = -41.772, z = 4788.331 }, rot = { x = 326.639, y = 251.392, z = 4.994 }, level = 26, chest_drop_id = 1050248, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 130003, gadget_id = 70330366, pos = { x = -282.890, y = -21.193, z = 4596.269 }, rot = { x = 329.975, y = 172.128, z = 11.249 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 130004, gadget_id = 70330383, pos = { x = -206.170, y = 1.063, z = 4846.074 }, rot = { x = 332.299, y = 219.089, z = 359.700 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 130005, gadget_id = 70211121, pos = { x = -283.514, y = -73.218, z = 4759.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 130006, gadget_id = 70330378, pos = { x = -157.552, y = -45.877, z = 4881.700 }, rot = { x = 335.276, y = 177.970, z = 359.348 }, level = 26, chest_drop_id = 1050244, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 130007, gadget_id = 70330383, pos = { x = -281.890, y = -9.305, z = 4759.755 }, rot = { x = 334.758, y = 104.940, z = 2.850 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 130008, gadget_id = 70330445, pos = { x = -253.747, y = -28.474, z = 4749.112 }, rot = { x = 0.000, y = 303.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 130009, gadget_id = 70330320, pos = { x = -253.747, y = -28.474, z = 4749.112 }, rot = { x = 0.000, y = 198.610, z = 0.000 }, level = 32, persistent = true, interact_id = 162, area_id = 32 },
	{ config_id = 130015, gadget_id = 70290642, pos = { x = -253.747, y = -28.474, z = 4749.112 }, rot = { x = 0.000, y = 125.928, z = 0.000 }, level = 32, arguments = { 12 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 130010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -286.518, y = -66.822, z = 4768.953 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1130010, name = "ENTER_REGION_130010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_130010", action = "action_EVENT_ENTER_REGION_130010" },
	{ config_id = 1130011, name = "GADGET_STATE_CHANGE_130011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130011", action = "action_EVENT_GADGET_STATE_CHANGE_130011" },
	{ config_id = 1130012, name = "GROUP_LOAD_130012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_130012", action = "action_EVENT_GROUP_LOAD_130012", trigger_count = 0 },
	{ config_id = 1130013, name = "GROUP_LOAD_130013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_130013", action = "action_EVENT_GROUP_LOAD_130013", trigger_count = 0 },
	{ config_id = 1130014, name = "GADGET_STATE_CHANGE_130014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130014", action = "action_EVENT_GADGET_STATE_CHANGE_130014" }
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
		gadgets = { 130001, 130002, 130003, 130004, 130006, 130007, 130009, 130015 },
		regions = { 130010 },
		triggers = { "ENTER_REGION_130010", "GADGET_STATE_CHANGE_130011", "GROUP_LOAD_130012", "GROUP_LOAD_130013", "GADGET_STATE_CHANGE_130014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_130010(context, evt)
	if evt.param1 ~= 130010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_130010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130011(context, evt)
	if 130015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130011(context, evt)
	-- 创建id为130005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为130008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130008 }) then
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
function condition_EVENT_GROUP_LOAD_130012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314130, 130015) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_130012(context, evt)
	-- 创建id为130005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为130008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_130013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314130, 130009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_130013(context, evt)
	-- 将configid为 130015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130014(context, evt)
	if 130009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130014(context, evt)
	-- 将configid为 130015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end