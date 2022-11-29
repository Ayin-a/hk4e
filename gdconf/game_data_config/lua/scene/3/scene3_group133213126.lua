-- 基础信息
local base_info = {
	group_id = 133213126
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 126005, monster_id = 23040101, pos = { x = -3706.906, y = 200.296, z = -3126.491 }, rot = { x = 0.000, y = 215.936, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 126007, monster_id = 23050101, pos = { x = -3707.837, y = 200.496, z = -3126.192 }, rot = { x = 0.000, y = 194.460, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 126008, monster_id = 23020101, pos = { x = -3719.337, y = 200.950, z = -3128.111 }, rot = { x = 0.000, y = 84.381, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 126009, monster_id = 23020101, pos = { x = -3700.048, y = 200.269, z = -3133.923 }, rot = { x = 0.000, y = 237.291, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 126014, monster_id = 23010201, pos = { x = -3700.867, y = 200.360, z = -3132.526 }, rot = { x = 0.000, y = 253.376, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 126016, monster_id = 23010101, pos = { x = -3718.895, y = 201.178, z = -3126.810 }, rot = { x = 0.000, y = 151.627, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 126002, gadget_id = 70900389, pos = { x = -3712.630, y = 200.544, z = -3138.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 126013, gadget_id = 70360001, pos = { x = -3712.054, y = 201.034, z = -3138.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 126015, gadget_id = 70310021, pos = { x = -3712.630, y = 200.544, z = -3138.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 126017, gadget_id = 70310081, pos = { x = -3712.630, y = 200.544, z = -3138.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 12 },
	{ config_id = 126018, gadget_id = 70350190, pos = { x = -3712.630, y = 200.544, z = -3138.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 126001, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3711.987, y = 200.544, z = -3136.522 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1126001, name = "ENTER_REGION_126001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_126001", action = "action_EVENT_ENTER_REGION_126001" },
	{ config_id = 1126003, name = "GADGET_CREATE_126003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_126003", action = "action_EVENT_GADGET_CREATE_126003", trigger_count = 0 },
	{ config_id = 1126004, name = "SELECT_OPTION_126004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_126004", action = "action_EVENT_SELECT_OPTION_126004", trigger_count = 0 },
	{ config_id = 1126006, name = "ANY_MONSTER_DIE_126006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126006", action = "action_EVENT_ANY_MONSTER_DIE_126006" },
	{ config_id = 1126010, name = "ANY_MONSTER_DIE_126010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126010", action = "action_EVENT_ANY_MONSTER_DIE_126010", tag = "126002" },
	{ config_id = 1126011, name = "CHALLENGE_SUCCESS_126011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "777", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_126011", trigger_count = 0 },
	{ config_id = 1126012, name = "CHALLENGE_FAIL_126012", event = EventType.EVENT_CHALLENGE_FAIL, source = "777", condition = "", action = "action_EVENT_CHALLENGE_FAIL_126012", trigger_count = 0 },
	{ config_id = 1126019, name = "GROUP_LOAD_126019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_126019", trigger_count = 0 },
	{ config_id = 1126020, name = "MONSTER_BATTLE_126020", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_126020" },
	{ config_id = 1126021, name = "GADGET_CREATE_126021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_126021", action = "action_EVENT_GADGET_CREATE_126021", trigger_count = 0 }
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
	end_suite = 4,
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 126001 },
		triggers = { "ENTER_REGION_126001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 126002, 126017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 126002, 126013, 126017 },
		regions = { },
		triggers = { "GADGET_CREATE_126003", "SELECT_OPTION_126004", "CHALLENGE_SUCCESS_126011", "CHALLENGE_FAIL_126012", "GROUP_LOAD_126019", "GADGET_CREATE_126021" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 126005, 126014, 126016 },
		gadgets = { 126015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126006", "MONSTER_BATTLE_126020" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 126007, 126008, 126009 },
		gadgets = { 126018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_126001(context, evt)
	if evt.param1 ~= 126001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_126001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212213_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_126003(context, evt)
	if 126013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_126003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213126, 126013, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_126004(context, evt)
	-- 判断是gadgetid 126013 option_id 7
	if 126013 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_126004(context, evt)
	-- 创建id为126015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126006(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213126, 6)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126010(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133213130) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 126018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_126011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7212215_end") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133213099) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 126002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133213099中， configid为99001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133213099, 99001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213537, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_126012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213126, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213126, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213126, 6)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213126, 126013, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 126002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213537, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_126019(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213126, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133213126, 126013, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 126002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213126, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213126, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_126020(context, evt)
	-- 调用提示id为 1110331 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110331) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_126021(context, evt)
	if 126015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_126021(context, evt)
	-- 创建编号为777（该挑战的识别id),挑战内容为249的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 777, 249, 133213126, 6, 126015, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将configid为 126002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213126, 5)
	
	-- 删除指定group： 133213126 ；指定config：126013；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133213126, 126013, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213537, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end