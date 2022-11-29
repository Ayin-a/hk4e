-- 基础信息
local base_info = {
	group_id = 220022007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23, monster_id = 22010101, pos = { x = 198.125, y = 42.016, z = 121.025 }, rot = { x = 0.000, y = 271.874, z = 0.000 }, level = 1, affix = { 1007, 1008, 1010 } },
	{ config_id = 7001, monster_id = 21010501, pos = { x = 201.501, y = 44.444, z = 106.091 }, rot = { x = 0.000, y = 345.002, z = 0.000 }, level = 1, disableWander = true, affix = { 1006, 1007, 1008, 1018 }, pose_id = 32 },
	{ config_id = 7002, monster_id = 21010301, pos = { x = 196.533, y = 42.016, z = 109.952 }, rot = { x = 0.366, y = 331.955, z = 0.443 }, level = 1, disableWander = true, affix = { 1006, 1007, 1008, 1018 } },
	{ config_id = 7003, monster_id = 21010301, pos = { x = 200.425, y = 42.016, z = 114.409 }, rot = { x = 0.000, y = 312.345, z = 0.000 }, level = 1, disableWander = true, affix = { 1006, 1007, 1008, 1018 } },
	{ config_id = 7004, monster_id = 21010301, pos = { x = 199.360, y = 42.017, z = 111.219 }, rot = { x = 0.000, y = 326.936, z = 0.000 }, level = 1, disableWander = true, affix = { 1006, 1007, 1008, 1018 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11, gadget_id = 70350002, pos = { x = 190.461, y = 41.969, z = 137.667 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 12, gadget_id = 70211022, pos = { x = 190.386, y = 42.100, z = 121.021 }, rot = { x = 0.000, y = 269.271, z = 0.000 }, level = 6, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 7, shape = RegionShape.SPHERE, radius = 5, pos = { x = 190.154, y = 42.644, z = 121.067 } },
	{ config_id = 7007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 190.154, y = 42.644, z = 121.067 } }
}

-- 触发器
triggers = {
	{ config_id = 1000007, name = "ENTER_REGION_7", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7", action = "action_EVENT_ENTER_REGION_7", forbid_guest = false },
	{ config_id = 1000010, name = "ANY_MONSTER_DIE_10", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10", action = "action_EVENT_ANY_MONSTER_DIE_10" },
	{ config_id = 1007005, name = "ANY_MONSTER_DIE_7005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7005", action = "action_EVENT_ANY_MONSTER_DIE_7005" },
	{ config_id = 1007006, name = "TIMER_EVENT_7006", event = EventType.EVENT_TIMER_EVENT, source = "delaykill", condition = "", action = "action_EVENT_TIMER_EVENT_7006" },
	{ config_id = 1007007, name = "ENTER_REGION_7007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7007", action = "action_EVENT_ENTER_REGION_7007", forbid_guest = false }
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
		monsters = { },
		gadgets = { 11, 12 },
		regions = { 7, 7007 },
		triggers = { "ENTER_REGION_7", "ANY_MONSTER_DIE_10", "ANY_MONSTER_DIE_7005", "TIMER_EVENT_7006", "ENTER_REGION_7007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_7(context, evt)
	if evt.param1 ~= 7 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7(context, evt)
	-- 将configid为 11 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220022005中， configid为7的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220022005, 7, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7001, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7002, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7004, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10(context, evt)
	if 23 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10(context, evt)
	-- 将本组内变量名为 "iskill" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "iskill", 1, 220022010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：220022007的对象,请求一次调用,并将string参数："delaykill" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220022007, "delaykill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220022007") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 解锁目标12
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 12, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7005(context, evt)
	-- 调用提示id为 200220401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200220401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 23, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220022010, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7006(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220022010, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7007(context, evt)
	if evt.param1 ~= 7007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7007(context, evt)
	-- 将configid为 12 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end