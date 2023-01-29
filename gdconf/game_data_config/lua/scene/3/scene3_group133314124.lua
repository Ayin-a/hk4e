-- 基础信息
local base_info = {
	group_id = 133314124
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
	{ config_id = 124001, gadget_id = 70330281, pos = { x = -806.425, y = -58.818, z = 4840.162 }, rot = { x = 0.000, y = 68.526, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 124003, gadget_id = 70330282, pos = { x = -809.517, y = -58.818, z = 4832.420 }, rot = { x = 0.000, y = 342.983, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_ChiWangLevelRequire = 2}, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 打开屏障
	{ config_id = 1124002, name = "GADGET_STATE_CHANGE_124002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_124002", action = "action_EVENT_GADGET_STATE_CHANGE_124002", trigger_count = 0 }
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
		gadgets = { 124001, 124003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_124002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_124002(context, evt)
	if 124001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_124002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 124003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end