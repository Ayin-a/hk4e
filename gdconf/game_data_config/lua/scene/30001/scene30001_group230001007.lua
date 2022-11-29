-- 基础信息
local base_info = {
	group_id = 230001007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 22010101, pos = { x = 12.902, y = 0.000, z = -169.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7002, monster_id = 21010701, pos = { x = 12.955, y = -0.483, z = -185.420 }, rot = { x = 0.000, y = 45.800, z = 0.000 }, level = 1 },
	{ config_id = 7003, monster_id = 21010701, pos = { x = -3.155, y = -0.484, z = -169.518 }, rot = { x = 0.000, y = 37.720, z = 0.000 }, level = 1 },
	{ config_id = 7004, monster_id = 21010301, pos = { x = 15.896, y = -0.484, z = -172.793 }, rot = { x = 0.000, y = 23.190, z = 0.000 }, level = 1 },
	{ config_id = 7005, monster_id = 21010301, pos = { x = 10.882, y = -0.483, z = -166.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7006, monster_id = 22010201, pos = { x = 14.971, y = 0.000, z = -170.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7007, monster_id = 22010301, pos = { x = 10.624, y = -0.484, z = -167.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7008, monster_id = 21010301, pos = { x = 9.502, y = -0.484, z = -164.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7009, monster_id = 21010301, pos = { x = 15.995, y = -0.483, z = -165.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7010, monster_id = 21010301, pos = { x = 17.951, y = -0.484, z = -172.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7011, monster_id = 21010301, pos = { x = 10.066, y = -0.484, z = -174.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7012, monster_id = 20020101, pos = { x = 13.911, y = 0.000, z = -169.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7013, monster_id = 20010301, pos = { x = 12.666, y = -0.484, z = -177.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7014, monster_id = 20010301, pos = { x = 19.199, y = -0.484, z = -177.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7015, monster_id = 20010301, pos = { x = 20.964, y = -0.484, z = -168.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7016, monster_id = 20010301, pos = { x = 10.125, y = -0.483, z = -161.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7017, monster_id = 20010601, pos = { x = 12.889, y = 0.000, z = -169.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7018, monster_id = 20010701, pos = { x = 7.467, y = -0.484, z = -163.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7019, monster_id = 20010501, pos = { x = 18.949, y = -0.484, z = -164.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7020, monster_id = 20010501, pos = { x = 9.085, y = -0.484, z = -162.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7021, gadget_id = 70211012, pos = { x = 8.992, y = -0.483, z = -170.037 }, rot = { x = 0.000, y = 275.830, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000022, name = "ANY_MONSTER_DIE_22", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22", action = "action_EVENT_ANY_MONSTER_DIE_22" },
	{ config_id = 1000034, name = "ANY_MONSTER_DIE_34", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34", action = "action_EVENT_ANY_MONSTER_DIE_34" },
	{ config_id = 1000035, name = "ANY_MONSTER_DIE_35", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35", action = "action_EVENT_ANY_MONSTER_DIE_35" },
	{ config_id = 1000036, name = "ANY_MONSTER_DIE_36", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36", action = "action_EVENT_ANY_MONSTER_DIE_36" },
	{ config_id = 1000037, name = "ANY_MONSTER_DIE_37", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37", action = "action_EVENT_ANY_MONSTER_DIE_37" },
	{ config_id = 1000038, name = "ANY_MONSTER_DIE_38", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38", action = "action_EVENT_ANY_MONSTER_DIE_38" },
	{ config_id = 1000039, name = "ANY_MONSTER_DIE_39", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39", action = "action_EVENT_ANY_MONSTER_DIE_39" }
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
	rand_suite = true
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
		monsters = { 7001, 7002, 7003, 7004, 7005 },
		gadgets = { 7021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22", "ANY_MONSTER_DIE_34" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 7006, 7007, 7008, 7009, 7010, 7011 },
		gadgets = { 7021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22", "ANY_MONSTER_DIE_35", "ANY_MONSTER_DIE_36" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 7012, 7013, 7014, 7015, 7016 },
		gadgets = { 7021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22", "ANY_MONSTER_DIE_37" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 7017, 7018, 7019, 7020 },
		gadgets = { 7021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22(context, evt)
	-- 解锁目标7021
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 7021, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	-- 调用提示id为 20010301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34(context, evt)
	--判断死亡怪物的configid是否为 7001
	if evt.param1 ~= 7001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001021, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35(context, evt)
	--判断死亡怪物的configid是否为 7006
	if evt.param1 ~= 7006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001020, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36(context, evt)
	--判断死亡怪物的configid是否为 7007
	if evt.param1 ~= 7007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001022, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37(context, evt)
	--判断死亡怪物的configid是否为 7012
	if evt.param1 ~= 7012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001021, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38(context, evt)
	--判断死亡怪物的configid是否为 7017
	if evt.param1 ~= 7017 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001020, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39(context, evt)
	--判断死亡怪物的configid是否为 7018
	if evt.param1 ~= 7018 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001022, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end