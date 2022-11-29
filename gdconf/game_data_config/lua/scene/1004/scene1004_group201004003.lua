-- 基础信息
local base_info = {
	group_id = 201004003
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
	{ config_id = 3001, gadget_id = 70500000, pos = { x = -10.638, y = 1.957, z = 18.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9028, isOneoff = true, room = 100401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003002, name = "GATHER_3002", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_3002" },
	{ config_id = 1003003, name = "QUEST_START_3003", event = EventType.EVENT_QUEST_START, source = "1010115", condition = "condition_EVENT_QUEST_START_3003", action = "action_EVENT_QUEST_START_3003" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3001 },
		regions = { },
		triggers = { "GATHER_3002", "QUEST_START_3003" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_3002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "201004003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_3003(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 201004003}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_3003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "201004003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end