-- 基础信息
local base_info = {
	group_id = 166001378
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
	{ config_id = 378001, gadget_id = 70290205, pos = { x = 992.102, y = 770.802, z = 363.529 }, rot = { x = 0.000, y = 304.115, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 378002, gadget_id = 70290233, pos = { x = 989.960, y = 770.848, z = 359.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 378004, gadget_id = 70360342, pos = { x = 988.147, y = 770.058, z = 372.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 378005, gadget_id = 70211111, pos = { x = 988.084, y = 770.110, z = 372.334 }, rot = { x = 0.000, y = 310.122, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1378003, name = "ANY_GADGET_DIE_378003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_378003", action = "action_EVENT_ANY_GADGET_DIE_378003" },
	{ config_id = 1378006, name = "GROUP_LOAD_378006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_378006", action = "action_EVENT_GROUP_LOAD_378006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true }
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
		gadgets = { 378001, 378002, 378004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_378003", "GROUP_LOAD_378006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
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
function condition_EVENT_ANY_GADGET_DIE_378003(context, evt)
	if 378001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_378003(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 378002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为378005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 378005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 378004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_378006(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_378006(context, evt)
	-- 创建id为378005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 378005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end