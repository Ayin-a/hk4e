-- 基础信息
local base_info = {
	group_id = 133002920
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
	{ config_id = 920001, gadget_id = 70710267, pos = { x = 1252.373, y = 381.671, z = -918.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1050115, drop_count = 1, area_id = 10 },
	{ config_id = 920002, gadget_id = 70300118, pos = { x = 1252.435, y = 381.742, z = -918.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1920003, name = "ANY_GADGET_DIE_920003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_920003", action = "action_EVENT_ANY_GADGET_DIE_920003", trigger_count = 0 },
	{ config_id = 1920004, name = "QUEST_START_920004", event = EventType.EVENT_QUEST_START, source = "1104211", condition = "condition_EVENT_QUEST_START_920004", action = "action_EVENT_QUEST_START_920004", trigger_count = 0 },
	{ config_id = 1920005, name = "QUEST_FINISH_920005", event = EventType.EVENT_QUEST_FINISH, source = "1104204", condition = "", action = "action_EVENT_QUEST_FINISH_920005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 2,
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
		gadgets = { 920001, 920002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_920003", "QUEST_START_920004", "QUEST_FINISH_920005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_920004", "QUEST_FINISH_920005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_920003(context, evt)
	if 920001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_920003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 920002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_920004(context, evt)
	-- 判断变量"quest"为0
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_920004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002920, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_920005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002920, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end