-- 基础信息
local base_info = {
	group_id = 243004010
}

-- Trigger变量
local defs = {
	group_main = 243004007,
	group_1 = 243004010,
	monster_1 = 10007,
	monster_2 = 10002,
	challenge1 = 301,
	challenge2 = 302,
	Region1 = 10012,
	Region2 = 10020,
	challenge_father = 999,
	group_core = 243004005,
	galleryid = 7010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10002, monster_id = 25070101, pos = { x = -9.863, y = 40.049, z = -55.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10003, monster_id = 25070101, pos = { x = -8.844, y = 40.049, z = -44.437 }, rot = { x = 0.000, y = 140.438, z = 0.000 }, level = 1 },
	{ config_id = 10004, monster_id = 25030301, pos = { x = 3.605, y = 40.002, z = -45.730 }, rot = { x = 0.000, y = 215.403, z = 0.000 }, level = 1 },
	{ config_id = 10006, monster_id = 22010201, pos = { x = 3.881, y = 40.018, z = -50.589 }, rot = { x = 0.000, y = 283.992, z = 0.000 }, level = 1 },
	{ config_id = 10007, monster_id = 21010501, pos = { x = -11.826, y = 40.049, z = -57.772 }, rot = { x = 0.000, y = 59.554, z = 0.000 }, level = 1 },
	{ config_id = 10011, monster_id = 21010501, pos = { x = -11.905, y = 40.060, z = -42.473 }, rot = { x = 0.000, y = 118.037, z = 0.000 }, level = 1 },
	{ config_id = 10021, monster_id = 25030301, pos = { x = 1.503, y = 40.021, z = -55.462 }, rot = { x = 0.000, y = 312.694, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10019, gadget_id = 70900205, pos = { x = -9.326, y = 35.071, z = -55.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 10012, shape = RegionShape.CUBIC, size = { x = 65.000, y = 40.000, z = 50.000 }, pos = { x = -5.100, y = 40.000, z = -46.400 } },
	{ config_id = 10020, shape = RegionShape.CUBIC, size = { x = 65.000, y = 40.000, z = 50.000 }, pos = { x = -5.100, y = 40.000, z = -46.400 } }
}

-- 触发器
triggers = {
	{ config_id = 1010001, name = "VARIABLE_CHANGE_10001", event = EventType.EVENT_VARIABLE_CHANGE, source = "key", condition = "condition_EVENT_VARIABLE_CHANGE_10001", action = "action_EVENT_VARIABLE_CHANGE_10001", trigger_count = 0 },
	{ config_id = 1010005, name = "ANY_MONSTER_DIE_10005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10005", action = "action_EVENT_ANY_MONSTER_DIE_10005", trigger_count = 0 },
	{ config_id = 1010012, name = "LEAVE_REGION_10012", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_10012", action = "action_EVENT_LEAVE_REGION_10012", trigger_count = 0 },
	{ config_id = 1010013, name = "CHALLENGE_FAIL_10013", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10013", trigger_count = 0 },
	{ config_id = 1010014, name = "CHALLENGE_SUCCESS_10014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "" },
	{ config_id = 1010015, name = "ANY_MONSTER_LIVE_10015", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_10015", action = "action_EVENT_ANY_MONSTER_LIVE_10015" },
	{ config_id = 1010016, name = "ANY_MONSTER_LIVE_10016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_10016", action = "action_EVENT_ANY_MONSTER_LIVE_10016" },
	{ config_id = 1010017, name = "CHALLENGE_FAIL_10017", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10017", trigger_count = 0 },
	{ config_id = 1010018, name = "CHALLENGE_SUCCESS_10018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "" },
	{ config_id = 1010020, name = "LEAVE_REGION_10020", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_10020", action = "action_EVENT_LEAVE_REGION_10020", trigger_count = 0 },
	{ config_id = 1010022, name = "VARIABLE_CHANGE_10022", event = EventType.EVENT_VARIABLE_CHANGE, source = "key", condition = "condition_EVENT_VARIABLE_CHANGE_10022", action = "action_EVENT_VARIABLE_CHANGE_10022", trigger_count = 0 },
	{ config_id = 1010023, name = "ANY_MONSTER_DIE_10023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10023", action = "action_EVENT_ANY_MONSTER_DIE_10023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "c3", value = 0, no_refresh = false },
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
		gadgets = { 10019 },
		regions = { },
		triggers = { },
		rand_weight = 0
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 10006, 10007, 10011 },
		gadgets = { },
		regions = { 10012 },
		triggers = { "VARIABLE_CHANGE_10001", "ANY_MONSTER_DIE_10005", "LEAVE_REGION_10012", "ANY_MONSTER_LIVE_10015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 10002, 10003, 10004, 10021 },
		gadgets = { },
		regions = { 10020 },
		triggers = { "ANY_MONSTER_LIVE_10016", "LEAVE_REGION_10020", "VARIABLE_CHANGE_10022", "ANY_MONSTER_DIE_10023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为3
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10001(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_10005(context, evt)
	--检查configeID是否大于0
	if 0 >= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10005(context, evt)
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
function condition_EVENT_LEAVE_REGION_10012(context, evt)
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
function action_EVENT_LEAVE_REGION_10012(context, evt)
	--离开区域 挑战失败
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "StopChildChallengeFromDiffGroup", {defs.challenge1,0})
	
	 ScriptLib.PrintContextLog(context, "离开区域，挑战失败!!!!!!!!!!!")
	
	
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f3", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10013(context, evt)
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f3", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 2)
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_10015(context, evt)
	if defs.monster_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_10015(context, evt)
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
function condition_EVENT_ANY_MONSTER_LIVE_10016(context, evt)
	if defs.monster_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_10016(context, evt)
	--向编号999的父挑战挂接子挑战
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineFatherIndex",{defs.challenge_father})
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineChildChallengeScore",{ 1, 1})
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AttachChildChallengeFromDiffGroup",{defs.challenge1, 233, 4})
	
		-- 调用提示id为 43001009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001009) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10017(context, evt)
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f3", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 3)
	
	return 0
	
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_10020(context, evt)
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
function action_EVENT_LEAVE_REGION_10020(context, evt)
	--离开区域 挑战失败
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "StopChildChallengeFromDiffGroup", {defs.challenge1,0})
	
	 ScriptLib.PrintContextLog(context, "离开区域，挑战失败!!!!!!!!!!!")
	
	
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f3", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为4
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10022(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_10023(context, evt)
	--检查configeID是否大于0
	if 0 >= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10023(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	    return -1
	end
	  
	--通知父挑战积分+1
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddChildChallengeScore", {1})
	  
	return 0
end