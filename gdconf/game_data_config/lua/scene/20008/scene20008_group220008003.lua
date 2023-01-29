-- 基础信息
local base_info = {
	group_id = 220008003
}

-- Trigger变量
local defs = {
	gadget_id_1 = 193,
	gadget_id_2 = 1
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 50, monster_id = 20011301, pos = { x = 455.642, y = -28.484, z = 260.679 }, rot = { x = 0.000, y = 22.659, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 193, gadget_id = 70350003, pos = { x = 485.934, y = -28.585, z = 266.299 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 194, gadget_id = 70350003, pos = { x = 440.258, y = -25.618, z = 246.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 195, gadget_id = 70360002, pos = { x = 488.781, y = -28.514, z = 269.575 }, rot = { x = 0.000, y = 135.152, z = 0.000 }, level = 1 },
	{ config_id = 197, gadget_id = 70220002, pos = { x = 470.541, y = -28.410, z = 267.466 }, rot = { x = 0.000, y = 339.627, z = 0.000 }, level = 1 },
	{ config_id = 247, gadget_id = 70220010, pos = { x = 447.865, y = -28.327, z = 266.131 }, rot = { x = 0.000, y = 91.123, z = 0.000 }, level = 1 },
	{ config_id = 248, gadget_id = 70220023, pos = { x = 458.129, y = -28.433, z = 265.689 }, rot = { x = 0.000, y = 52.075, z = 0.000 }, level = 1 },
	{ config_id = 365, gadget_id = 70380001, pos = { x = 433.284, y = -26.337, z = 222.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 366, gadget_id = 70380001, pos = { x = 443.286, y = -26.337, z = 222.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 389, gadget_id = 70211022, pos = { x = 440.503, y = -28.503, z = 266.212 }, rot = { x = 0.000, y = 88.017, z = 0.000 }, level = 1, chest_drop_id = 11010100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 390, gadget_id = 70220013, pos = { x = 444.555, y = -28.284, z = 248.684 }, rot = { x = 349.243, y = 186.270, z = 355.368 }, level = 1 },
	{ config_id = 391, gadget_id = 70220013, pos = { x = 466.116, y = -28.426, z = 283.259 }, rot = { x = 0.000, y = 0.203, z = 0.000 }, level = 1 },
	{ config_id = 392, gadget_id = 70220014, pos = { x = 464.676, y = -28.637, z = 283.869 }, rot = { x = 0.000, y = 216.038, z = 0.000 }, level = 1 },
	{ config_id = 393, gadget_id = 70220014, pos = { x = 443.926, y = -28.611, z = 284.117 }, rot = { x = 0.000, y = 302.000, z = 0.000 }, level = 1 },
	{ config_id = 394, gadget_id = 70220014, pos = { x = 438.315, y = -28.489, z = 278.548 }, rot = { x = 0.000, y = 229.730, z = 0.000 }, level = 1 },
	{ config_id = 395, gadget_id = 70220014, pos = { x = 445.859, y = -28.627, z = 284.420 }, rot = { x = 0.000, y = 54.228, z = 0.000 }, level = 1 },
	{ config_id = 398, gadget_id = 70220014, pos = { x = 464.315, y = -28.570, z = 248.638 }, rot = { x = 0.000, y = 175.453, z = 0.000 }, level = 1 },
	{ config_id = 401, gadget_id = 70220023, pos = { x = 450.418, y = -28.484, z = 260.969 }, rot = { x = 0.000, y = 281.483, z = 0.000 }, level = 1 },
	{ config_id = 402, gadget_id = 70220023, pos = { x = 452.718, y = -28.433, z = 265.714 }, rot = { x = 0.000, y = 317.004, z = 0.000 }, level = 1 },
	{ config_id = 403, gadget_id = 70220023, pos = { x = 449.683, y = -28.483, z = 271.023 }, rot = { x = 0.000, y = 148.263, z = 0.000 }, level = 1 },
	{ config_id = 404, gadget_id = 70220023, pos = { x = 454.572, y = -28.433, z = 270.638 }, rot = { x = 0.000, y = 133.318, z = 0.000 }, level = 1 },
	{ config_id = 405, gadget_id = 70220023, pos = { x = 455.569, y = -28.434, z = 261.477 }, rot = { x = 0.000, y = 310.354, z = 0.000 }, level = 1 },
	{ config_id = 417, gadget_id = 70211111, pos = { x = 431.462, y = -25.418, z = 222.165 }, rot = { x = 0.000, y = 90.044, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true },
	{ config_id = 418, gadget_id = 70380001, pos = { x = 433.105, y = -26.319, z = 211.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 10, persistent = true },
	{ config_id = 419, gadget_id = 70380001, pos = { x = 438.281, y = -26.337, z = 222.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 420, gadget_id = 70900023, pos = { x = 438.064, y = -27.521, z = 226.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 421, gadget_id = 70900023, pos = { x = 442.638, y = -27.521, z = 226.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 422, gadget_id = 70900023, pos = { x = 442.890, y = -27.521, z = 217.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 423, gadget_id = 70900023, pos = { x = 438.119, y = -27.521, z = 217.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 424, gadget_id = 70900023, pos = { x = 433.328, y = -27.521, z = 217.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 425, gadget_id = 70900023, pos = { x = 442.754, y = -27.521, z = 212.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 426, gadget_id = 70900023, pos = { x = 438.072, y = -27.521, z = 212.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 427, gadget_id = 70900023, pos = { x = 433.260, y = -27.521, z = 212.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 428, gadget_id = 70900023, pos = { x = 442.755, y = -27.521, z = 231.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 429, gadget_id = 70900023, pos = { x = 438.111, y = -27.521, z = 231.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 21, shape = RegionShape.SPHERE, radius = 5, pos = { x = 475.990, y = -28.483, z = 266.281 } },
	{ config_id = 59, shape = RegionShape.SPHERE, radius = 5, pos = { x = 471.335, y = -28.503, z = 266.185 } }
}

-- 触发器
triggers = {
	{ config_id = 1000020, name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20" },
	{ config_id = 1000021, name = "ENTER_REGION_21", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21", action = "action_EVENT_ENTER_REGION_21", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000023, name = "GADGET_CREATE_23", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_23", action = "action_EVENT_GADGET_CREATE_23" },
	{ config_id = 1000024, name = "SELECT_OPTION_24", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_24", action = "action_EVENT_SELECT_OPTION_24", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000025, name = "SELECT_OPTION_25", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_25", action = "action_EVENT_SELECT_OPTION_25", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000033, name = "DUNGEON_SETTLE_33", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_33", action = "action_EVENT_DUNGEON_SETTLE_33" },
	{ config_id = 1000036, name = "SPECIFIC_MONSTER_HP_CHANGE_36", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "50", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_36", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_36" },
	{ config_id = 1000038, name = "ANY_GADGET_DIE_38", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_38", action = "action_EVENT_ANY_GADGET_DIE_38", trigger_count = 0 },
	{ config_id = 1000057, name = "ANY_MONSTER_DIE_57", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57", action = "action_EVENT_ANY_MONSTER_DIE_57" },
	{ config_id = 1000059, name = "ENTER_REGION_59", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59", action = "action_EVENT_ENTER_REGION_59", forbid_guest = false },
	{ config_id = 1000060, name = "TIMER_EVENT_60", event = EventType.EVENT_TIMER_EVENT, source = "creatself", condition = "", action = "action_EVENT_TIMER_EVENT_60", trigger_count = 0 },
	{ config_id = 1000065, name = "ANY_GADGET_DIE_65", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_65", action = "action_EVENT_ANY_GADGET_DIE_65" }
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
		monsters = { 50 },
		gadgets = { 193, 194, 195, 197, 247, 248, 365, 366, 389, 390, 391, 392, 393, 394, 395, 398, 401, 402, 403, 404, 405, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429 },
		regions = { 21, 59 },
		triggers = { "ANY_MONSTER_DIE_20", "ENTER_REGION_21", "GADGET_CREATE_23", "SELECT_OPTION_24", "SELECT_OPTION_25", "DUNGEON_SETTLE_33", "SPECIFIC_MONSTER_HP_CHANGE_36", "ANY_GADGET_DIE_38", "ANY_MONSTER_DIE_57", "ENTER_REGION_59", "TIMER_EVENT_60", "ANY_GADGET_DIE_65" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	-- 将configid为 194 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 解锁目标389
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 389, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21(context, evt)
	if evt.param1 ~= 21 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21(context, evt)
	-- 将configid为 195 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 195, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_23(context, evt)
	if 195 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_23(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_24(context, evt)
	-- 判断是gadgetid 195
	if 195 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_24(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {370} }) then
			return -1
		end
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end
	
		-- 删除指定group： 220008003 ；指定config：195；物件身上指定option：1；
		if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220008003, 195, 1) then
	  	  	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
			return -1
		end
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_25(context, evt)
	-- 判断是gadgetid 195
	if 195 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_25(context, evt)
	-- 根据不同的选项做不同的操作
	if 1 == evt.param2 then
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 195, GadgetState.GearStart) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_option")
			return -1
		end 
		return 0
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_33(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_33(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220008001, monsters = {}, gadgets = {367} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_36(context, evt)
	--[[判断指定configid的怪物的血量小于%80时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 80 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_36(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220008012, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_38(context, evt)
	if 247 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_38(context, evt)
	-- 延迟24秒后,向groupId为：220008003的对象,请求一次调用,并将string参数："creatself" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220008003, "creatself", 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57(context, evt)
	if 50 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220008012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建id为365的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 365 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_59(context, evt)
	if evt.param1 ~= 59 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59(context, evt)
	-- 触发镜头注目，注目位置为坐标（447，-28，266），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=447, y=-28, z=266}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_60(context, evt)
	-- 创建id为247的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 247 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_65(context, evt)
	if 247 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_65(context, evt)
	-- 调用提示id为 1010001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1010001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end