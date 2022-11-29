-- 基础信息
local base_info = {
	group_id = 230001009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 22010201, pos = { x = 66.772, y = -1.091, z = -218.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9002, monster_id = 20011001, pos = { x = 77.169, y = -1.107, z = -227.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9003, monster_id = 20011001, pos = { x = 79.279, y = -1.149, z = -211.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9004, monster_id = 20011001, pos = { x = 56.675, y = -1.006, z = -211.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9005, monster_id = 20011001, pos = { x = 53.030, y = -1.009, z = -226.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9006, monster_id = 22010301, pos = { x = 67.574, y = -1.016, z = -222.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9007, monster_id = 20010801, pos = { x = 61.768, y = -1.006, z = -217.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9008, monster_id = 20010801, pos = { x = 60.546, y = -1.043, z = -213.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9009, monster_id = 20010801, pos = { x = 66.297, y = -1.010, z = -212.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9010, monster_id = 20010801, pos = { x = 72.683, y = -1.006, z = -216.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9011, monster_id = 20010801, pos = { x = 70.131, y = -1.056, z = -213.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9012, monster_id = 21020201, pos = { x = 66.663, y = -1.141, z = -220.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9013, monster_id = 21010301, pos = { x = 63.161, y = -1.022, z = -216.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9014, monster_id = 21010301, pos = { x = 70.421, y = -1.045, z = -218.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9015, monster_id = 21010301, pos = { x = 70.553, y = -1.066, z = -215.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9016, monster_id = 21010301, pos = { x = 62.445, y = -1.002, z = -214.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9017, monster_id = 21020101, pos = { x = 66.823, y = -1.087, z = -218.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9018, monster_id = 20011001, pos = { x = 63.076, y = -1.020, z = -216.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9019, monster_id = 20011001, pos = { x = 69.961, y = -1.057, z = -213.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9020, monster_id = 20011001, pos = { x = 61.245, y = -1.024, z = -212.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9021, monster_id = 20011001, pos = { x = 63.691, y = -1.011, z = -212.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9022, monster_id = 21010601, pos = { x = 71.430, y = -1.002, z = -222.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9023, gadget_id = 70211002, pos = { x = 55.822, y = -1.113, z = -179.637 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 9024, gadget_id = 70211012, pos = { x = 65.699, y = -1.109, z = -224.756 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 9025, gadget_id = 70211021, pos = { x = 61.665, y = -1.028, z = -224.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true },
	{ config_id = 9026, gadget_id = 70211021, pos = { x = 70.331, y = -1.074, z = -224.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000023, name = "ANY_MONSTER_DIE_23", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23", action = "action_EVENT_ANY_MONSTER_DIE_23" },
	{ config_id = 1000040, name = "ANY_MONSTER_DIE_40", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40", action = "action_EVENT_ANY_MONSTER_DIE_40" },
	{ config_id = 1000041, name = "ANY_MONSTER_DIE_41", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_41", action = "action_EVENT_ANY_MONSTER_DIE_41" },
	{ config_id = 1000042, name = "ANY_MONSTER_DIE_42", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42", action = "action_EVENT_ANY_MONSTER_DIE_42" },
	{ config_id = 1000043, name = "ANY_MONSTER_DIE_43", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43", action = "action_EVENT_ANY_MONSTER_DIE_43" }
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
		monsters = { 9001, 9002, 9003, 9004, 9005 },
		gadgets = { 9023, 9024, 9025, 9026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23", "ANY_MONSTER_DIE_40" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 9006, 9007, 9008, 9009, 9010, 9011 },
		gadgets = { 9023, 9024, 9025, 9026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23", "ANY_MONSTER_DIE_41" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 9012, 9013, 9014, 9015, 9016 },
		gadgets = { 9023, 9024, 9025, 9026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23", "ANY_MONSTER_DIE_42" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 9017, 9018, 9019, 9020, 9021, 9022 },
		gadgets = { 9023, 9024, 9025, 9026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23", "ANY_MONSTER_DIE_43" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23(context, evt)
	-- 解锁目标9023
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 9023, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	-- 解锁目标9024
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 9024, state = GadgetState.Default }) then
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
function condition_EVENT_ANY_MONSTER_DIE_40(context, evt)
	--判断死亡怪物的configid是否为 9001
	if evt.param1 ~= 9001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001021, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_41(context, evt)
	--判断死亡怪物的configid是否为 9006
	if evt.param1 ~= 9006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_41(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001021, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42(context, evt)
	--判断死亡怪物的configid是否为 9012
	if evt.param1 ~= 9012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001021, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43(context, evt)
	--判断死亡怪物的configid是否为 9017
	if evt.param1 ~= 9017 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 230001021, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end