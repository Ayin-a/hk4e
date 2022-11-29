-- 基础信息
local base_info = {
	group_id = 133102621
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 621011, monster_id = 24010101, pos = { x = 2042.168, y = 200.495, z = 825.248 }, rot = { x = 0.000, y = 258.163, z = 0.000 }, level = 18, drop_id = 1000100, pose_id = 100, area_id = 5 },
	{ config_id = 621013, monster_id = 24010101, pos = { x = 2038.514, y = 201.241, z = 814.635 }, rot = { x = 0.000, y = 302.022, z = 0.000 }, level = 18, drop_id = 1000100, pose_id = 100, area_id = 5 },
	{ config_id = 621019, monster_id = 24010101, pos = { x = 2030.137, y = 199.001, z = 839.671 }, rot = { x = 0.000, y = 184.991, z = 0.000 }, level = 18, drop_id = 1000100, pose_id = 100, area_id = 5 },
	{ config_id = 621020, monster_id = 24010101, pos = { x = 2011.608, y = 200.878, z = 824.182 }, rot = { x = 0.000, y = 88.132, z = 0.000 }, level = 18, drop_id = 1000100, pose_id = 100, area_id = 5 },
	{ config_id = 621021, monster_id = 24010201, pos = { x = 2045.831, y = 206.226, z = 820.788 }, rot = { x = 0.000, y = 271.977, z = 0.000 }, level = 25, drop_id = 1000100, affix = { 1008, 1011 }, isElite = true, pose_id = 100, area_id = 5 }
}

-- NPC
npcs = {
	{ config_id = 621005, npc_id = 20077, pos = { x = 1983.868, y = 189.380, z = 828.494 }, rot = { x = 0.000, y = 326.119, z = 0.000 }, area_id = 5 }
}

