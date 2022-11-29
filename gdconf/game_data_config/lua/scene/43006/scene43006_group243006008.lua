-- 基础信息
local base_info = {
	group_id = 243006008
}

-- Trigger变量
local defs = {
	group_main = 243006007,
	group_1 = 243006008,
	monster_1 = 8004,
	monster_2 = 8006,
	gadget_main = 7001,
	challenge1 = 101,
	challenge2 = 102,
	Region1 = 8011,
	Region2 = 8016,
	challenge_father = 999,
	group_core = 243006005,
	galleryid = 7012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8004, monster_id = 25010701, pos = { x = 18.064, y = 40.013, z = -8.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8005, monster_id = 25070101, pos = { x = 25.411, y = 40.000, z = -8.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8006, monster_id = 21010601, pos = { x = 8.232, y = 40.029, z = -3.349 }, rot = { x = 0.000, y = 0.799, z = 0.000 }, level = 1 },
	{ config_id = 8007, monster_id = 21010601, pos = { x = 17.289, y = 40.049, z = 5.646 }, rot = { x = 0.000, y = 229.565, z = 0.000 }, level = 1 },
	{ config_id = 8020, monster_id = 25070101, pos = { x = 11.149, y = 40.000, z = -7.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8021, monster_id = 21020201, pos = { x = 8.922, y = 40.001, z = 4.928 }, rot = { x = 0.000, y = 157.637, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8019, gadget_id = 70900205, pos = { x = 25.499, y = 37.382, z = -3.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 8011, shape = RegionShape.CUBIC, size = { x = 70.000, y = 40.000, z = 60.000 }, pos = { x = 17.700, y = 40.000, z = -5.500 } },
	{ config_id = 8016, shape = RegionShape.CUBIC, size = { x = 70.000, y = 40.000, z = 60.000 }, pos = { x = 17.700, y = 40.000, z = -5.500 } }
}

-- 触发器
triggers = {
	{ config_id = 1008001, name = "VARIABLE_CHANGE_8001", event = EventType.EVENT_VARIABLE_CHANGE, source = "key", condition = "condition_EVENT_VARIABLE_CHANGE_8001", action = "action_EVENT_VARIABLE_CHANGE_8001", trigger_count = 0 },
	{ config_id = 1008002, name = "ANY_MONSTER_DIE_8002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8002", action = "action_EVENT_ANY_MONSTER_DIE_8002", trigger_count = 0 },
	{ config_id = 1008003, name = "VARIABLE_CHANGE_8003", event = EventType.EVENT_VARIABLE_CHANGE, source = "key", condition = "condition_EVENT_VARIABLE_CHANGE_8003", action = "action_EVENT_VARIABLE_CHANGE_8003", trigger_count = 0 },
	{ config_id = 1008008, name = "ANY_MONSTER_DIE_8008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8008", action = "action_EVENT_ANY_MONSTER_DIE_8008", trigger_count = 0 },
	{ config_id = 1008011, name = "LEAVE_REGION_8011", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_8011", action = "action_EVENT_LEAVE_REGION_8011", trigger_count = 0 },
	{ config_id = 1008012, name = "CHALLENGE_FAIL_8012", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8012", trigger_count = 0 },
	{ config_id = 1008013, name = "CHALLENGE_SUCCESS_8013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8013" },
	{ config_id = 1008014, name = "ANY_MONSTER_LIVE_8014", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8014", action = "action_EVENT_ANY_MONSTER_LIVE_8014", trigger_count = 0 },
	{ config_id = 1008015, name = "ANY_MONSTER_LIVE_8015", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8015", action = "action_EVENT_ANY_MONSTER_LIVE_8015" },
	{ config_id = 1008016, name = "LEAVE_REGION_8016", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_8016", action = "action_EVENT_LEAVE_REGION_8016", trigger_count = 0 },
	{ config_id = 1008017, name = "CHALLENGE_SUCCESS_8017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "" },
	{ config_id = 1008018, name = "CHALLENGE_FAIL_8018", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "c1", value = 0, no_refresh = false },
	{ config_id = 2, name = "key", value = 0, no_refresh = false },
	{ config_id = 3, name = "success", value = 0, no_refresh = false },
	{ config_id = 4, name = "Gflag", value = 0, no_refresh = true }
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
		gadgets = { 8019 },
		regions = { },
		triggers = { },
		rand_weight = 0
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8004, 8005, 8020 },
		gadgets = { },
		regions = { 8011 },
		triggers = { "VARIABLE_CHANGE_8001", "ANY_MONSTER_DIE_8002", "LEAVE_REGION_8011", "ANY_MONSTER_LIVE_8014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 8006, 8007, 8021 },
		gadgets = { },
		regions = { 8016 },
		triggers = { "VARIABLE_CHANGE_8003", "ANY_MONSTER_DIE_8008", "ANY_MONSTER_LIVE_8015", "LEAVE_REGION_8016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为3
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8001(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	    return -1
	  end
	
	--【修改父挑战时间】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 1 then
	    ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>1")
	
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "AddTime", 1, defs.group_core) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	    	return -1
		end
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001005) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
		ScriptLib.PrintContextLog(context, "父挑战时间已经修改")
	end 
	
	
	--【复活】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 2 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 0)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>2")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001006) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	end
	
	--【加攻击】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 3 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 1)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>3")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001007) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	end
	
	--【加移速】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 4 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 2)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>4")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001008) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	end
	 
	--【复活2】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 5 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 3)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>2")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001006) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	end
	
	--【加攻击2】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 6 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 4)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>3")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001007) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	end
	
	--【加移速2】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 7 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 5)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>4")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001008) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8002(context, evt)
	--检查configeID是否大于0
	if 0 >= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8002(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	    return -1
	end
	  
	--通知父挑战积分+1
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddChildChallengeScore", {1})
	  
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为3
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8003(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	    return -1
	  end
	
	--【修改父挑战时间】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 1 then
	    ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>1")
	
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "AddTime", 1, defs.group_core) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	    	return -1
		end
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001005) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
		ScriptLib.PrintContextLog(context, "父挑战时间已经修改")
	end 
	
	
	--【复活】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 2 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 0)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>2")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001006) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	end
	
	--【加攻击】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 3 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 1)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>3")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001007) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	end
	
	--【加移速】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 4 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 2)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>4")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001008) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	end
	 
	--【复活2】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 5 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 3)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>2")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001006) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	end
	
	--【加攻击2】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 6 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 4)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>3")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001007) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	end
	
	--【加移速2】
	if ScriptLib.GetGroupVariableValue(context, "Gflag") == 7 then
	
		ScriptLib.AttachGalleryAbilityGroup(context, {}, defs.galleryid, 5)
		ScriptLib.PrintContextLog(context, "Gflag>>>>>>>>>>>>>>>>>>>>>>>>>>>4")
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001008) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8008(context, evt)
	--检查configeID是否大于0
	if 0 >= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8008(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	    return -1
	end
	  
	--通知父挑战积分+1
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddChildChallengeScore", {1})
	  
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_8011(context, evt)
	-- 判断是区域8011
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= defs.Region1 then
		return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
	    return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_8011(context, evt)
	--离开区域 挑战失败
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "StopChildChallengeFromDiffGroup", {defs.challenge1,0})
	
	 ScriptLib.PrintContextLog(context, "离开区域，挑战失败!!!!!!!!!!!")
	
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f1", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8012(context, evt)
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f1", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8013(context, evt)
	-- 改变指定group组243006008中， configid为5000的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 243006008, 5000, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_8014(context, evt)
	if defs.monster_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8014(context, evt)
	--向编号999的父挑战挂接子挑战
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineFatherIndex",{defs.challenge_father})
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineChildChallengeScore",{ 1, 1})
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AttachChildChallengeFromDiffGroup",{defs.challenge1, 233, 3})
	
		-- 调用提示id为 43001009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001009) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_8015(context, evt)
	if defs.monster_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8015(context, evt)
	--向编号999的父挑战挂接子挑战
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineFatherIndex",{defs.challenge_father})
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineChildChallengeScore",{ 1, 1})
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AttachChildChallengeFromDiffGroup",{defs.challenge1, 233, 3})
	
		-- 调用提示id为 43001009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001009) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_8016(context, evt)
	-- 判断是区域8011
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= defs.Region2 then
		return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
	    return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_8016(context, evt)
	--离开区域 挑战失败
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "StopChildChallengeFromDiffGroup", {defs.challenge1,0})
	
	 ScriptLib.PrintContextLog(context, "离开区域，挑战失败!!!!!!!!!!!")
	
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f1", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 3)
	
	return 0
	
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8018(context, evt)
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f1", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 3)
	
	return 0
end