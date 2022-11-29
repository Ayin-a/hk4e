-- 基础信息
local base_info = {
	group_id = 133310080
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
	{ config_id = 80001, gadget_id = 70330361, pos = { x = -3014.973, y = 257.062, z = 4890.338 }, rot = { x = 0.000, y = 167.651, z = 0.000 }, level = 32, persistent = true, arguments = { 9 }, area_id = 28 },
	{ config_id = 80002, gadget_id = 70330383, pos = { x = -3002.770, y = 257.615, z = 4896.442 }, rot = { x = 336.050, y = 127.708, z = 349.095 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 28 },
	{ config_id = 80003, gadget_id = 70330366, pos = { x = -3168.994, y = 272.213, z = 4751.128 }, rot = { x = 327.843, y = 265.707, z = 0.000 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 28 },
	{ config_id = 80005, gadget_id = 70211121, pos = { x = -3011.673, y = 257.052, z = 4895.203 }, rot = { x = 0.000, y = 212.121, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 80007, gadget_id = 70330391, pos = { x = -3019.562, y = 272.505, z = 4751.611 }, rot = { x = 276.830, y = 282.159, z = 305.878 }, level = 26, chest_drop_id = 1050251, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 28 },
	{ config_id = 80008, gadget_id = 70330366, pos = { x = -2967.731, y = 297.378, z = 4715.399 }, rot = { x = 337.952, y = 85.108, z = 0.000 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 28 },
	{ config_id = 80009, gadget_id = 70330379, pos = { x = -2892.986, y = 262.011, z = 4947.482 }, rot = { x = 339.618, y = 296.615, z = 356.470 }, level = 26, chest_drop_id = 1050245, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 28 },
	{ config_id = 80010, gadget_id = 70330374, pos = { x = -3225.019, y = 280.694, z = 4749.673 }, rot = { x = 344.580, y = 13.580, z = 342.528 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 28 },
	{ config_id = 80011, gadget_id = 71700543, pos = { x = -3014.973, y = 257.062, z = 4890.338 }, rot = { x = 0.000, y = 167.651, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 80018, gadget_id = 70330320, pos = { x = -3014.973, y = 257.062, z = 4890.338 }, rot = { x = 0.000, y = 167.651, z = 0.000 }, level = 32, persistent = true, interact_id = 140, area_id = 28 }
}

-- 区域
regions = {
	{ config_id = 80004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3014.973, y = 257.062, z = 4890.338 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1080004, name = "ENTER_REGION_80004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80004", action = "action_EVENT_ENTER_REGION_80004" },
	{ config_id = 1080014, name = "GADGET_STATE_CHANGE_80014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80014", action = "action_EVENT_GADGET_STATE_CHANGE_80014" },
	{ config_id = 1080015, name = "GROUP_LOAD_80015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_80015", action = "action_EVENT_GROUP_LOAD_80015", trigger_count = 0 },
	{ config_id = 1080016, name = "GROUP_LOAD_80016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_80016", action = "action_EVENT_GROUP_LOAD_80016", trigger_count = 0 },
	{ config_id = 1080017, name = "GADGET_STATE_CHANGE_80017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80017", action = "action_EVENT_GADGET_STATE_CHANGE_80017" }
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
		gadgets = { 80001, 80002, 80003, 80007, 80008, 80009, 80010, 80018 },
		regions = { 80004 },
		triggers = { "ENTER_REGION_80004", "GADGET_STATE_CHANGE_80014", "GROUP_LOAD_80015", "GROUP_LOAD_80016", "GADGET_STATE_CHANGE_80017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_80004(context, evt)
	if evt.param1 ~= 80004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80014(context, evt)
	if 80001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80014(context, evt)
	-- 创建id为80005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 80005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为80011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 80011 }) then
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
function condition_EVENT_GROUP_LOAD_80015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310080, 80001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_80015(context, evt)
	-- 创建id为80005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 80005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为80011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 80011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_80016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310080, 80018) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_80016(context, evt)
	-- 将configid为 80001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80017(context, evt)
	if 80018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80017(context, evt)
	-- 将configid为 80001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end