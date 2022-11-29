-- 基础信息
local base_info = {
	group_id = 166001561
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
	{ config_id = 561001, gadget_id = 70290204, pos = { x = 151.557, y = 269.925, z = 492.536 }, rot = { x = 1.459, y = 293.048, z = 335.709 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 561002, gadget_id = 70290233, pos = { x = 156.280, y = 266.317, z = 510.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 561003, gadget_id = 70290276, pos = { x = 150.513, y = 283.510, z = 496.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 561006, shape = RegionShape.SPHERE, radius = 20, pos = { x = 149.389, y = 271.472, z = 490.105 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1561004, name = "ANY_GADGET_DIE_561004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_561004", action = "action_EVENT_ANY_GADGET_DIE_561004" },
	{ config_id = 1561005, name = "VARIABLE_CHANGE_561005", event = EventType.EVENT_VARIABLE_CHANGE, source = "DropRockAbyssBulletTrigger", condition = "", action = "action_EVENT_VARIABLE_CHANGE_561005" },
	{ config_id = 1561006, name = "ENTER_REGION_561006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_561006" },
	{ config_id = 1561007, name = "GADGET_CREATE_561007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_561007", action = "action_EVENT_GADGET_CREATE_561007", trigger_count = 0 },
	{ config_id = 1561008, name = "GROUP_LOAD_561008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_561008", action = "action_EVENT_GROUP_LOAD_561008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "drop", value = 0, no_refresh = false }
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
		gadgets = { 561003 },
		regions = { 561006 },
		triggers = { "ANY_GADGET_DIE_561004", "VARIABLE_CHANGE_561005", "ENTER_REGION_561006", "GADGET_CREATE_561007", "GROUP_LOAD_561008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_561004(context, evt)
	if 561001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_561004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 561002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_561005(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 创建id为561002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 561002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为561001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 561001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_561006(context, evt)
	-- 将configid为 561003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 561003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "drop" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "drop", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_561007(context, evt)
	if 561002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_561007(context, evt)
	-- 将本组内变量名为 "drop" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "drop", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_561008(context, evt)
	-- 判断变量"drop"为1
	if ScriptLib.GetGroupVariableValue(context, "drop") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_561008(context, evt)
	-- 创建id为561001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 561001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为561002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 561002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_6/DropRockAbyssBulletTrigger"