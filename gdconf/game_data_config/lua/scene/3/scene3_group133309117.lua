-- 基础信息
local base_info = {
	group_id = 133309117
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
	{ config_id = 117001, gadget_id = 70330357, pos = { x = -2500.800, y = 144.832, z = 5241.100 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, persistent = true, arguments = { 1 }, area_id = 27 },
	{ config_id = 117002, gadget_id = 70330374, pos = { x = -2413.210, y = 119.167, z = 5042.037 }, rot = { x = 331.271, y = 0.000, z = 350.179 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 117003, gadget_id = 70330366, pos = { x = -2265.618, y = 74.605, z = 5149.575 }, rot = { x = 282.514, y = 294.384, z = 8.718 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 117004, gadget_id = 71700539, pos = { x = -2500.800, y = 144.832, z = 5241.100 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 117006, gadget_id = 70211121, pos = { x = -2501.035, y = 144.862, z = 5234.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 117008, gadget_id = 70330391, pos = { x = -2513.612, y = 141.443, z = 5174.185 }, rot = { x = 336.581, y = 87.198, z = 4.453 }, level = 26, chest_drop_id = 1050251, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 117009, gadget_id = 70330369, pos = { x = -2318.103, y = 135.250, z = 4972.996 }, rot = { x = 282.902, y = 162.734, z = 324.223 }, level = 26, chest_drop_id = 1050237, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 117010, gadget_id = 70330374, pos = { x = -2323.491, y = 164.573, z = 5299.837 }, rot = { x = 342.768, y = 223.748, z = 3.304 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 117011, gadget_id = 70710352, pos = { x = -2965.287, y = 209.212, z = 5171.831 }, rot = { x = 0.000, y = 280.460, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 117012, gadget_id = 70330342, pos = { x = -2967.524, y = 208.921, z = 5173.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 117013, gadget_id = 70330378, pos = { x = -2366.921, y = 67.449, z = 5230.081 }, rot = { x = 326.344, y = 90.655, z = 349.600 }, level = 26, chest_drop_id = 1050244, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 117016, gadget_id = 70330320, pos = { x = -2500.800, y = 144.832, z = 5241.100 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 32, persistent = true, interact_id = 136, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 117014, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2500.800, y = 144.832, z = 5241.100 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1117005, name = "GADGET_STATE_CHANGE_117005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_117005", action = "action_EVENT_GADGET_STATE_CHANGE_117005" },
	{ config_id = 1117007, name = "GROUP_LOAD_117007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_117007", action = "action_EVENT_GROUP_LOAD_117007", trigger_count = 0 },
	{ config_id = 1117014, name = "ENTER_REGION_117014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_117014", action = "action_EVENT_ENTER_REGION_117014" },
	{ config_id = 1117015, name = "GROUP_LOAD_117015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_117015", action = "action_EVENT_GROUP_LOAD_117015", trigger_count = 0 },
	{ config_id = 1117017, name = "GADGET_STATE_CHANGE_117017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_117017", action = "action_EVENT_GADGET_STATE_CHANGE_117017" }
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
		gadgets = { 117001, 117002, 117003, 117008, 117009, 117010, 117011, 117012, 117013, 117016 },
		regions = { 117014 },
		triggers = { "GADGET_STATE_CHANGE_117005", "GROUP_LOAD_117007", "ENTER_REGION_117014", "GROUP_LOAD_117015", "GADGET_STATE_CHANGE_117017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_117005(context, evt)
	if 117001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_117005(context, evt)
	-- 创建id为117004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 117004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为117006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 117006 }) then
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
function condition_EVENT_GROUP_LOAD_117007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309117, 117001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_117007(context, evt)
	-- 创建id为117004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 117004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为117006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 117006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_117014(context, evt)
	if evt.param1 ~= 117014 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_117014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_117015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309117, 117016) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_117015(context, evt)
	-- 将configid为 117001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 117001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_117017(context, evt)
	if 117016 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_117017(context, evt)
	-- 将configid为 117001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 117001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end