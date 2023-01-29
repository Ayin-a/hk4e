-- 基础信息
local base_info = {
	group_id = 250007003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010201, pos = { x = -222.790, y = -11.000, z = 21.676 }, rot = { x = 0.000, y = 38.720, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 21010201, pos = { x = -227.083, y = -11.000, z = 29.810 }, rot = { x = 0.000, y = 89.832, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3003, monster_id = 21010201, pos = { x = -223.244, y = -11.000, z = 37.098 }, rot = { x = 0.000, y = 135.419, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 21020101, pos = { x = -228.655, y = -11.000, z = 29.821 }, rot = { x = 0.000, y = 92.136, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 21010301, pos = { x = -224.563, y = -11.000, z = 21.678 }, rot = { x = 0.000, y = 36.945, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3006, monster_id = 21010301, pos = { x = -224.749, y = -11.000, z = 36.529 }, rot = { x = 0.000, y = 120.635, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3007, monster_id = 21030101, pos = { x = -229.222, y = -11.000, z = 21.518 }, rot = { x = 0.000, y = 52.547, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3008, monster_id = 21030101, pos = { x = -229.207, y = -11.000, z = 37.077 }, rot = { x = 0.000, y = 118.704, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3009, gadget_id = 70211001, pos = { x = -240.320, y = -11.000, z = 22.666 }, rot = { x = 0.000, y = 89.840, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 3010, gadget_id = 70220010, pos = { x = -224.205, y = -11.000, z = 28.844 }, rot = { x = 0.000, y = 96.048, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ANY_MONSTER_DIE_3", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3", action = "action_EVENT_ANY_MONSTER_DIE_3" },
	{ config_id = 1000004, name = "ANY_MONSTER_LIVE_4", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4", action = "action_EVENT_ANY_MONSTER_LIVE_4", trigger_count = 0 },
	{ config_id = 1000005, name = "CHALLENGE_FAIL_5", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5" },
	{ config_id = 1000006, name = "DUNGEON_SETTLE_6", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_6", action = "action_EVENT_DUNGEON_SETTLE_6" },
	{ config_id = 1000007, name = "ANY_GADGET_DIE_7", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7", action = "action_EVENT_ANY_GADGET_DIE_7", trigger_count = 0 },
	{ config_id = 1000008, name = "TIMER_EVENT_8", event = EventType.EVENT_TIMER_EVENT, source = "createitself", condition = "", action = "action_EVENT_TIMER_EVENT_8", trigger_count = 0 }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3001, 3002, 3003 },
		gadgets = { 3010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3", "ANY_MONSTER_LIVE_4", "CHALLENGE_FAIL_5", "ANY_GADGET_DIE_7", "TIMER_EVENT_8" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4(context, evt)
	-- 创建编号为1003（该挑战的识别id),挑战内容为159的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1003, 159, 60, 250007003, 8, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5(context, evt)
	-- 改变指定group组250007002中， configid为3的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250007002, 3, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250007002, 3, {105}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250007003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_6(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_6(context, evt)
	-- 创建id为3009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_7(context, evt)
	if 3010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7(context, evt)
	-- 延迟20秒后,向groupId为：250007003的对象,请求一次调用,并将string参数："createitself" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250007003, "createitself", 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8(context, evt)
	-- 创建id为3010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end