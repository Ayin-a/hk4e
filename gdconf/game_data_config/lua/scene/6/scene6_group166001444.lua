-- 基础信息
local base_info = {
	group_id = 166001444
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 444004, monster_id = 24010101, pos = { x = 478.449, y = 387.837, z = 573.556 }, rot = { x = 0.000, y = 203.427, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 444001, gadget_id = 70290205, pos = { x = 479.887, y = 386.676, z = 568.338 }, rot = { x = 0.000, y = 304.115, z = 8.226 }, level = 36, area_id = 300 },
	{ config_id = 444002, gadget_id = 70290233, pos = { x = 476.851, y = 386.166, z = 569.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 444005, gadget_id = 70211101, pos = { x = 469.902, y = 387.747, z = 574.917 }, rot = { x = 15.053, y = 177.866, z = 4.627 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 444006, gadget_id = 70360342, pos = { x = 469.861, y = 387.279, z = 574.636 }, rot = { x = 354.225, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1444003, name = "ANY_GADGET_DIE_444003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_444003", action = "action_EVENT_ANY_GADGET_DIE_444003" },
	{ config_id = 1444009, name = "GROUP_LOAD_444009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_444009", action = "action_EVENT_GROUP_LOAD_444009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1444007, name = "ANY_GADGET_DIE_444007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_444007", action = "action_EVENT_ANY_GADGET_DIE_444007" },
		{ config_id = 1444008, name = "GADGET_CREATE_444008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_444008", action = "action_EVENT_GADGET_CREATE_444008" }
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
		monsters = { 444004 },
		gadgets = { 444001, 444002, 444006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_444003", "GROUP_LOAD_444009" },
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
function condition_EVENT_ANY_GADGET_DIE_444003(context, evt)
	if 444001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_444003(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 444002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 444006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为444005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 444005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_444009(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_444009(context, evt)
	-- 创建id为444005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 444005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end