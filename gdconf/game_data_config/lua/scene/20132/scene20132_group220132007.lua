-- 基础信息
local base_info = {
	group_id = 220132007
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
	{ config_id = 7001, gadget_id = 70220103, pos = { x = 535.578, y = 106.922, z = 355.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7002, gadget_id = 70211101, pos = { x = 521.062, y = 18.560, z = 473.049 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true },
	{ config_id = 7003, gadget_id = 70220103, pos = { x = 551.221, y = 93.745, z = 371.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7012, gadget_id = 70220103, pos = { x = 513.475, y = 90.851, z = 371.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007004, name = "TIMER_EVENT_7004", event = EventType.EVENT_TIMER_EVENT, source = "1", condition = "", action = "action_EVENT_TIMER_EVENT_7004" },
	{ config_id = 1007005, name = "QUEST_FINISH_7005", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_7005", action = "action_EVENT_QUEST_FINISH_7005" },
	{ config_id = 1007006, name = "QUEST_FINISH_7006", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_7006", action = "action_EVENT_QUEST_FINISH_7006" },
	{ config_id = 1007007, name = "QUEST_FINISH_7007", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_7007", action = "action_EVENT_QUEST_FINISH_7007" },
	{ config_id = 1007008, name = "QUEST_FINISH_7008", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_7008", action = "action_EVENT_QUEST_FINISH_7008" },
	{ config_id = 1007009, name = "TIMER_EVENT_7009", event = EventType.EVENT_TIMER_EVENT, source = "2", condition = "", action = "action_EVENT_TIMER_EVENT_7009" },
	{ config_id = 1007010, name = "TIMER_EVENT_7010", event = EventType.EVENT_TIMER_EVENT, source = "3", condition = "", action = "action_EVENT_TIMER_EVENT_7010" },
	{ config_id = 1007011, name = "TIMER_EVENT_7011", event = EventType.EVENT_TIMER_EVENT, source = "4", condition = "", action = "action_EVENT_TIMER_EVENT_7011" }
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
		triggers = { "TIMER_EVENT_7004", "QUEST_FINISH_7005", "QUEST_FINISH_7006", "QUEST_FINISH_7007", "QUEST_FINISH_7008", "TIMER_EVENT_7009", "TIMER_EVENT_7010", "TIMER_EVENT_7011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7001, 7003, 7012 },
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
function action_EVENT_TIMER_EVENT_7004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132008, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_7005(context, evt)
	--检查ID为300315的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 300315 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_7005(context, evt)
	
	ScriptLib.SetWeatherAreaState(context, 10134, 1) 
	
	if 0 ~= ScriptLib.EnterWeatherArea(context, 10134) then
	    return -1
	end
	
	-- 延迟6秒后,向groupId为：220132007的对象,请求一次调用,并将string参数："1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220132007, "1", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	ScriptLib.ActivateDungeonCheckPoint(context, 6)
	
	-- 创建id为7002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220132002, EntityType.GADGET, 2021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_7006(context, evt)
	--检查ID为300316的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 300316 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_7006(context, evt)
	
	ScriptLib.SetWeatherAreaState(context, 10134, 0) 
	
	-- 延迟6秒后,向groupId为：220132007的对象,请求一次调用,并将string参数："2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220132007, "2", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	ScriptLib.ActivateDungeonCheckPoint(context, 7)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	if 0 ~= ScriptLib.EnterWeatherArea(context, 10134) then
	    return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_7007(context, evt)
	--检查ID为300317的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 300317 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_7007(context, evt)
	
	ScriptLib.SetWeatherAreaState(context, 10135, 1) 
	
	if 0 ~= ScriptLib.EnterWeatherArea(context, 10135) then
	    return -1
	end
	
	-- 延迟6秒后,向groupId为：220132007的对象,请求一次调用,并将string参数："3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220132007, "3", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220132001, 5)
	
	ScriptLib.ActivateDungeonCheckPoint(context, 9)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_7008(context, evt)
	--检查ID为300318的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 300318 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_7008(context, evt)
	
	ScriptLib.SetWeatherAreaState(context, 10135, 0) 
	ScriptLib.SetWeatherAreaState(context, 10136, 1) 
	
	-- 延迟6秒后,向groupId为：220132007的对象,请求一次调用,并将string参数："4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220132007, "4", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	ScriptLib.ActivateDungeonCheckPoint(context, 11)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context, 10136) then
	    return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220132007, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 11 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132002, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 11 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end