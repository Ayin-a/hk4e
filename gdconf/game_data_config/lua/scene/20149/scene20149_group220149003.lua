-- 基础信息
local base_info = {
	group_id = 220149003
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
	{ config_id = 3001, gadget_id = 71700450, pos = { x = 449.164, y = 101.092, z = 315.180 }, rot = { x = 0.000, y = 254.600, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70290549, pos = { x = 509.640, y = 106.960, z = 284.270 }, rot = { x = 352.592, y = 44.550, z = 350.152 }, level = 1 },
	{ config_id = 3004, gadget_id = 70290466, pos = { x = 536.735, y = 112.875, z = 317.243 }, rot = { x = 343.000, y = 10.000, z = 0.000 }, level = 1 },
	{ config_id = 3034, gadget_id = 70211121, pos = { x = 493.754, y = 100.003, z = 256.150 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 3005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 536.965, y = 113.533, z = 316.228 } },
	-- 平台掉落点
	{ config_id = 3008, shape = RegionShape.SPHERE, radius = 8, pos = { x = 536.293, y = 115.259, z = 306.881 } }
}

-- 触发器
triggers = {
	-- 开暗门
	{ config_id = 1003003, name = "QUEST_FINISH_3003", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3003", action = "action_EVENT_QUEST_FINISH_3003", trigger_count = 0 },
	{ config_id = 1003005, name = "ENTER_REGION_3005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3005", action = "action_EVENT_ENTER_REGION_3005" },
	-- 录像带A
	{ config_id = 1003006, name = "QUEST_FINISH_3006", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3006", action = "action_EVENT_QUEST_FINISH_3006" },
	-- 启动任务操作台
	{ config_id = 1003007, name = "QUEST_FINISH_3007", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3007", action = "action_EVENT_QUEST_FINISH_3007", trigger_count = 0 },
	-- 平台掉落点
	{ config_id = 1003008, name = "ENTER_REGION_3008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3008", action = "action_EVENT_ENTER_REGION_3008" },
	-- 暗门回滚
	{ config_id = 1003009, name = "QUEST_START_3009", event = EventType.EVENT_QUEST_START, source = "1300212", condition = "condition_EVENT_QUEST_START_3009", action = "action_EVENT_QUEST_START_3009", trigger_count = 0 },
	-- 录像带B
	{ config_id = 1003012, name = "QUEST_FINISH_3012", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3012", action = "action_EVENT_QUEST_FINISH_3012" },
	-- 发现躺倒的人过渡
	{ config_id = 1003017, name = "QUEST_FINISH_3017", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3017", action = "action_EVENT_QUEST_FINISH_3017" },
	-- 科学家对话结束
	{ config_id = 1003020, name = "QUEST_FINISH_3020", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3020", action = "action_EVENT_QUEST_FINISH_3020" },
	-- 录像带C
	{ config_id = 1003028, name = "QUEST_FINISH_3028", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3028", action = "action_EVENT_QUEST_FINISH_3028" },
	-- 任务操作台回滚
	{ config_id = 1003044, name = "QUEST_START_3044", event = EventType.EVENT_QUEST_START, source = "1300215", condition = "condition_EVENT_QUEST_START_3044", action = "action_EVENT_QUEST_START_3044", trigger_count = 0 },
	-- 最终房间对话结束
	{ config_id = 1003051, name = "QUEST_FINISH_3051", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3051", action = "action_EVENT_QUEST_FINISH_3051" },
	-- CS结束
	{ config_id = 1003061, name = "QUEST_FINISH_3061", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3061", action = "action_EVENT_QUEST_FINISH_3061" },
	{ config_id = 1003070, name = "DUNGEON_SETTLE_3070", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_3070", action = "action_EVENT_DUNGEON_SETTLE_3070" }
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
		gadgets = { 3001, 3002, 3004 },
		regions = { 3005 },
		triggers = { "QUEST_FINISH_3003", "ENTER_REGION_3005", "QUEST_FINISH_3006", "QUEST_FINISH_3007", "QUEST_START_3009", "QUEST_FINISH_3012", "QUEST_FINISH_3017", "QUEST_FINISH_3020", "QUEST_FINISH_3028", "QUEST_START_3044", "QUEST_FINISH_3051", "QUEST_FINISH_3061", "DUNGEON_SETTLE_3070" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 3008 },
		triggers = { "ENTER_REGION_3008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_3003(context, evt)
	--检查ID为1300212的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1300212 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3003(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220149002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3005(context, evt)
	if evt.param1 ~= 3005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3005(context, evt)
	-- 调用提示id为 201490101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201490101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3006(context, evt)
	--检查ID为1300206的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1300206 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 8 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3007(context, evt)
	--检查ID为1300215的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1300215 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3007(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3008(context, evt)
	if evt.param1 ~= 3008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3008(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_3009(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,1300212)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_3009(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3012(context, evt)
	--检查ID为1300207的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1300207 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 10 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3017(context, evt)
	--检查ID为1300216的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1300216 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3020(context, evt)
	--检查ID为1300205的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1300205 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3028(context, evt)
	--检查ID为1300208的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1300208 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3028(context, evt)
	-- 重新生成指定group，指定suite
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220149019, 19001) then
	    if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 22 }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	        return -1
	    end
	else
	    if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 11 }) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	        return -1
	    end
	end
	
	-- 改变指定group组220149004中， configid为4005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220149004, 4005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_3044(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,1300215)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_3044(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3051(context, evt)
	--检查ID为1300210的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1300210 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3051(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 16 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220149003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3061(context, evt)
	--检查ID为1300211的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1300211 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3061(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 19 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_3070(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_3070(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220149017, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为3034的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3034 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end