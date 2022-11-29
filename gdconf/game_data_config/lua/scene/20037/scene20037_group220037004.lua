-- 基础信息
local base_info = {
	group_id = 220037004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4002, monster_id = 23020101, pos = { x = 284.314, y = 42.059, z = 3.721 }, rot = { x = 0.000, y = 276.541, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true, title_id = 10010, special_name_id = 10026 },
	{ config_id = 4003, monster_id = 23010401, pos = { x = 282.005, y = 42.056, z = 18.598 }, rot = { x = 0.000, y = 186.668, z = 0.000 }, level = 1 },
	{ config_id = 4004, monster_id = 23010401, pos = { x = 281.330, y = 42.057, z = -9.860 }, rot = { x = 0.000, y = 338.811, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4009, gadget_id = 70350006, pos = { x = 281.629, y = 42.963, z = -13.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4010, gadget_id = 70350006, pos = { x = 294.174, y = 42.943, z = -13.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4011, gadget_id = 70350006, pos = { x = 281.856, y = 43.060, z = 21.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4012, gadget_id = 70350006, pos = { x = 294.186, y = 42.950, z = 21.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4001, shape = RegionShape.SPHERE, radius = 20, pos = { x = 295.962, y = 42.133, z = 3.463 } }
}

-- 触发器
triggers = {
	{ config_id = 1004001, name = "ENTER_REGION_4001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4001", action = "action_EVENT_ENTER_REGION_4001" },
	{ config_id = 1004005, name = "SPECIFIC_MONSTER_HP_CHANGE_4005", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "4002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4005", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4005" },
	{ config_id = 1004006, name = "SPECIFIC_MONSTER_HP_CHANGE_4006", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "4002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4006", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4006" },
	{ config_id = 1004007, name = "TIMER_EVENT_4007", event = EventType.EVENT_TIMER_EVENT, source = "CheckAvatarDie0", condition = "", action = "action_EVENT_TIMER_EVENT_4007", trigger_count = 0 },
	{ config_id = 1004008, name = "ANY_MONSTER_DIE_4008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4008", action = "action_EVENT_ANY_MONSTER_DIE_4008" },
	{ config_id = 1004013, name = "TIMER_EVENT_4013", event = EventType.EVENT_TIMER_EVENT, source = "CheckAvatarDie1", condition = "", action = "action_EVENT_TIMER_EVENT_4013", trigger_count = 0 }
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
		gadgets = { 4009, 4010, 4011, 4012 },
		regions = { 4001 },
		triggers = { "ENTER_REGION_4001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4002 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_4005", "SPECIFIC_MONSTER_HP_CHANGE_4006", "TIMER_EVENT_4007", "ANY_MONSTER_DIE_4008", "TIMER_EVENT_4013" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 4004 },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_ENTER_REGION_4001(context, evt)
	if evt.param1 ~= 4001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220037004, 2)
	
	-- 改变指定group组220037002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220037002中， configid为2003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220037002中， configid为2004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220037002中， configid为2005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=295,y=42,z=3}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110176, pos, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012213") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组220037009中， configid为9003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037009, 9003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4005(context, evt)
	--[[判断指定configid的怪物的血量小于%70时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 70 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220037004, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=285,y=42,z=1.27}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110176, pos, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 将configid为 4011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220037009中， configid为9003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037009, 9003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=284,y=42,z=3}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 200370201, pos, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4006(context, evt)
	--[[判断指定configid的怪物的血量小于%30时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 30 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4006(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220037004, 4)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=285,y=42,z=1.27}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110176, pos, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 将configid为 4009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4007(context, evt)
	local uid=ScriptLib.GetSceneUidList(context)
	if ScriptLib.IsPlayerAllAvatarDie(context,uid[1]) then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220037004, "CheckAvatarDie1", 2) then
			ScriptLib.PrintContextLog(context, "@@LUA_WARNING : create_timerevent_by_group")
			return -1
		end
	
	else
		
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "1012202") then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
				  return -1
			end
		
			-- 改变指定group组220037002中， configid为2002的gadget的state
				if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2002, GadgetState.GearStart) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
					return -1
				end 
			
			-- 改变指定group组220037002中， configid为2003的gadget的state
				if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2003, GadgetState.GearStart) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
					return -1
				end 
			
			-- 改变指定group组220037002中， configid为2004的gadget的state
				if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2004, GadgetState.GearStart) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
					return -1
				end 
			
			-- 改变指定group组220037002中， configid为2005的gadget的state
				if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2005, GadgetState.GearStart) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
					return -1
				end 
	
				if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220037004, "CheckAvatarDie1") then
					ScriptLib.PrintContextLog(context, "@@LUA_WARNING:cancel_timerevent_by_group")
					return -1
				end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	-- 延迟1秒后,向groupId为：220037004的对象,请求一次调用,并将string参数："CheckAvatarDie0" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220037004, "CheckAvatarDie0", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4013(context, evt)
	local uid=ScriptLib.GetSceneUidList(context)
	if ScriptLib.IsPlayerAllAvatarDie(context,uid[1]) then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220037004, "CheckAvatarDie0", 2) then
			ScriptLib.PrintContextLog(context, "@@LUA_WARNING : create_timerevent_by_group")
			return -1
		end
	
	else
		
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "1012202") then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
				  return -1
			end
		
			-- 改变指定group组220037002中， configid为2002的gadget的state
				if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2002, GadgetState.GearStart) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
					return -1
				end 
			
			-- 改变指定group组220037002中， configid为2003的gadget的state
				if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2003, GadgetState.GearStart) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
					return -1
				end 
			
			-- 改变指定group组220037002中， configid为2004的gadget的state
				if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2004, GadgetState.GearStart) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
					return -1
				end 
			
			-- 改变指定group组220037002中， configid为2005的gadget的state
				if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037002, 2005, GadgetState.GearStart) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
					return -1
				end 
	
				if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220037004, "CheckAvatarDie0") then
					ScriptLib.PrintContextLog(context, "@@LUA_WARNING:cancel_timerevent_by_group")
					return -1
				end
	end
	
	return 0
end