-- 装置
gadgets = {
	{ config_id = 621002, gadget_id = 70310007, pos = { x = 2023.500, y = 187.031, z = 852.589 }, rot = { x = 0.000, y = 153.884, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 621003, gadget_id = 70310007, pos = { x = 2009.031, y = 187.056, z = 832.744 }, rot = { x = 0.000, y = 183.796, z = 2.167 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 621004, gadget_id = 70350004, pos = { x = 1983.981, y = 188.194, z = 828.570 }, rot = { x = 0.000, y = 294.189, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 621006, gadget_id = 70310007, pos = { x = 2017.075, y = 203.522, z = 784.179 }, rot = { x = 0.000, y = 6.141, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 621008, gadget_id = 70310007, pos = { x = 2074.647, y = 194.058, z = 818.955 }, rot = { x = 0.000, y = 259.194, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 621015, gadget_id = 70310007, pos = { x = 1955.219, y = 200.361, z = 846.773 }, rot = { x = 0.000, y = 206.528, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 621016, gadget_id = 70360066, pos = { x = 2029.634, y = 187.764, z = 822.749 }, rot = { x = 0.000, y = 254.664, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	-- 受击点
	{ config_id = 621050, gadget_id = 70360069, pos = { x = 2029.824, y = 191.467, z = 822.819 }, rot = { x = 0.000, y = 264.607, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 621052, gadget_id = 70800027, pos = { x = 2049.000, y = 253.000, z = 828.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 621054, gadget_id = 70800001, pos = { x = 2029.829, y = 188.916, z = 822.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	-- (2042.2, 200.5, 825.2)
	{ config_id = 621059, gadget_id = 70360070, pos = { x = 2042.200, y = 187.785, z = 825.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	-- (2011.6, 200.9, 824.2)
	{ config_id = 621060, gadget_id = 70360070, pos = { x = 2011.600, y = 187.787, z = 824.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	-- (2030.1, 199.0, 839.7)
	{ config_id = 621061, gadget_id = 70360070, pos = { x = 2030.100, y = 187.888, z = 839.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	-- (2038.5, 201.2, 814.6)
	{ config_id = 621062, gadget_id = 70360070, pos = { x = 2026.021, y = 205.375, z = 821.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	-- (2045.8, 206.2, 820.8)
	{ config_id = 621063, gadget_id = 70360070, pos = { x = 2045.800, y = 187.770, z = 820.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 621001, shape = RegionShape.SPHERE, radius = 6.7, pos = { x = 1949.491, y = 203.254, z = 844.009 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1621001, name = "ENTER_REGION_621001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_621001", action = "action_EVENT_ENTER_REGION_621001", trigger_count = 0 },
	{ config_id = 1621007, name = "SELECT_OPTION_621007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_621007", action = "action_EVENT_SELECT_OPTION_621007", trigger_count = 0 },
	{ config_id = 1621009, name = "GADGET_CREATE_621009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_621009", action = "action_EVENT_GADGET_CREATE_621009", trigger_count = 0 },
	{ config_id = 1621010, name = "QUEST_FINISH_621010", event = EventType.EVENT_QUEST_FINISH, source = "2102110", condition = "condition_EVENT_QUEST_FINISH_621010", action = "action_EVENT_QUEST_FINISH_621010", trigger_count = 0 },
	{ config_id = 1621012, name = "ANY_MONSTER_DIE_621012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_621012", action = "action_EVENT_ANY_MONSTER_DIE_621012", trigger_count = 0 },
	{ config_id = 1621014, name = "ANY_MONSTER_DIE_621014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_621014", action = "action_EVENT_ANY_MONSTER_DIE_621014", trigger_count = 0 },
	{ config_id = 1621017, name = "QUEST_FINISH_621017", event = EventType.EVENT_QUEST_FINISH, source = "2102113", condition = "condition_EVENT_QUEST_FINISH_621017", action = "action_EVENT_QUEST_FINISH_621017", trigger_count = 0 },
	{ config_id = 1621018, name = "ANY_MONSTER_DIE_621018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_621018", action = "action_EVENT_ANY_MONSTER_DIE_621018", trigger_count = 0 },
	{ config_id = 1621022, name = "ANY_MONSTER_DIE_621022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_621022", action = "action_EVENT_ANY_MONSTER_DIE_621022" },
	{ config_id = 1621023, name = "ANY_MONSTER_DIE_621023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_621023", action = "action_EVENT_ANY_MONSTER_DIE_621023", trigger_count = 0 },
	{ config_id = 1621024, name = "VARIABLE_CHANGE_621024", event = EventType.EVENT_VARIABLE_CHANGE, source = "monstercount", condition = "condition_EVENT_VARIABLE_CHANGE_621024", action = "action_EVENT_VARIABLE_CHANGE_621024", trigger_count = 0 },
	{ config_id = 1621025, name = "ANY_MONSTER_DIE_621025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_621025", action = "action_EVENT_ANY_MONSTER_DIE_621025", trigger_count = 0 },
	{ config_id = 1621026, name = "CHALLENGE_SUCCESS_621026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_621026", trigger_count = 0 },
	{ config_id = 1621027, name = "QUEST_FINISH_621027", event = EventType.EVENT_QUEST_FINISH, source = "2102130", condition = "condition_EVENT_QUEST_FINISH_621027", action = "action_EVENT_QUEST_FINISH_621027" },
	{ config_id = 1621029, name = "GADGET_CREATE_621029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_621029", action = "action_EVENT_GADGET_CREATE_621029", trigger_count = 0 },
	{ config_id = 1621037, name = "QUEST_FINISH_621037", event = EventType.EVENT_QUEST_FINISH, source = "2102128", condition = "condition_EVENT_QUEST_FINISH_621037", action = "action_EVENT_QUEST_FINISH_621037" },
	{ config_id = 1621053, name = "ANY_MONSTER_DIE_621053", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_621053", action = "action_EVENT_ANY_MONSTER_DIE_621053", trigger_count = 0 },
	{ config_id = 1621055, name = "ANY_MONSTER_DIE_621055", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_621055", action = "action_EVENT_ANY_MONSTER_DIE_621055", trigger_count = 0 },
	{ config_id = 1621057, name = "CHALLENGE_FAIL_621057", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_621057", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monstercount", value = 0, no_refresh = true }
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
		gadgets = { 621002, 621003, 621004, 621006, 621008, 621015, 621016, 621052, 621054, 621059, 621060, 621061, 621062, 621063 },
		regions = { 621001 },
		triggers = { "ENTER_REGION_621001", "SELECT_OPTION_621007", "GADGET_CREATE_621009", "QUEST_FINISH_621010", "ANY_MONSTER_DIE_621012", "ANY_MONSTER_DIE_621014", "QUEST_FINISH_621017", "ANY_MONSTER_DIE_621018", "ANY_MONSTER_DIE_621022", "ANY_MONSTER_DIE_621023", "VARIABLE_CHANGE_621024", "ANY_MONSTER_DIE_621025", "CHALLENGE_SUCCESS_621026", "QUEST_FINISH_621027", "GADGET_CREATE_621029", "QUEST_FINISH_621037", "ANY_MONSTER_DIE_621053", "ANY_MONSTER_DIE_621055", "CHALLENGE_FAIL_621057" },
		npcs = { 621005 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 621011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 621013, 621019, 621020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 621021 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_621001(context, evt)
	if evt.param1 ~= 621001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_621001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2102112_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_621007(context, evt)
	-- 判断是gadgetid 621054 option_id 7
	if 621054 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_621007(context, evt)
	-- 变量"monstercount"赋值为0
	ScriptLib.SetGroupVariableValue(context, "monstercount", 0)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102621, 2)
	
	-- 创建id为621050的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 621050 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 621016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133102621 ；指定config：621054；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102621, 621054, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为666（该挑战的识别id),挑战内容为16的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 16, 133102621, 5, 621050, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将configid为 621054 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621054, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_621009(context, evt)
	if 621054 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_621009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_621010(context, evt)
	--检查ID为2102110的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2102110 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_621010(context, evt)
	-- 将configid为 621004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 31020805 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020805) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（2029，203，822），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2029, y=203, z=822}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_621012(context, evt)
	--判断死亡怪物的configid是否为 621021
	if evt.param1 ~= 621021 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_621012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2102114_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_621014(context, evt)
	--判断死亡怪物的configid是否为 621021
	if evt.param1 ~= 621021 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_621014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2102123_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_621017(context, evt)
	--检查ID为2102113的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2102113 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_621017(context, evt)
	-- 将configid为 621004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 31020805 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020805) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（2029，203，822），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2029, y=203, z=822}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_621018(context, evt)
	--判断死亡怪物的configid是否为 621021
	if evt.param1 ~= 621021 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_621018(context, evt)
	-- 改变指定group组133102716中， configid为761008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133102716, 761008, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_621022(context, evt)
	--判断死亡怪物的configid是否为 621021
	if evt.param1 ~= 621021 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_621022(context, evt)
	-- 改变指定group组133102761中， configid为761008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133102761, 761008, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 621016 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621016, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_621023(context, evt)
	--判断死亡怪物的configid是否为 621013
	if evt.param1 ~= 621013 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_621023(context, evt)
	-- 针对当前group内变量名为 "monstercount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monstercount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_621024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monstercount"为3
	if ScriptLib.GetGroupVariableValue(context, "monstercount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_621024(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 621021, delay_time = 3 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2029.8,y=188.9,z=822.8}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_621025(context, evt)
	--判断死亡怪物的configid是否为 621011
	if evt.param1 ~= 621011 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_621025(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 621013, delay_time = 3 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟7秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 621019, delay_time = 7 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟15秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 621020, delay_time = 15 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2029.8,y=188.9,z=822.8}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_621026(context, evt)
	-- 将configid为 621054 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621054, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 621016 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621016, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 621050 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 变量"monstercount"赋值为0
	ScriptLib.SetGroupVariableValue(context, "monstercount", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_621027(context, evt)
	--检查ID为2102130的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2102130 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_621027(context, evt)
	-- 触发镜头注目，注目位置为坐标（2087，196，791），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2087, y=196, z=791}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_621029(context, evt)
	if 621004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_621029(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102621, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102621, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102621, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_621037(context, evt)
	--检查ID为2102128的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 2102128 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_621037(context, evt)
	-- 触发镜头注目，注目位置为坐标（2087，196，791），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2087, y=196, z=791}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_621053(context, evt)
	--判断死亡怪物的configid是否为 621019
	if evt.param1 ~= 621019 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_621053(context, evt)
	-- 针对当前group内变量名为 "monstercount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monstercount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_621055(context, evt)
	--判断死亡怪物的configid是否为 621020
	if evt.param1 ~= 621020 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_621055(context, evt)
	-- 针对当前group内变量名为 "monstercount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monstercount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_621057(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102621, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102621, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102621, 4)
	
	-- 变量"monstercount"赋值为0
	ScriptLib.SetGroupVariableValue(context, "monstercount", 0)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102621, 621054, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 621016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621016, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 621054 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621054, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 621050 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end