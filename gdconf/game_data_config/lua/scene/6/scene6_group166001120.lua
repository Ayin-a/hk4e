-- 基础信息
local base_info = {
	group_id = 166001120
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
	{ config_id = 120001, gadget_id = 70290276, pos = { x = 1044.979, y = 1024.656, z = 950.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 120002, gadget_id = 70290204, pos = { x = 1045.043, y = 1012.982, z = 950.277 }, rot = { x = 17.485, y = 4.891, z = -0.001 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 120003, gadget_id = 70290233, pos = { x = 1044.122, y = 1012.934, z = 951.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 120008, gadget_id = 70290266, pos = { x = 1044.762, y = 1013.076, z = 950.370 }, rot = { x = 13.554, y = 19.307, z = 354.289 }, level = 32, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 120010, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1040.552, y = 1012.757, z = 957.529 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1120004, name = "VARIABLE_CHANGE_120004", event = EventType.EVENT_VARIABLE_CHANGE, source = "DropRockAbyssBulletTrigger", condition = "", action = "action_EVENT_VARIABLE_CHANGE_120004" },
	{ config_id = 1120005, name = "ANY_GADGET_DIE_120005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_120005", action = "action_EVENT_ANY_GADGET_DIE_120005", trigger_count = 0 },
	{ config_id = 1120006, name = "GROUP_LOAD_120006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_120006", action = "action_EVENT_GROUP_LOAD_120006", trigger_count = 0 },
	{ config_id = 1120007, name = "TIME_AXIS_PASS_120007", event = EventType.EVENT_TIME_AXIS_PASS, source = "killed", condition = "condition_EVENT_TIME_AXIS_PASS_120007", action = "action_EVENT_TIME_AXIS_PASS_120007", trigger_count = 0 },
	{ config_id = 1120009, name = "GADGET_CREATE_120009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_120009", action = "action_EVENT_GADGET_CREATE_120009", trigger_count = 0 },
	{ config_id = 1120010, name = "ENTER_REGION_120010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_120010", action = "action_EVENT_ENTER_REGION_120010" },
	{ config_id = 1120011, name = "GROUP_LOAD_120011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_120011", action = "action_EVENT_GROUP_LOAD_120011", trigger_count = 0 },
	{ config_id = 1120012, name = "GADGET_CREATE_120012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_120012", action = "action_EVENT_GADGET_CREATE_120012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = false },
	{ config_id = 2, name = "drop", value = 0, no_refresh = false }
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
		gadgets = { 120001 },
		regions = { 120010 },
		triggers = { "VARIABLE_CHANGE_120004", "ANY_GADGET_DIE_120005", "GROUP_LOAD_120006", "TIME_AXIS_PASS_120007", "GADGET_CREATE_120009", "ENTER_REGION_120010", "GROUP_LOAD_120011", "GADGET_CREATE_120012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_120004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 创建id为120002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 120002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为120003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 120003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为120008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 120008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_120005(context, evt)
	if 120002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_120005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 120003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"killed"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "killed", {5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_120006(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_120006(context, evt)
	-- 创建id为120002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 120002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为120003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 120003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_120007(context, evt)
	if "killed" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_120007(context, evt)
	-- 创建id为120002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 120002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为120003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 120003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_120009(context, evt)
	if 120008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_120009(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_120010(context, evt)
	if evt.param1 ~= 120010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_120010(context, evt)
	-- 将configid为 120001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 120001, GadgetState.GearStart) then
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
function condition_EVENT_GROUP_LOAD_120011(context, evt)
	-- 判断变量"drop"为1
	if ScriptLib.GetGroupVariableValue(context, "drop") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_120011(context, evt)
	-- 创建id为120002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 120002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为120003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 120003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_120012(context, evt)
	if 120002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_120012(context, evt)
	-- 将本组内变量名为 "drop" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "drop", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_6/DropRockAbyssBulletTrigger"