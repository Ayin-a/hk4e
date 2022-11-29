-- 基础信息
local base_info = {
	group_id = 199003171
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
	{ config_id = 171001, gadget_id = 70310241, pos = { x = -662.208, y = 333.064, z = -43.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 171002, gadget_id = 70500000, pos = { x = -667.110, y = 333.653, z = -40.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 9306, isOneoff = true, persistent = true, area_id = 403 },
	{ config_id = 171003, gadget_id = 70500000, pos = { x = -654.392, y = 333.727, z = -43.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 9306, isOneoff = true, persistent = true, area_id = 403 },
	{ config_id = 171004, gadget_id = 70500000, pos = { x = -662.208, y = 333.563, z = -50.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 9306, isOneoff = true, persistent = true, area_id = 403 },
	{ config_id = 171005, gadget_id = 70211031, pos = { x = -662.208, y = 333.547, z = -43.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 2004300, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1171006, name = "GADGET_STATE_CHANGE_171006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171006", action = "action_EVENT_GADGET_STATE_CHANGE_171006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 171001, 171002, 171003, 171004, 171005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_171006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_171006(context, evt)
	if 171005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171006(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 199003171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end