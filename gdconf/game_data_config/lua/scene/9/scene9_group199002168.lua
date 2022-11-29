-- 基础信息
local base_info = {
	group_id = 199002168
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
	{ config_id = 168001, gadget_id = 70310332, pos = { x = 465.915, y = 111.674, z = -460.688 }, rot = { x = 0.000, y = 269.214, z = 0.000 }, level = 1, persistent = true, area_id = 401 },
	{ config_id = 168002, gadget_id = 70310332, pos = { x = 444.042, y = 111.749, z = -479.488 }, rot = { x = 0.000, y = 75.070, z = 0.000 }, level = 1, persistent = true, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1168003, name = "GADGETTALK_DONE_168003", event = EventType.EVENT_GADGETTALK_DONE, source = "6800387", condition = "", action = "action_EVENT_GADGETTALK_DONE_168003", trigger_count = 0 },
	{ config_id = 1168004, name = "GADGETTALK_DONE_168004", event = EventType.EVENT_GADGETTALK_DONE, source = "6800387", condition = "", action = "action_EVENT_GADGETTALK_DONE_168004", trigger_count = 0 },
	{ config_id = 1168005, name = "GROUP_LOAD_168005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_168005", action = "action_EVENT_GROUP_LOAD_168005", trigger_count = 0 }
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
		gadgets = { 168001, 168002 },
		regions = { },
		triggers = { "GADGETTALK_DONE_168003", "GADGETTALK_DONE_168004", "GROUP_LOAD_168005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGETTALK_DONE_168003(context, evt)
	ScriptLib.SetGadgetTalkByConfigId(context, 199002168, 168002, 6800388)
	ScriptLib.SetGadgetTalkByConfigId(context, 199002168, 168001, 6800389)
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_168004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_168005(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_168005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 168001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 168002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end