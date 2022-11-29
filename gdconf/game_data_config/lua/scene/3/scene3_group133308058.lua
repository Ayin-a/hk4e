-- 基础信息
local base_info = {
	group_id = 133308058
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
	{ config_id = 58001, gadget_id = 70330383, pos = { x = -1554.987, y = -36.446, z = 4551.494 }, rot = { x = 304.961, y = 96.923, z = 15.515 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 58002, gadget_id = 70330363, pos = { x = -1568.071, y = -26.603, z = 4543.823 }, rot = { x = 0.000, y = 95.807, z = 0.000 }, level = 32, persistent = true, arguments = { 8 }, area_id = 26 },
	{ config_id = 58003, gadget_id = 70330366, pos = { x = -1426.613, y = 2.048, z = 4728.507 }, rot = { x = 285.378, y = 337.104, z = 170.919 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 58004, gadget_id = 70330387, pos = { x = -1307.600, y = 72.402, z = 4530.871 }, rot = { x = 277.095, y = 0.001, z = 329.500 }, level = 26, chest_drop_id = 1050249, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 58005, gadget_id = 70330366, pos = { x = -1669.111, y = 26.189, z = 4527.126 }, rot = { x = 296.887, y = 334.494, z = 143.386 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 58006, gadget_id = 70330379, pos = { x = -1440.473, y = 73.545, z = 4842.278 }, rot = { x = 277.969, y = 261.580, z = 88.170 }, level = 26, chest_drop_id = 1050245, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 58007, gadget_id = 70330374, pos = { x = -1334.812, y = 149.673, z = 4359.167 }, rot = { x = 285.619, y = 313.175, z = 23.194 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 26 },
	{ config_id = 58008, gadget_id = 71700545, pos = { x = -1568.071, y = -26.603, z = 4543.823 }, rot = { x = 0.000, y = 95.807, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 58009, gadget_id = 70330320, pos = { x = -1568.071, y = -26.603, z = 4543.823 }, rot = { x = 0.000, y = 95.807, z = 0.000 }, level = 32, persistent = true, interact_id = 142, area_id = 26 },
	{ config_id = 58011, gadget_id = 70211121, pos = { x = -1571.439, y = -26.603, z = 4548.636 }, rot = { x = 0.000, y = 95.025, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 58010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1460.615, y = -47.662, z = 4535.754 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1058010, name = "ENTER_REGION_58010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_58010", action = "action_EVENT_ENTER_REGION_58010" },
	{ config_id = 1058014, name = "GADGET_STATE_CHANGE_58014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_58014", action = "action_EVENT_GADGET_STATE_CHANGE_58014" },
	{ config_id = 1058015, name = "GROUP_LOAD_58015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_58015", action = "action_EVENT_GROUP_LOAD_58015", trigger_count = 0 },
	{ config_id = 1058016, name = "GROUP_LOAD_58016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_58016", action = "action_EVENT_GROUP_LOAD_58016", trigger_count = 0 },
	{ config_id = 1058017, name = "GADGET_STATE_CHANGE_58017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_58017", action = "action_EVENT_GADGET_STATE_CHANGE_58017" }
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
		gadgets = { 58001, 58002, 58003, 58004, 58005, 58006, 58007, 58009 },
		regions = { 58010 },
		triggers = { "ENTER_REGION_58010", "GADGET_STATE_CHANGE_58014", "GROUP_LOAD_58015", "GROUP_LOAD_58016", "GADGET_STATE_CHANGE_58017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_58010(context, evt)
	if evt.param1 ~= 58010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_58010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_58014(context, evt)
	if 58002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_58014(context, evt)
	-- 创建id为58008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 58008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为58011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 58011 }) then
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
function condition_EVENT_GROUP_LOAD_58015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308058, 58002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_58015(context, evt)
	-- 创建id为58008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 58008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为58011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 58011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_58016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308058, 58009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_58016(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_58017(context, evt)
	if 58009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_58017(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end