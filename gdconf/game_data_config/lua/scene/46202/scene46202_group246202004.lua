-- 基础信息
local base_info = {
	group_id = 246202004
}

-- Trigger变量
local defs = {
	rotate_center_1 = 4009,
	rotate_center_2 = 4012
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
	{ config_id = 4001, gadget_id = 70800194, pos = { x = 0.009, y = -43.990, z = 0.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4009, gadget_id = 70800114, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 4012, gadget_id = 70800114, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, is_use_point_array = true },
	{ config_id = 4090, gadget_id = 70800158, pos = { x = 0.013, y = 43.983, z = -0.116 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1 }
}

-- 区域
regions = {
	-- 用来给team挂ability，镜头表现用
	{ config_id = 4091, shape = RegionShape.SPHERE, radius = 100, pos = { x = 0.000, y = 0.000, z = 0.000 }, team_ability_group_list = { "CYRogue_Team_Rotate_Camera" } }
}

-- 触发器
triggers = {
	-- 旋转结束后逻辑
	{ config_id = 1004011, name = "VARIABLE_CHANGE_4011", event = EventType.EVENT_VARIABLE_CHANGE, source = "Turn", condition = "condition_EVENT_VARIABLE_CHANGE_4011", action = "action_EVENT_VARIABLE_CHANGE_4011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "canTurn", value = 0, no_refresh = false }
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
		-- description = 初始化,
		monsters = { },
		gadgets = { 4001, 4009, 4012, 4090 },
		regions = { 4091 },
		triggers = { "VARIABLE_CHANGE_4011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 传送点,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Turn"为0
	if ScriptLib.GetGroupVariableValue(context, "Turn") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4011(context, evt)
	-- 将本组内变量名为 "Ready" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Ready", 1, 246202007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Ready" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Ready", 1, 246202006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Ready" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Ready", 1, 246202005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Ready" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Ready", 1, 246202003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Ready" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Ready", 1, 246202002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Ready" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Ready", 1, 246202001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为4001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_7/rogue_rotate_whitebox"