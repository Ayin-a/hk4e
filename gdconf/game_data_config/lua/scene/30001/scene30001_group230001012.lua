-- 基础信息
local base_info = {
	group_id = 230001012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 21020201, pos = { x = -21.127, y = -0.483, z = -270.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12002, monster_id = 20011201, pos = { x = -3.939, y = -0.484, z = -254.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12003, monster_id = 20011201, pos = { x = -4.652, y = -0.484, z = -247.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12004, monster_id = 20011201, pos = { x = -37.753, y = -0.484, z = -254.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12005, monster_id = 20011201, pos = { x = -35.522, y = -0.483, z = -247.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12006, monster_id = 21010201, pos = { x = -14.659, y = -0.484, z = -266.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12007, monster_id = 21010201, pos = { x = -27.899, y = -0.484, z = -267.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12008, monster_id = 21010601, pos = { x = -9.319, y = -0.484, z = -266.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12009, monster_id = 22010201, pos = { x = -20.599, y = -0.483, z = -268.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12010, monster_id = 21020101, pos = { x = -17.743, y = -0.484, z = -264.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12011, monster_id = 21010201, pos = { x = -22.697, y = -0.484, z = -261.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12012, monster_id = 21010201, pos = { x = -16.954, y = -0.483, z = -261.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12013, monster_id = 21020201, pos = { x = -20.752, y = -0.483, z = -264.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12014, monster_id = 21010701, pos = { x = -24.683, y = -0.484, z = -266.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12015, monster_id = 21010701, pos = { x = -19.072, y = -0.484, z = -266.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12016, monster_id = 21010701, pos = { x = -12.895, y = -0.484, z = -267.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12017, monster_id = 21010201, pos = { x = -15.804, y = -0.483, z = -259.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12018, monster_id = 21010201, pos = { x = -24.178, y = -0.484, z = -259.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12019, monster_id = 22010201, pos = { x = -20.406, y = -0.484, z = -267.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12020, monster_id = 21020201, pos = { x = -19.926, y = -0.484, z = -264.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12021, monster_id = 21010301, pos = { x = -24.438, y = -0.484, z = -259.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12022, monster_id = 21010301, pos = { x = -15.867, y = -0.483, z = -260.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12023, monster_id = 21010501, pos = { x = -30.388, y = -0.484, z = -266.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12024, monster_id = 21010501, pos = { x = -11.075, y = -0.483, z = -267.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12025, gadget_id = 70211012, pos = { x = -20.103, y = -0.484, z = -273.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 12026, gadget_id = 70211002, pos = { x = -13.829, y = -0.484, z = -273.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 12027, gadget_id = 70211002, pos = { x = -25.668, y = -0.483, z = -273.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000024, name = "ANY_MONSTER_DIE_24", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_24", action = "action_EVENT_ANY_MONSTER_DIE_24" },
	{ config_id = 1000044, name = "ANY_MONSTER_DIE_44", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44", action = "action_EVENT_ANY_MONSTER_DIE_44" },
	{ config_id = 1000045, name = "ANY_MONSTER_DIE_45", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45", action = "action_EVENT_ANY_MONSTER_DIE_45" },
	{ config_id = 1000046, name = "ANY_MONSTER_DIE_46", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46", action = "action_EVENT_ANY_MONSTER_DIE_46" },
	{ config_id = 1000047, name = "ANY_MONSTER_DIE_47", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47", action = "action_EVENT_ANY_MONSTER_DIE_47" },
	{ config_id = 1000048, name = "ANY_MONSTER_DIE_48", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48", action = "action_EVENT_ANY_MONSTER_DIE_48" },
	{ config_id = 1000049, name = "ANY_MONSTER_DIE_49", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49", action = "action_EVENT_ANY_MONSTER_DIE_49" }
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
		monsters = { 12001, 12002, 12003, 12004, 12005, 12006, 12007, 12008 },
		gadgets = { 12025, 12026, 12027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24", "ANY_MONSTER_DIE_44" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 12009, 12010, 12011, 12012 },
		gadgets = { 12025, 12026, 12027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24", "ANY_MONSTER_DIE_45", "ANY_MONSTER_DIE_46" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 12013, 12014, 12015, 12016, 12017, 12018 },
		gadgets = { 12025, 12026, 12027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24", "ANY_MONSTER_DIE_47" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 12019, 12020, 12021, 12022, 12023, 12024 },
		gadgets = { 12025, 12026, 12027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24", "ANY_MONSTER_DIE_48", "ANY_MONSTER_DIE_49" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_24(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_24(context, evt)
	-- 调用提示id为 20010301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 20010301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 解锁目标12025
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 12025, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	-- 解锁目标12026
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 12026, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	-- 解锁目标12027
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 12027, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44(context, evt)
	--判断死亡怪物的configid是否为 12001
	if evt.param1 ~= 12001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001021, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45(context, evt)
	--判断死亡怪物的configid是否为 12009
	if evt.param1 ~= 12009 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001020, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46(context, evt)
	--判断死亡怪物的configid是否为 12010
	if evt.param1 ~= 12010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001022, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_47(context, evt)
	--判断死亡怪物的configid是否为 12013
	if evt.param1 ~= 12013 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001021, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48(context, evt)
	--判断死亡怪物的configid是否为 12019
	if evt.param1 ~= 12019 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001020, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49(context, evt)
	--判断死亡怪物的configid是否为 12020
	if evt.param1 ~= 12020 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001022, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end