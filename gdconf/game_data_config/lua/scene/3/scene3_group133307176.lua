-- 基础信息
local base_info = {
	group_id = 133307176
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
	{ config_id = 176001, gadget_id = 70330378, pos = { x = -1568.968, y = 60.625, z = 5655.193 }, rot = { x = 342.698, y = 14.497, z = 1.436 }, level = 26, chest_drop_id = 1050244, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 176002, gadget_id = 70330369, pos = { x = -1505.264, y = 25.999, z = 5600.784 }, rot = { x = 318.136, y = 137.557, z = 14.005 }, level = 26, chest_drop_id = 1050237, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 176003, gadget_id = 70211121, pos = { x = -1503.128, y = 44.423, z = 5620.671 }, rot = { x = 0.096, y = 285.192, z = 0.919 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 176004, gadget_id = 70330366, pos = { x = -1540.166, y = 27.783, z = 5561.718 }, rot = { x = 322.816, y = 130.705, z = 351.085 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 176005, gadget_id = 70330369, pos = { x = -1414.743, y = 6.589, z = 5717.749 }, rot = { x = 330.334, y = 269.479, z = 12.518 }, level = 26, chest_drop_id = 1050237, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 176006, gadget_id = 70330383, pos = { x = -1472.515, y = 18.414, z = 5666.614 }, rot = { x = 316.972, y = 104.324, z = 358.717 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 176007, gadget_id = 70330387, pos = { x = -1390.807, y = 1.617, z = 5736.981 }, rot = { x = 331.707, y = 162.155, z = 357.623 }, level = 26, chest_drop_id = 1050249, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 176009, gadget_id = 70330445, pos = { x = -1508.743, y = 44.685, z = 5622.386 }, rot = { x = 0.000, y = 104.718, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 176010, gadget_id = 70330320, pos = { x = -1508.743, y = 44.685, z = 5622.386 }, rot = { x = 0.000, y = 104.718, z = 0.000 }, level = 32, persistent = true, interact_id = 166, area_id = 32 },
	{ config_id = 176016, gadget_id = 70330432, pos = { x = -1508.453, y = 26.124, z = 5591.457 }, rot = { x = 314.934, y = 106.048, z = 343.039 }, level = 32, area_id = 32 },
	{ config_id = 176017, gadget_id = 70330432, pos = { x = -1505.170, y = 26.432, z = 5603.915 }, rot = { x = 346.702, y = 120.327, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 176018, gadget_id = 70220103, pos = { x = -1418.969, y = 36.944, z = 5757.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 176019, gadget_id = 70290646, pos = { x = -1508.664, y = 44.502, z = 5622.329 }, rot = { x = 0.000, y = 106.000, z = 0.000 }, level = 32, arguments = { 16 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 176011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1508.743, y = 44.685, z = 5622.386 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1176011, name = "ENTER_REGION_176011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_176011", action = "action_EVENT_ENTER_REGION_176011" },
	{ config_id = 1176012, name = "GADGET_STATE_CHANGE_176012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_176012", action = "action_EVENT_GADGET_STATE_CHANGE_176012" },
	{ config_id = 1176013, name = "GROUP_LOAD_176013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_176013", action = "action_EVENT_GROUP_LOAD_176013", trigger_count = 0 },
	{ config_id = 1176014, name = "GROUP_LOAD_176014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_176014", action = "action_EVENT_GROUP_LOAD_176014", trigger_count = 0 },
	{ config_id = 1176015, name = "GADGET_STATE_CHANGE_176015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_176015", action = "action_EVENT_GADGET_STATE_CHANGE_176015" }
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
		gadgets = { 176001, 176002, 176004, 176005, 176006, 176007, 176010, 176016, 176017, 176018, 176019 },
		regions = { 176011 },
		triggers = { "ENTER_REGION_176011", "GADGET_STATE_CHANGE_176012", "GROUP_LOAD_176013", "GROUP_LOAD_176014", "GADGET_STATE_CHANGE_176015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_176011(context, evt)
	if evt.param1 ~= 176011 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_176011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_176012(context, evt)
	if 176019 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_176012(context, evt)
	-- 创建id为176003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为176009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176009 }) then
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
function condition_EVENT_GROUP_LOAD_176013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307176, 176019) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_176013(context, evt)
	-- 创建id为176003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为176009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 176009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_176014(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307176, 176010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_176014(context, evt)
	-- 将configid为 176019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_176015(context, evt)
	if 176010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_176015(context, evt)
	-- 将configid为 176019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end