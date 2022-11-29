-- 基础信息
local base_info = {
	group_id = 166001243
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 243001, monster_id = 26010301, pos = { x = 907.452, y = 748.835, z = 301.047 }, rot = { x = 0.000, y = 84.220, z = 0.000 }, level = 36, drop_tag = "骗骗花", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 243002, gadget_id = 70290276, pos = { x = 910.107, y = 773.902, z = 302.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 243003, gadget_id = 70290204, pos = { x = 910.171, y = 748.667, z = 301.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 243004, gadget_id = 70290233, pos = { x = 911.142, y = 748.547, z = 307.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 243010, shape = RegionShape.SPHERE, radius = 7.5, pos = { x = 909.082, y = 750.328, z = 302.085 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1243005, name = "GADGET_CREATE_243005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_243005", action = "action_EVENT_GADGET_CREATE_243005", trigger_count = 0 },
	{ config_id = 1243006, name = "GROUP_LOAD_243006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_243006", action = "action_EVENT_GROUP_LOAD_243006", trigger_count = 0 },
	{ config_id = 1243007, name = "VARIABLE_CHANGE_243007", event = EventType.EVENT_VARIABLE_CHANGE, source = "DropRockAbyssBulletTrigger", condition = "", action = "action_EVENT_VARIABLE_CHANGE_243007" },
	{ config_id = 1243008, name = "ANY_GADGET_DIE_243008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_243008", action = "action_EVENT_ANY_GADGET_DIE_243008", trigger_count = 0 },
	{ config_id = 1243010, name = "ENTER_REGION_243010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243010", action = "action_EVENT_ENTER_REGION_243010" }
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
		gadgets = { 243002 },
		regions = { 243010 },
		triggers = { "GADGET_CREATE_243005", "GROUP_LOAD_243006", "VARIABLE_CHANGE_243007", "ANY_GADGET_DIE_243008", "ENTER_REGION_243010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_243005(context, evt)
	if 243004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_243005(context, evt)
	-- 将本组内变量名为 "drop" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "drop", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_243006(context, evt)
	-- 判断变量"drop"为1
	if ScriptLib.GetGroupVariableValue(context, "drop") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_243006(context, evt)
	-- 创建id为243003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 243003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为243004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 243004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_243007(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 创建id为243003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 243003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为243004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 243004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 243001, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_243008(context, evt)
	if 243003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_243008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 243004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_243010(context, evt)
	if evt.param1 ~= 243010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_243010(context, evt)
	-- 将configid为 243002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243002, GadgetState.GearStart) then
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

require "V2_6/DropRockAbyssBulletTrigger"