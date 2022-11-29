-- 基础信息
local base_info = {
	group_id = 133304204
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
	{ config_id = 204001, gadget_id = 70950099, pos = { x = -1294.461, y = 104.000, z = 2324.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, fishing_id = 4003, fishing_areas = { 300056 }, area_id = 21 },
	{ config_id = 204003, gadget_id = 70360001, pos = { x = -1285.283, y = 104.387, z = 2319.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 204004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1285.316, y = 104.372, z = 2319.615 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1204002, name = "VARIABLE_CHANGE_204002", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_204002", action = "action_EVENT_VARIABLE_CHANGE_204002", trigger_count = 0 },
	{ config_id = 1204005, name = "FISHING_QTE_FINISH_204005", event = EventType.EVENT_FISHING_QTE_FINISH, source = "", condition = "condition_EVENT_FISHING_QTE_FINISH_204005", action = "action_EVENT_FISHING_QTE_FINISH_204005", trigger_count = 3 }
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
		gadgets = { 204001, 204003 },
		regions = { 204004 },
		triggers = { "VARIABLE_CHANGE_204002", "FISHING_QTE_FINISH_204005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_204002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_204002(context, evt)
	-- 将configid为 204003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 204003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 133304469) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_FISHING_QTE_FINISH_204005(context, evt)
	if 1 ~= evt.param2 then
		return false
	elseif 0 ~= evt.param1 and 0 ~= 0 then
	  return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_FISHING_QTE_FINISH_204005(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end