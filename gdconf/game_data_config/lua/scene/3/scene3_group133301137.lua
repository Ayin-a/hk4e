-- 基础信息
local base_info = {
	group_id = 133301137
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
	{ config_id = 137001, gadget_id = 70290538, pos = { x = -864.342, y = 40.740, z = 3206.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330100032, start_route = false, persistent = true, area_id = 23 },
	{ config_id = 137005, gadget_id = 70360001, pos = { x = -871.796, y = 42.118, z = 3156.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 任务7307721完成下降水面
	{ config_id = 1137002, name = "QUEST_FINISH_137002", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_137002", action = "action_EVENT_QUEST_FINISH_137002", trigger_count = 0 },
	-- 保底水片下降
	{ config_id = 1137003, name = "GROUP_LOAD_137003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_137003", action = "action_EVENT_GROUP_LOAD_137003", trigger_count = 0 },
	-- 任务7307727完成下降水面
	{ config_id = 1137004, name = "QUEST_FINISH_137004", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_137004", action = "action_EVENT_QUEST_FINISH_137004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "move", value = 0, no_refresh = true }
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
		gadgets = { 137001 },
		regions = { },
		triggers = { "QUEST_FINISH_137002", "GROUP_LOAD_137003", "QUEST_FINISH_137004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 137005 },
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
function condition_EVENT_QUEST_FINISH_137002(context, evt)
	--检查ID为7307721的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7307721 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_137002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 137001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "move" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "move", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_137003(context, evt)
	-- 判断变量"move"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "move", 133301137) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_137003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301137, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_137004(context, evt)
	--检查ID为7307727的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7307727 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_137004(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 137001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "move" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "move", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end