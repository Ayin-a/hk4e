-- 基础信息
local base_info = {
	group_id = 199003011
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
	{ config_id = 11001, gadget_id = 70350006, pos = { x = -716.900, y = 240.669, z = -10.400 }, rot = { x = 270.000, y = 25.992, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 11002, gadget_id = 70950157, pos = { x = -720.082, y = 237.869, z = -10.454 }, rot = { x = 88.176, y = 69.115, z = 129.139 }, level = 1, persistent = true, area_id = 403 },
	{ config_id = 11003, gadget_id = 70950157, pos = { x = -716.257, y = 237.681, z = -13.393 }, rot = { x = 272.583, y = 257.938, z = 288.248 }, level = 1, persistent = true, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011004, name = "GADGET_STATE_CHANGE_11004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11004", action = "action_EVENT_GADGET_STATE_CHANGE_11004", trigger_count = 0 }
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
		gadgets = { 11001, 11002, 11003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_11004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11004(context, evt)
	if 11001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199003011, EntityType.GADGET, 11002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199003011, EntityType.GADGET, 11003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end