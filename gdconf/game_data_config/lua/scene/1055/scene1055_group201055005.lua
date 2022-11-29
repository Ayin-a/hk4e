-- 基础信息
local base_info = {
	group_id = 201055005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 24010101, pos = { x = 97.536, y = 47.940, z = -69.710 }, rot = { x = 0.000, y = 279.087, z = 0.000 }, level = 1, disableWander = true, affix = { 1021 }, pose_id = 101 },
	{ config_id = 5002, monster_id = 24010101, pos = { x = 97.900, y = 47.932, z = -58.790 }, rot = { x = 0.000, y = 234.432, z = 0.000 }, level = 1, disableWander = true, affix = { 1021 }, pose_id = 101 },
	{ config_id = 5007, monster_id = 24010101, pos = { x = 85.469, y = 47.852, z = -49.096 }, rot = { x = 2.335, y = 184.014, z = 4.028 }, level = 1, affix = { 1007, 1021 }, pose_id = 100 },
	{ config_id = 5008, monster_id = 24010101, pos = { x = 85.354, y = 47.852, z = -79.495 }, rot = { x = 0.000, y = 351.534, z = 0.000 }, level = 1, affix = { 1007, 1021 }, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5005, gadget_id = 70350004, pos = { x = 98.406, y = 48.317, z = -45.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70350004, pos = { x = 97.917, y = 48.262, z = -84.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5010, gadget_id = 70950010, pos = { x = 68.234, y = 47.852, z = -64.104 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5011, gadget_id = 70710198, pos = { x = 88.624, y = 48.310, z = -67.939 }, rot = { x = 355.903, y = 332.454, z = 357.789 }, level = 1 },
	{ config_id = 5012, gadget_id = 70710199, pos = { x = 91.004, y = 48.480, z = -72.039 }, rot = { x = 0.000, y = 252.913, z = 0.000 }, level = 1 },
	{ config_id = 5013, gadget_id = 70710200, pos = { x = 82.645, y = 48.360, z = -74.348 }, rot = { x = 0.000, y = 68.303, z = 0.000 }, level = 1 },
	{ config_id = 5014, gadget_id = 70710201, pos = { x = 95.060, y = 48.470, z = -57.640 }, rot = { x = 2.314, y = 11.545, z = 2.222 }, level = 1 },
	{ config_id = 5018, gadget_id = 70710199, pos = { x = 78.430, y = 48.276, z = -56.760 }, rot = { x = 0.000, y = 237.267, z = 0.000 }, level = 1 },
	{ config_id = 5019, gadget_id = 70710200, pos = { x = 103.080, y = 48.260, z = -59.860 }, rot = { x = 0.000, y = 312.588, z = 0.000 }, level = 1 },
	{ config_id = 5021, gadget_id = 70211021, pos = { x = 97.619, y = 47.940, z = -70.049 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 11, drop_tag = "战斗高级璃月", isOneoff = true, persistent = true },
	{ config_id = 5023, gadget_id = 70900201, pos = { x = 101.476, y = 49.239, z = -44.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5024, shape = RegionShape.SPHERE, radius = 5, pos = { x = 98.263, y = 47.774, z = -50.338 } }
}

-- 触发器
triggers = {
	{ config_id = 1005003, name = "CHALLENGE_SUCCESS_5003", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5003" },
	{ config_id = 1005004, name = "MONSTER_BATTLE_5004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_5004", action = "action_EVENT_MONSTER_BATTLE_5004" },
	{ config_id = 1005009, name = "TIMER_EVENT_5009", event = EventType.EVENT_TIMER_EVENT, source = "createTime", condition = "", action = "action_EVENT_TIMER_EVENT_5009" },
	{ config_id = 1005015, name = "TIMER_EVENT_5015", event = EventType.EVENT_TIMER_EVENT, source = "timeEnd", condition = "", action = "action_EVENT_TIMER_EVENT_5015" },
	{ config_id = 1005016, name = "TIMER_EVENT_5016", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_5016" },
	{ config_id = 1005017, name = "TIMER_EVENT_5017", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_5017" },
	{ config_id = 1005020, name = "CHALLENGE_FAIL_5020", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5020" },
	{ config_id = 1005022, name = "QUEST_FINISH_5022", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_5022", action = "action_EVENT_QUEST_FINISH_5022" },
	{ config_id = 1005024, name = "ENTER_REGION_5024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5024", action = "action_EVENT_ENTER_REGION_5024" }
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
		monsters = { 5001, 5002 },
		gadgets = { 5005, 5006, 5010 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5003", "MONSTER_BATTLE_5004", "TIMER_EVENT_5009", "TIMER_EVENT_5015", "TIMER_EVENT_5016", "TIMER_EVENT_5017", "CHALLENGE_FAIL_5020", "QUEST_FINISH_5022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 5007, 5008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 5023 },
		regions = { 5024 },
		triggers = { "ENTER_REGION_5024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "20105500501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 5005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201055005, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201055005, 4)
	
	-- 创建id为5011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201055005, EntityType.GADGET, 5010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_5004(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_5004(context, evt)
	-- 调用提示id为 10550301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10550301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建编号为100（该挑战的识别id),挑战内容为56的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 100, 56, 60, 0, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 延迟30秒后,向groupId为：201055005的对象,请求一次调用,并将string参数："createTime" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055005, "createTime", 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟12秒后,向groupId为：201055005的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055005, "time1", 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟33秒后,向groupId为：201055005的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055005, "time3", 33) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟50秒后,向groupId为：201055005的对象,请求一次调用,并将string参数："timeEnd" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055005, "timeEnd", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 通知groupid为201055005中,configid为：5001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 5001, 201055005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为201055005中,configid为：5002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 5002, 201055005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5015(context, evt)
	-- 终止识别id为100的挑战，并判定成功
		ScriptLib.StopChallenge(context, 100, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5016(context, evt)
	-- 调用提示id为 10550303 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10550303) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5017(context, evt)
	-- 调用提示id为 10550307 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10550307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5020(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 201055005, "createTime") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 201055005, "timeEnd") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 201055005, "time1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 201055005, "time3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201055005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_5022(context, evt)
	--检查ID为1101208的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1101208 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_5022(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201055005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5024(context, evt)
	if evt.param1 ~= 5024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end