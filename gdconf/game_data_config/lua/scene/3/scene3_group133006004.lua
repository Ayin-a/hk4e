-- 基础信息
local base_info = {
	group_id = 133006004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4002, monster_id = 20020101, pos = { x = 2181.000, y = 262.500, z = -1738.000 }, rot = { x = 0.000, y = 13.903, z = 0.000 }, level = 40, drop_tag = "元素之核", affix = { 1008, 1011 }, isElite = true, isOneoff = true, area_id = 1 },
	{ config_id = 4004, monster_id = 21030301, pos = { x = 2193.951, y = 265.541, z = -1739.341 }, rot = { x = 0.000, y = 328.396, z = 0.000 }, level = 38, drop_tag = "丘丘萨满", area_id = 1 },
	{ config_id = 4005, monster_id = 21030301, pos = { x = 2181.251, y = 258.993, z = -1726.278 }, rot = { x = 0.000, y = 163.815, z = 0.000 }, level = 38, drop_tag = "丘丘萨满", area_id = 1 },
	{ config_id = 4006, monster_id = 21030301, pos = { x = 2166.643, y = 259.696, z = -1743.655 }, rot = { x = 0.000, y = 47.255, z = 0.000 }, level = 38, drop_tag = "丘丘萨满", area_id = 1 },
	{ config_id = 4007, monster_id = 20010401, pos = { x = 2169.323, y = 259.351, z = -1745.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 38, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 4008, monster_id = 20010401, pos = { x = 2165.862, y = 258.720, z = -1740.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 38, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 4009, monster_id = 20010401, pos = { x = 2169.797, y = 259.123, z = -1741.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 38, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 4010, monster_id = 20010401, pos = { x = 2182.101, y = 258.987, z = -1729.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 38, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 4011, monster_id = 20010401, pos = { x = 2184.341, y = 259.069, z = -1726.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 38, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 4012, monster_id = 20010401, pos = { x = 2178.959, y = 259.027, z = -1727.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 38, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 4013, monster_id = 20010401, pos = { x = 2190.782, y = 260.670, z = -1738.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 38, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 4014, monster_id = 20010401, pos = { x = 2173.796, y = 259.088, z = -1734.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 38, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 4015, monster_id = 20010401, pos = { x = 2177.782, y = 260.316, z = -1746.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 38, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 4021, monster_id = 21030301, pos = { x = 2177.898, y = 260.319, z = -1748.018 }, rot = { x = 0.000, y = 328.396, z = 0.000 }, level = 38, drop_tag = "丘丘萨满", area_id = 1 },
	{ config_id = 4022, monster_id = 21030301, pos = { x = 2174.266, y = 258.855, z = -1733.024 }, rot = { x = 0.000, y = 328.396, z = 0.000 }, level = 38, drop_tag = "丘丘萨满", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70500000, pos = { x = 2206.892, y = 262.326, z = -1727.331 }, rot = { x = 0.278, y = 183.893, z = 359.924 }, level = 15, point_type = 9124, persistent = true, area_id = 1 },
	{ config_id = 4016, gadget_id = 70710129, pos = { x = 2180.980, y = 258.766, z = -1738.471 }, rot = { x = 0.000, y = 14.570, z = 0.000 }, level = 15, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 4024, gadget_id = 70710171, pos = { x = 2180.473, y = 257.133, z = -1740.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 4027, gadget_id = 70360040, pos = { x = 2206.894, y = 262.334, z = -1727.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "ANY_MONSTER_DIE_4003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4003", action = "action_EVENT_ANY_MONSTER_DIE_4003" },
	{ config_id = 1004017, name = "VARIABLE_CHANGE_4017", event = EventType.EVENT_VARIABLE_CHANGE, source = "count2", condition = "condition_EVENT_VARIABLE_CHANGE_4017", action = "action_EVENT_VARIABLE_CHANGE_4017" },
	{ config_id = 1004018, name = "SPECIFIC_MONSTER_HP_CHANGE_4018", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "4002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4018", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4018" },
	{ config_id = 1004019, name = "SPECIFIC_MONSTER_HP_CHANGE_4019", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "4002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4019", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4019" },
	{ config_id = 1004020, name = "SPECIFIC_MONSTER_HP_CHANGE_4020", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "4002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4020", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4020" },
	{ config_id = 1004023, name = "ANY_GADGET_DIE_4023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4023", action = "action_EVENT_ANY_GADGET_DIE_4023" },
	{ config_id = 1004025, name = "QUEST_FINISH_4025", event = EventType.EVENT_QUEST_FINISH, source = "7101208", condition = "condition_EVENT_QUEST_FINISH_4025", action = "action_EVENT_QUEST_FINISH_4025" },
	{ config_id = 1004026, name = "GATHER_4026", event = EventType.EVENT_GATHER, source = "4001", condition = "", action = "action_EVENT_GATHER_4026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "windcore2", value = 0, no_refresh = true },
	{ config_id = 2, name = "count2", value = 0, no_refresh = true }
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
		triggers = { "ANY_MONSTER_DIE_4003", "VARIABLE_CHANGE_4017", "SPECIFIC_MONSTER_HP_CHANGE_4018", "SPECIFIC_MONSTER_HP_CHANGE_4019", "SPECIFIC_MONSTER_HP_CHANGE_4020", "ANY_GADGET_DIE_4023", "QUEST_FINISH_4025", "GATHER_4026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	--判断死亡怪物的configid是否为 4002
	if evt.param1 ~= 4002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101223_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "dead" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "dead", 1, 133006002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133006004, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133006002, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 触发镜头注目，注目位置为坐标（2191，261，-1727），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2191, y=261, z=-1727}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 4024 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4024, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count2"为4
	if ScriptLib.GetGroupVariableValue(context, "count2") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4017(context, evt)
	-- 创建id为4024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为4016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4018(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4021, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4019(context, evt)
	--[[判断指定configid的怪物的血量小于%20时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 20 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4019(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4020(context, evt)
	--[[判断指定configid的怪物的血量小于%100时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 100 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_4020(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4023(context, evt)
	if 4016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4023(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7101218_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为4024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_4025(context, evt)
	--检查ID为7101208的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7101208 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_4025(context, evt)
	-- 创建id为4001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为4027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_4026(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133006004, EntityType.GADGET, 4027 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end