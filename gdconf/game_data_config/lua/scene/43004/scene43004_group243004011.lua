-- 基础信息
local base_info = {
	group_id = 243004011
}

-- Trigger变量
local defs = {
	group_main = 243004007,
	group_1 = 243004011,
	monster_1 = 11003,
	monster_2 = 11009,
	challenge1 = 401,
	Region1 = 11012,
	Region2 = 11020,
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
	{ config_id = 11003, monster_id = 21030301, pos = { x = 103.372, y = 40.000, z = -6.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11004, monster_id = 21011401, pos = { x = 103.235, y = 40.003, z = -0.268 }, rot = { x = 0.000, y = 202.589, z = 0.000 }, level = 1 },
	{ config_id = 11005, monster_id = 21011401, pos = { x = 102.761, y = 40.120, z = -12.164 }, rot = { x = 0.000, y = 315.661, z = 0.000 }, level = 1 },
	{ config_id = 11009, monster_id = 20011101, pos = { x = 93.823, y = 40.031, z = -8.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11010, monster_id = 21020601, pos = { x = 88.887, y = 40.000, z = -3.683 }, rot = { x = 0.000, y = 84.414, z = 0.000 }, level = 1 },
	{ config_id = 11011, monster_id = 21020601, pos = { x = 91.940, y = 40.000, z = -4.035 }, rot = { x = 0.000, y = 97.480, z = 0.000 }, level = 1 },
	{ config_id = 11021, monster_id = 20011101, pos = { x = 93.137, y = 40.004, z = -0.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11019, gadget_id = 70900205, pos = { x = 98.040, y = 34.315, z = 6.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11012, shape = RegionShape.CUBIC, size = { x = 50.000, y = 40.000, z = 45.000 }, pos = { x = 93.800, y = 40.000, z = -4.600 } },
	{ config_id = 11020, shape = RegionShape.CUBIC, size = { x = 50.000, y = 40.000, z = 45.000 }, pos = { x = 93.800, y = 40.000, z = -4.600 } }
}

-- 触发器
triggers = {
	{ config_id = 1011001, name = "VARIABLE_CHANGE_11001", event = EventType.EVENT_VARIABLE_CHANGE, source = "key", condition = "condition_EVENT_VARIABLE_CHANGE_11001", action = "action_EVENT_VARIABLE_CHANGE_11001", trigger_count = 0 },
	{ config_id = 1011002, name = "ANY_MONSTER_DIE_11002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11002", action = "action_EVENT_ANY_MONSTER_DIE_11002", trigger_count = 0 },
	{ config_id = 1011006, name = "VARIABLE_CHANGE_11006", event = EventType.EVENT_VARIABLE_CHANGE, source = "key", condition = "condition_EVENT_VARIABLE_CHANGE_11006", action = "action_EVENT_VARIABLE_CHANGE_11006", trigger_count = 0 },
	{ config_id = 1011007, name = "ANY_MONSTER_DIE_11007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11007", action = "action_EVENT_ANY_MONSTER_DIE_11007", trigger_count = 0 },
	{ config_id = 1011012, name = "LEAVE_REGION_11012", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_11012", action = "action_EVENT_LEAVE_REGION_11012", trigger_count = 0 },
	{ config_id = 1011013, name = "CHALLENGE_FAIL_11013", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11013", trigger_count = 0 },
	{ config_id = 1011014, name = "CHALLENGE_SUCCESS_11014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "" },
	{ config_id = 1011015, name = "ANY_MONSTER_LIVE_11015", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_11015", action = "action_EVENT_ANY_MONSTER_LIVE_11015" },
	{ config_id = 1011016, name = "ANY_MONSTER_LIVE_11016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_11016", action = "action_EVENT_ANY_MONSTER_LIVE_11016" },
	{ config_id = 1011017, name = "CHALLENGE_FAIL_11017", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11017", trigger_count = 0 },
	{ config_id = 1011018, name = "CHALLENGE_SUCCESS_11018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "" },
	{ config_id = 1011020, name = "LEAVE_REGION_11020", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_11020", action = "action_EVENT_LEAVE_REGION_11020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "c4", value = 0, no_refresh = false },
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
		gadgets = { 11019 },
		regions = { },
		triggers = { },
		rand_weight = 0
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 11003, 11004, 11005, 11010 },
		gadgets = { },
		regions = { 11012 },
		triggers = { "VARIABLE_CHANGE_11001", "ANY_MONSTER_DIE_11002", "LEAVE_REGION_11012", "ANY_MONSTER_LIVE_11015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 11009, 11011, 11021 },
		gadgets = { },
		regions = { 11020 },
		triggers = { "VARIABLE_CHANGE_11006", "ANY_MONSTER_DIE_11007", "ANY_MONSTER_LIVE_11016", "LEAVE_REGION_11020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为4
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11001(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_11002(context, evt)
	--检查configeID是否大于0
	if 0 >= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11002(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_11006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为3
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11006(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_11007(context, evt)
	--检查configeID是否大于0
	if 0 >= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11007(context, evt)
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
function condition_EVENT_LEAVE_REGION_11012(context, evt)
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
function action_EVENT_LEAVE_REGION_11012(context, evt)
	--离开区域 挑战失败
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "StopChildChallengeFromDiffGroup", {defs.challenge1,0})
	
	 ScriptLib.PrintContextLog(context, "离开区域，挑战失败!!!!!!!!!!!")
	
	
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f4", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11013(context, evt)
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f4", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_11015(context, evt)
	if defs.monster_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_11015(context, evt)
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_11016(context, evt)
	if defs.monster_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_11016(context, evt)
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

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11017(context, evt)
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f4", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_11020(context, evt)
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
function action_EVENT_LEAVE_REGION_11020(context, evt)
	--离开区域 挑战失败
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "StopChildChallengeFromDiffGroup", {defs.challenge1,0})
	
	 ScriptLib.PrintContextLog(context, "离开区域，挑战失败!!!!!!!!!!!")
	
	
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "f4", 1, defs.group_main) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 3)
	
	return 0
end