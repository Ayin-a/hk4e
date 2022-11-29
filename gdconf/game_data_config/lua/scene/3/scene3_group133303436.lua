-- 基础信息
local base_info = {
	group_id = 133303436
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
	{ config_id = 436001, gadget_id = 70330255, pos = { x = -1368.433, y = 266.157, z = 3576.420 }, rot = { x = 356.576, y = 91.020, z = 359.515 }, level = 27, area_id = 23 },
	{ config_id = 436002, gadget_id = 70330255, pos = { x = -1344.544, y = 261.418, z = 3572.370 }, rot = { x = 3.557, y = 130.542, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 436003, gadget_id = 70330255, pos = { x = -1327.105, y = 253.131, z = 3555.290 }, rot = { x = 31.337, y = 153.615, z = 0.012 }, level = 30, area_id = 23 },
	{ config_id = 436004, gadget_id = 70330255, pos = { x = -1304.772, y = 204.726, z = 3514.898 }, rot = { x = 350.561, y = 12.551, z = 357.676 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1436005, name = "QUEST_START_436005", event = EventType.EVENT_QUEST_START, source = "7307018", condition = "", action = "action_EVENT_QUEST_START_436005", trigger_count = 0 },
	{ config_id = 1436017, name = "GROUP_LOAD_436017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_436017", action = "action_EVENT_GROUP_LOAD_436017" },
	{ config_id = 1436018, name = "GROUP_LOAD_436018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_436018", action = "action_EVENT_GROUP_LOAD_436018", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_436005", "GROUP_LOAD_436017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 436001, 436002, 436003, 436004 },
		regions = { },
		triggers = { "GROUP_LOAD_436018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

-- 触发操作
function action_EVENT_QUEST_START_436005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303436, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_436017(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7307018)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_436017(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303436, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_436018(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7307018)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_436018(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303436, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303436, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end