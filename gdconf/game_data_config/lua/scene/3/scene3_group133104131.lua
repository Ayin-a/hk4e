-- 基础信息
local base_info = {
	group_id = 133104131
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
	{ config_id = 414, gadget_id = 70220001, pos = { x = 18.590, y = 272.015, z = 178.101 }, rot = { x = 354.594, y = 0.468, z = 350.103 }, level = 19, isOneoff = true, area_id = 7 },
	{ config_id = 415, gadget_id = 70220001, pos = { x = 18.572, y = 271.942, z = 183.551 }, rot = { x = 2.173, y = 359.921, z = 355.857 }, level = 19, isOneoff = true, area_id = 7 },
	{ config_id = 416, gadget_id = 70220001, pos = { x = 23.697, y = 271.466, z = 178.644 }, rot = { x = 359.562, y = 0.023, z = 354.116 }, level = 19, isOneoff = true, area_id = 7 },
	{ config_id = 417, gadget_id = 70220001, pos = { x = 23.335, y = 271.510, z = 179.534 }, rot = { x = 359.562, y = 0.023, z = 354.116 }, level = 19, isOneoff = true, area_id = 7 },
	{ config_id = 418, gadget_id = 70220001, pos = { x = 23.497, y = 271.545, z = 183.986 }, rot = { x = 356.488, y = 0.111, z = 356.385 }, level = 19, isOneoff = true, area_id = 7 },
	{ config_id = 419, gadget_id = 70220001, pos = { x = 20.936, y = 271.756, z = 182.265 }, rot = { x = 0.526, y = 359.975, z = 354.456 }, level = 19, isOneoff = true, area_id = 7 },
	{ config_id = 420, gadget_id = 70220001, pos = { x = 20.719, y = 271.749, z = 186.020 }, rot = { x = 359.719, y = 0.003, z = 358.909 }, level = 19, isOneoff = true, area_id = 7 },
	{ config_id = 421, gadget_id = 70220001, pos = { x = 18.674, y = 271.898, z = 184.534 }, rot = { x = 2.173, y = 359.921, z = 355.857 }, level = 19, isOneoff = true, area_id = 7 },
	{ config_id = 422, gadget_id = 70220001, pos = { x = 20.061, y = 271.877, z = 179.467 }, rot = { x = 0.783, y = 359.962, z = 354.459 }, level = 19, isOneoff = true, area_id = 7 },
	{ config_id = 423, gadget_id = 70211111, pos = { x = 21.425, y = 271.612, z = 183.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000219, name = "ANY_GADGET_DIE_219", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_219", trigger_count = 0 },
	{ config_id = 1000353, name = "VARIABLE_CHANGE_353", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_353", action = "action_EVENT_VARIABLE_CHANGE_353" }
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
		gadgets = { 414, 415, 416, 417, 418, 419, 420, 421, 422 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_219", "VARIABLE_CHANGE_353" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_219(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_353(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为9
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_353(context, evt)
	-- 创建id为423的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 423 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end