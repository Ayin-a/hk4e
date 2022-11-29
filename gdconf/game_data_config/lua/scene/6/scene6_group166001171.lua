-- 基础信息
local base_info = {
	group_id = 166001171
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
	{ config_id = 171002, gadget_id = 70290205, pos = { x = 829.143, y = 968.329, z = 752.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 171003, gadget_id = 70290233, pos = { x = 828.693, y = 968.694, z = 753.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 171005, gadget_id = 70360342, pos = { x = 815.938, y = 968.586, z = 759.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 171006, gadget_id = 70360342, pos = { x = 821.588, y = 968.565, z = 750.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 171007, gadget_id = 70211111, pos = { x = 821.788, y = 968.705, z = 750.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1171001, name = "GROUP_LOAD_171001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_171001", action = "action_EVENT_GROUP_LOAD_171001" },
	{ config_id = 1171004, name = "ANY_GADGET_DIE_171004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_171004", action = "action_EVENT_ANY_GADGET_DIE_171004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1171008, name = "ANY_GADGET_DIE_171008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_171008", action = "action_EVENT_ANY_GADGET_DIE_171008" }
	}
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
		gadgets = { 171002, 171003, 171005, 171006 },
		regions = { },
		triggers = { "GROUP_LOAD_171001", "ANY_GADGET_DIE_171004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_171001(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_171001(context, evt)
	-- 创建id为171007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 171007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_171004(context, evt)
	if 171002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_171004(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 171003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为171007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 171007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 171005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 171006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end