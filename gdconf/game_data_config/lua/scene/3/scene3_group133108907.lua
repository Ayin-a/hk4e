-- 基础信息
local base_info = {
	group_id = 133108907
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 907001, monster_id = 25010208, pos = { x = -313.871, y = 200.106, z = -639.694 }, rot = { x = 0.000, y = 269.921, z = 0.000 }, level = 75, drop_id = 1000100, disableWander = true, title_id = 10011, special_name_id = 10027, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 907005, gadget_id = 70710399, pos = { x = -319.090, y = 199.430, z = -639.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1907002, name = "ANY_MONSTER_DIE_907002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_907002", action = "action_EVENT_ANY_MONSTER_DIE_907002", trigger_count = 0 },
	{ config_id = 1907003, name = "GROUP_LOAD_907003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_907003", trigger_count = 0 },
	{ config_id = 1907004, name = "TIMER_EVENT_907004", event = EventType.EVENT_TIMER_EVENT, source = "threes", condition = "", action = "action_EVENT_TIMER_EVENT_907004", trigger_count = 0 }
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
		monsters = { 907001 },
		gadgets = { 907005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_907002", "GROUP_LOAD_907003", "TIMER_EVENT_907004" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_907002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133108907) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_907002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "200102") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_907003(context, evt)
	-- 延迟3秒后,向groupId为：133108907的对象,请求一次调用,并将string参数："threes" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133108907, "threes", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_907004(context, evt)
	-- 通知groupid为133108907中,configid为：907001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 907001, 133108907) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end