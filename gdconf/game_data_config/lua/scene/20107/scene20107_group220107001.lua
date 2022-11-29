-- 基础信息
local base_info = {
	group_id = 220107001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 29040111, pos = { x = 518.625, y = 74.167, z = 461.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1102 }, mark_flag = 16 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1003, gadget_id = 70330048, pos = { x = 548.030, y = 87.810, z = 406.290 }, rot = { x = 1.822, y = 1.420, z = 2.656 }, level = 1, mark_flag = 1 },
	{ config_id = 1004, gadget_id = 70330049, pos = { x = 471.598, y = 113.396, z = 423.989 }, rot = { x = 359.278, y = 343.022, z = 355.080 }, level = 1, mark_flag = 1 },
	{ config_id = 1005, gadget_id = 70330050, pos = { x = 522.270, y = 127.400, z = 476.040 }, rot = { x = 353.003, y = 267.852, z = 3.454 }, level = 1, mark_flag = 1 },
	{ config_id = 1006, gadget_id = 70330050, pos = { x = 556.080, y = 124.650, z = 449.190 }, rot = { x = 356.715, y = 358.599, z = 23.112 }, level = 1, mark_flag = 1 },
	{ config_id = 1007, gadget_id = 70330050, pos = { x = 483.740, y = 125.700, z = 382.920 }, rot = { x = 325.734, y = 83.626, z = 9.938 }, level = 1, mark_flag = 1 },
	{ config_id = 1008, gadget_id = 70330051, pos = { x = 539.020, y = 77.200, z = 516.340 }, rot = { x = 352.808, y = 268.267, z = 73.931 }, level = 1, mark_flag = 1 },
	{ config_id = 1009, gadget_id = 70330052, pos = { x = 559.130, y = 81.450, z = 498.940 }, rot = { x = 336.852, y = 46.765, z = 353.780 }, level = 1, mark_flag = 1 },
	{ config_id = 1010, gadget_id = 70330052, pos = { x = 497.720, y = 80.980, z = 514.080 }, rot = { x = 345.542, y = 351.833, z = 328.828 }, level = 1, mark_flag = 1 },
	{ config_id = 1011, gadget_id = 70330052, pos = { x = 468.860, y = 79.210, z = 434.530 }, rot = { x = 351.879, y = 270.528, z = 344.000 }, level = 1, mark_flag = 1 },
	{ config_id = 1012, gadget_id = 70330053, pos = { x = 456.240, y = 82.880, z = 472.390 }, rot = { x = 36.307, y = 13.571, z = 307.568 }, level = 1, mark_flag = 1 },
	{ config_id = 1013, gadget_id = 70211121, pos = { x = 519.569, y = 74.192, z = 488.466 }, rot = { x = 0.000, y = 183.398, z = 0.000 }, level = 11, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "ANY_MONSTER_DIE_1002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1002", action = "action_EVENT_ANY_MONSTER_DIE_1002" },
	-- 挑战成功
	{ config_id = 1001014, name = "DUNGEON_SETTLE_1014", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_1014", action = "action_EVENT_DUNGEON_SETTLE_1014" },
	-- 挑战失败
	{ config_id = 1001015, name = "DUNGEON_SETTLE_1015", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_1015", action = "action_EVENT_DUNGEON_SETTLE_1015" },
	{ config_id = 1001016, name = "TIMER_EVENT_1016", event = EventType.EVENT_TIMER_EVENT, source = "MonsterDie", condition = "condition_EVENT_TIMER_EVENT_1016", action = "action_EVENT_TIMER_EVENT_1016" }
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
		monsters = { 1001 },
		gadgets = { 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1002", "DUNGEON_SETTLE_1014", "DUNGEON_SETTLE_1015", "TIMER_EVENT_1016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1013 },
		regions = { },
		triggers = { },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	-- 延迟5秒后,向groupId为：220107001的对象,请求一次调用,并将string参数："MonsterDie" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220107001, "MonsterDie", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_1014(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_1014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220107001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_1015(context, evt)
	if 0 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_1015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220107001, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_1016(context, evt)
	local uid=ScriptLib.GetSceneUidList(context)
	if ScriptLib.IsPlayerAllAvatarDie(context, uid[1]) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220107001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end