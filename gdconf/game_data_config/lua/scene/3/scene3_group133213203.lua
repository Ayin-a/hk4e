-- 基础信息
local base_info = {
	group_id = 133213203
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
	{ config_id = 203001, gadget_id = 70350006, pos = { x = -3341.718, y = 216.826, z = -3451.203 }, rot = { x = 274.535, y = 180.024, z = 325.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 203003, gadget_id = 70350006, pos = { x = -3341.227, y = 216.778, z = -3451.807 }, rot = { x = 274.535, y = 180.024, z = 145.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 203004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3342.094, y = 219.176, z = -3449.954 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1203002, name = "VARIABLE_CHANGE_203002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_203002", action = "action_EVENT_VARIABLE_CHANGE_203002" },
	{ config_id = 1203004, name = "ENTER_REGION_203004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_203004", action = "action_EVENT_ENTER_REGION_203004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 203001, 203003 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_203002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_203002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_203002(context, evt)
	-- 将configid为 203001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 203001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 203003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 203003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_203004(context, evt)
	if evt.param1 ~= 203004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_203004(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end