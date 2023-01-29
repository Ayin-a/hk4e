-- 基础信息
local base_info = {
	group_id = 220006005
}

-- Trigger变量
local defs = {
	gadget_id_1 = 42
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22, monster_id = 21010201, pos = { x = 186.062, y = 57.016, z = 386.420 }, rot = { x = 0.000, y = 31.450, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 23, monster_id = 21010201, pos = { x = 196.962, y = 57.016, z = 386.366 }, rot = { x = 0.000, y = 323.620, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 42, monster_id = 21020201, pos = { x = 191.734, y = 57.000, z = 389.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, disableWander = true },
	{ config_id = 61, monster_id = 21010701, pos = { x = 181.676, y = 57.016, z = 378.620 }, rot = { x = 0.000, y = 87.200, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 68, monster_id = 21010501, pos = { x = 182.998, y = 57.016, z = 383.405 }, rot = { x = 0.000, y = 36.700, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 69, monster_id = 21010501, pos = { x = 183.382, y = 57.017, z = 388.556 }, rot = { x = 0.000, y = 152.300, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 70, monster_id = 21010501, pos = { x = 182.857, y = 57.017, z = 381.163 }, rot = { x = 0.000, y = 33.480, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 91, monster_id = 20011201, pos = { x = 179.252, y = 57.017, z = 370.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 92, monster_id = 20011201, pos = { x = 204.518, y = 57.016, z = 369.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 93, monster_id = 20011201, pos = { x = 204.387, y = 57.016, z = 379.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 94, monster_id = 20011201, pos = { x = 179.185, y = 57.016, z = 379.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 54, gadget_id = 70211011, pos = { x = 191.468, y = 57.100, z = 382.573 }, rot = { x = 0.000, y = 180.800, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 83, gadget_id = 70220005, pos = { x = 181.710, y = 57.016, z = 382.069 }, rot = { x = 0.000, y = 7.749, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000009, name = "DUNGEON_SETTLE_9", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_9", action = "action_EVENT_DUNGEON_SETTLE_9" },
	{ config_id = 1000012, name = "ANY_MONSTER_DIE_12", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12", action = "action_EVENT_ANY_MONSTER_DIE_12" },
	{ config_id = 1000053, name = "ANY_MONSTER_DIE_53", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53", action = "action_EVENT_ANY_MONSTER_DIE_53", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { 22, 23, 42, 61, 68, 69, 70 },
		gadgets = { 83 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_9", "ANY_MONSTER_DIE_12", "ANY_MONSTER_DIE_53" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_9(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_9(context, evt)
	-- 创建id为54的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 54 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 91, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 92, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 93, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 94, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 调用提示id为 1019001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1019001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53(context, evt)
	-- 判断角色数量不少于0
	if evt.type == EventType.EVENT_ANY_MONSTER_DIE and evt.param1 == defs.gadget_id_1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220006005, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end