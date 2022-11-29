-- 基础信息
local base_info = {
	group_id = 220101001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 29030101, pos = { x = 0.000, y = -18.356, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 121, special_name_id = 5, mark_flag = 1 },
	{ config_id = 1004, monster_id = 29030102, pos = { x = 0.000, y = -18.356, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 122, special_name_id = 5, mark_flag = 7 },
	{ config_id = 1009, monster_id = 29030103, pos = { x = 0.000, y = -56.267, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, title_id = 123, special_name_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 42903006, pos = { x = 0.000, y = -18.356, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70710079, pos = { x = 0.033, y = -9.525, z = -57.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 42903007, pos = { x = 0.000, y = -18.356, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 3 },
	{ config_id = 1008, gadget_id = 42903201, pos = { x = 0.000, y = -56.269, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70710169, pos = { x = 0.000, y = -18.750, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70710168, pos = { x = -13.920, y = -15.870, z = -33.810 }, rot = { x = 0.000, y = 22.500, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70710168, pos = { x = 14.070, y = -15.870, z = -34.028 }, rot = { x = 0.000, y = 337.500, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70710168, pos = { x = 33.900, y = -15.870, z = -14.080 }, rot = { x = 0.000, y = 292.500, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70710168, pos = { x = 33.870, y = -15.870, z = 13.880 }, rot = { x = 0.000, y = 247.500, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70710168, pos = { x = 14.010, y = -15.870, z = 33.640 }, rot = { x = 0.000, y = 202.500, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70710168, pos = { x = -33.628, y = -15.870, z = -13.820 }, rot = { x = 0.000, y = 67.500, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70710168, pos = { x = -33.850, y = -15.870, z = 14.070 }, rot = { x = 0.000, y = 112.500, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70710168, pos = { x = -13.890, y = -15.870, z = 33.960 }, rot = { x = 0.000, y = 157.500, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70710166, pos = { x = 0.000, y = 20.920, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70710167, pos = { x = -9.967, y = 9.114, z = -31.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70710167, pos = { x = 9.973, y = 9.114, z = -31.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70710167, pos = { x = -31.677, y = 9.114, z = -9.716 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70710167, pos = { x = -31.677, y = 9.114, z = 9.824 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70710167, pos = { x = 32.373, y = 9.114, z = -9.716 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70710167, pos = { x = 32.373, y = 9.114, z = 9.824 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70710167, pos = { x = 9.973, y = 9.114, z = 31.814 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70710167, pos = { x = -9.967, y = 9.114, z = 31.814 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70710192, pos = { x = 0.000, y = -19.050, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1031, gadget_id = 70710206, pos = { x = 0.000, y = -19.080, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "ANY_MONSTER_DIE_1005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1005", action = "action_EVENT_ANY_MONSTER_DIE_1005" },
	{ config_id = 1001006, name = "ANY_MONSTER_DIE_1006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1006", action = "action_EVENT_ANY_MONSTER_DIE_1006", trigger_count = 0 },
	{ config_id = 1001028, name = "QUEST_FINISH_1028", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_1028", action = "action_EVENT_QUEST_FINISH_1028" },
	{ config_id = 1001029, name = "ANY_MONSTER_DIE_1029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1029", action = "action_EVENT_ANY_MONSTER_DIE_1029" },
	{ config_id = 1001032, name = "TIMER_EVENT_1032", event = EventType.EVENT_TIMER_EVENT, source = "move", condition = "", action = "action_EVENT_TIMER_EVENT_1032", trigger_count = 0 },
	{ config_id = 1001033, name = "TIMER_EVENT_1033", event = EventType.EVENT_TIMER_EVENT, source = "checkheight", condition = "", action = "action_EVENT_TIMER_EVENT_1033", trigger_count = 0 },
	{ config_id = 1001035, name = "TIMER_EVENT_1035", event = EventType.EVENT_TIMER_EVENT, source = "revive", condition = "condition_EVENT_TIMER_EVENT_1035", action = "action_EVENT_TIMER_EVENT_1035", trigger_count = 0 }
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
		-- description = 留空,
		monsters = { },
		gadgets = { 1003, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1030 },
		regions = { },
		triggers = { "QUEST_FINISH_1028", "TIMER_EVENT_1032", "TIMER_EVENT_1033", "TIMER_EVENT_1035" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 一、二阶段,
		monsters = { 1001 },
		gadgets = { 1002, 1003, 1007, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1005", "ANY_MONSTER_DIE_1006", "TIMER_EVENT_1032", "TIMER_EVENT_1033", "TIMER_EVENT_1035" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 三阶段,
		monsters = { 1009 },
		gadgets = { 1003, 1008, 1030, 1031 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1029", "TIMER_EVENT_1032", "TIMER_EVENT_1033", "TIMER_EVENT_1035" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1004, delay_time = 0.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	if 1004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	--播放黑屏CS
	ScriptLib.PlayCutScene(context, 220101001, 0)
	--延迟传送
	ScriptLib.CreateGroupTimerEvent(context, 220101001, "move", 3)
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_1028(context, evt)
	--检查ID为102302的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 102302 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220101001, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1029(context, evt)
	--判断死亡怪物的configid是否为 1009
	if evt.param1 ~= 1009 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1029(context, evt)
	-- 延迟1秒后,向groupId为：220101001的对象,请求一次调用,并将string参数："revive" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220101001, "revive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1032(context, evt)
	ScriptLib.TransPlayerToPos(context,  {uid_list =ScriptLib.GetSceneUidList(context), pos = {x=-0.2, y=-55.7, z=19.2}, radius = 2, rot = {x=0, y=180, z=0}}) 
	-- 延迟0.5秒刷怪
	ScriptLib.CreateMonster(context, { config_id = 1009, delay_time = 0.5 })
	ScriptLib.RefreshGroup(context, { group_id = 220101001, suite = 3, refresh_level_revise = 0, exclude_prev = false })
	ScriptLib.CreateGroupTimerEvent(context, 220101001, "checkheight", 10)
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1033(context, evt)
	ScriptLib.CreateGroupTimerEvent(context, 220101001, "checkheight", 10)
	local uid=ScriptLib.GetSceneUidList(context)
	for i=1,#uid do
	local entity=ScriptLib.GetAvatarEntityIdByUid(context, uid[i])
	local pos=ScriptLib.GetPosByEntityId(context, entity)
	if pos.y>= -20 then
	ScriptLib.MovePlayerToPos(context,  {uid_list ={uid[i]}, pos = {x=-0.2, y=-55.7, z=19.2}, radius = 2, rot = {x=0, y=180, z=0}}) 
	end
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_1035(context, evt)
	local uid=ScriptLib.GetSceneUidList(context)
	if ScriptLib.IsPlayerAllAvatarDie(context, uid[1]) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1035(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "10230401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end