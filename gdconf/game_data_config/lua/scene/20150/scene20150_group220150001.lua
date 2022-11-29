-- 基础信息
local base_info = {
	group_id = 220150001
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
	{ config_id = 1003, gadget_id = 70290509, pos = { x = 541.990, y = 129.979, z = 728.873 }, rot = { x = 1.418, y = 109.494, z = 258.160 }, level = 1 },
	{ config_id = 1004, gadget_id = 70710829, pos = { x = 513.720, y = 231.170, z = 599.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "QUEST_FINISH_1001", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_1001", action = "action_EVENT_QUEST_FINISH_1001", trigger_count = 0 },
	{ config_id = 1001005, name = "QUEST_START_1005", event = EventType.EVENT_QUEST_START, source = "", condition = "condition_EVENT_QUEST_START_1005", action = "action_EVENT_QUEST_START_1005", trigger_count = 0 },
	{ config_id = 1001006, name = "QUEST_FINISH_1006", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_1006", action = "action_EVENT_QUEST_FINISH_1006", trigger_count = 0 },
	{ config_id = 1001007, name = "QUEST_START_1007", event = EventType.EVENT_QUEST_START, source = "", condition = "condition_EVENT_QUEST_START_1007", action = "action_EVENT_QUEST_START_1007", trigger_count = 0 }
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
		gadgets = { 1003 },
		regions = { },
		triggers = { "QUEST_FINISH_1001", "QUEST_START_1005", "QUEST_FINISH_1006", "QUEST_START_1007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1004 },
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
function condition_EVENT_QUEST_FINISH_1001(context, evt)
	--检查ID为300006的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 300006 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1001(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220150001, EntityType.GADGET, 1003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_1005(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,300007)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_1005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220150001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_1006(context, evt)
	--检查ID为300007的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 300007 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220150001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_1007(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,300005)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_1007(context, evt)
	-- 创建id为1003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end