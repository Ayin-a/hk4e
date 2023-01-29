-- 基础信息
local base_info = {
	group_id = 220142010
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
	{ config_id = 10001, gadget_id = 71700384, pos = { x = 77.708, y = 2.077, z = 98.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10006, gadget_id = 70710470, pos = { x = 77.708, y = 2.077, z = 98.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 10007, gadget_id = 70360001, pos = { x = 76.509, y = 9.064, z = 104.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010002, name = "LEVEL_TAG_CHANGE_10002", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_10002", trigger_count = 0 },
	{ config_id = 1010003, name = "GROUP_LOAD_10003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_10003", trigger_count = 0 },
	{ config_id = 1010004, name = "QUEST_START_10004", event = EventType.EVENT_QUEST_START, source = "4006524", condition = "", action = "action_EVENT_QUEST_START_10004", trigger_count = 0 },
	{ config_id = 1010005, name = "QUEST_FINISH_10005", event = EventType.EVENT_QUEST_FINISH, source = "4006507", condition = "", action = "action_EVENT_QUEST_FINISH_10005", trigger_count = 0 },
	{ config_id = 1010008, name = "QUEST_FINISH_10008", event = EventType.EVENT_QUEST_FINISH, source = "4006524", condition = "", action = "action_EVENT_QUEST_FINISH_10008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true },
	{ config_id = 2, name = "letter", value = 0, no_refresh = true }
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
		gadgets = { 10007 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_10002", "GROUP_LOAD_10003", "QUEST_START_10004", "QUEST_FINISH_10005", "QUEST_FINISH_10008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 10001 },
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

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_10002(context, evt)
	if ScriptLib.CheckSceneTag(context, 20142,1051 ) and ScriptLib.GetGroupVariableValue(context, "start") == 1 then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 220142010, 3)
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220142010, config_id=10006, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10003(context, evt)
	if ScriptLib.CheckSceneTag(context, 20142,1051 ) and ScriptLib.GetGroupVariableValue(context, "start") == 1 then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 220142010, 3)
		
		ScriptLib.RemoveExtraGroupSuite(context, 220142010, 2)
	end
	
	if ScriptLib.CheckSceneTag(context, 20142,1051 ) and ScriptLib.GetGroupVariableValue(context, "letter") == 0 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 220142010, 2)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_10004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220142010, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_10005(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220142010, 3)
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220142010, monsters = {}, gadgets = {10006} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_10008(context, evt)
	-- 将本组内变量名为 "letter" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "letter", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220142010, EntityType.GADGET, 10006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end