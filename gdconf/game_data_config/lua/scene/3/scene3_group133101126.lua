-- 基础信息
local base_info = {
	group_id = 133101126
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
	{ config_id = 126001, gadget_id = 70220008, pos = { x = 1208.360, y = 270.900, z = 1415.162 }, rot = { x = 14.907, y = 90.526, z = 356.678 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 126002, gadget_id = 70220008, pos = { x = 1205.568, y = 272.233, z = 1420.862 }, rot = { x = 7.011, y = 150.987, z = 356.127 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 126003, gadget_id = 70220008, pos = { x = 1203.235, y = 275.057, z = 1424.104 }, rot = { x = 354.701, y = 202.063, z = 353.777 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 126004, gadget_id = 70211102, pos = { x = 1208.119, y = 270.584, z = 1412.613 }, rot = { x = 16.622, y = 90.429, z = 348.278 }, level = 21, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126005, name = "ANY_GADGET_DIE_126005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126005", action = "action_EVENT_ANY_GADGET_DIE_126005", trigger_count = 3 },
	{ config_id = 1126006, name = "VARIABLE_CHANGE_126006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_126006", action = "action_EVENT_VARIABLE_CHANGE_126006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true }
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
		gadgets = { 126001, 126002, 126003, 126004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_126005", "VARIABLE_CHANGE_126006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126005(context, evt)
	if 126001 ~= evt.param1 and 126002 ~= evt.param1 and 126003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126005(context, evt)
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_126006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"flag"为3
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_126006(context, evt)
	-- 将configid为 126004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end