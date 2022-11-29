-- 基础信息
local base_info = {
	group_id = 111101178
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
	{ config_id = 178001, gadget_id = 70360275, pos = { x = 2988.414, y = 336.249, z = -1083.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 178002, gadget_id = 70360278, pos = { x = 2991.675, y = 374.617, z = -1023.616 }, rot = { x = 0.000, y = 358.407, z = 0.000 }, level = 1, arguments = {1} }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1178003, name = "GADGET_STATE_CHANGE_178003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_178003", action = "action_EVENT_GADGET_STATE_CHANGE_178003", trigger_count = 0 },
	{ config_id = 1178004, name = "GADGET_STATE_CHANGE_178004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_178004", action = "action_EVENT_GADGET_STATE_CHANGE_178004", trigger_count = 0 }
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
		gadgets = { 178001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_178003", "GADGET_STATE_CHANGE_178004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_178003(context, evt)
	if 178001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_178003(context, evt)
	-- 创建id为178002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 178002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_178004(context, evt)
	if 178001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_178004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 111101178, EntityType.GADGET, 178002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end