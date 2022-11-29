-- 基础信息
local base_info = {
	group_id = 133105347
}

-- DEFS_MISCS
function Avatar_Eula_Plot_Fail(context)
        ScriptLib.SetGroupVariableValue(context, "youla", 1)
        ScriptLib.PrintContextLog(context, "youla fail")
        return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 347001, monster_id = 20011001, pos = { x = 939.536, y = 341.050, z = -629.356 }, rot = { x = 0.000, y = 237.694, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 347002, monster_id = 20010901, pos = { x = 929.329, y = 340.280, z = -630.617 }, rot = { x = 0.000, y = 142.813, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 347003, monster_id = 20011101, pos = { x = 928.866, y = 340.375, z = -631.433 }, rot = { x = 348.837, y = 150.875, z = 3.843 }, level = 1, drop_id = 1000100, affix = { 6106 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 347004, monster_id = 21011001, pos = { x = 943.697, y = 341.444, z = -629.181 }, rot = { x = 0.000, y = 265.984, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 347005, monster_id = 21030101, pos = { x = 941.885, y = 340.992, z = -627.765 }, rot = { x = 0.000, y = 265.984, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 347006, monster_id = 21010901, pos = { x = 942.724, y = 341.141, z = -625.831 }, rot = { x = 0.000, y = 265.984, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 347007, monster_id = 20010901, pos = { x = 940.754, y = 341.133, z = -629.401 }, rot = { x = 0.000, y = 237.694, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 347012, monster_id = 20011001, pos = { x = 941.832, y = 341.389, z = -630.212 }, rot = { x = 0.000, y = 237.694, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 347018, monster_id = 21011201, pos = { x = 910.962, y = 337.840, z = -627.107 }, rot = { x = 0.000, y = 107.051, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 347019, monster_id = 21011201, pos = { x = 913.073, y = 337.723, z = -625.855 }, rot = { x = 0.000, y = 98.633, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 347008, gadget_id = 70350023, pos = { x = 934.447, y = 340.649, z = -629.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 347021, gadget_id = 70310023, pos = { x = 933.749, y = 340.581, z = -629.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 347020, shape = RegionShape.SPHERE, radius = 10, pos = { x = 933.603, y = 340.505, z = -629.042 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1347009, name = "ANY_MONSTER_DIE_347009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_347009", action = "action_EVENT_ANY_MONSTER_DIE_347009", trigger_count = 0 },
	{ config_id = 1347010, name = "ANY_MONSTER_DIE_347010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_347010", action = "action_EVENT_ANY_MONSTER_DIE_347010", trigger_count = 0 },
	{ config_id = 1347011, name = "GADGET_CREATE_347011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_347011", action = "action_EVENT_GADGET_CREATE_347011", trigger_count = 0 },
	{ config_id = 1347013, name = "ANY_MONSTER_DIE_347013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_347013", action = "action_EVENT_ANY_MONSTER_DIE_347013", trigger_count = 0 },
	{ config_id = 1347014, name = "SELECT_OPTION_347014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_347014", action = "action_EVENT_SELECT_OPTION_347014", trigger_count = 0 },
	{ config_id = 1347015, name = "CHALLENGE_SUCCESS_347015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1012102", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_347015", trigger_count = 0 },
	{ config_id = 1347016, name = "CHALLENGE_FAIL_347016", event = EventType.EVENT_CHALLENGE_FAIL, source = "1012102", condition = "", action = "action_EVENT_CHALLENGE_FAIL_347016", trigger_count = 0 },
	{ config_id = 1347017, name = "VARIABLE_CHANGE_347017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_347017", action = "action_EVENT_VARIABLE_CHANGE_347017", trigger_count = 0, tag = "666" },
	{ config_id = 1347020, name = "ENTER_REGION_347020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_347020", action = "action_EVENT_ENTER_REGION_347020" },
	{ config_id = 1347022, name = "VARIABLE_CHANGE_347022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_347022", action = "action_EVENT_VARIABLE_CHANGE_347022", trigger_count = 0, tag = "777" }
}

-- 变量
variables = {
	{ config_id = 1, name = "youla", value = 0, no_refresh = false }
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
		gadgets = { 347008, 347021 },
		regions = { 347020 },
		triggers = { "GADGET_CREATE_347011", "SELECT_OPTION_347014", "CHALLENGE_SUCCESS_347015", "CHALLENGE_FAIL_347016", "VARIABLE_CHANGE_347017", "ENTER_REGION_347020", "VARIABLE_CHANGE_347022" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 347001, 347007, 347012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_347009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 347002, 347003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_347010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 347004, 347005, 347006, 347018, 347019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_347013" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_347009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_347009(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=0,y=0,z=0}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105347, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105347, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_347010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_347010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=0,y=0,z=0}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105347, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105347, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_347011(context, evt)
	if 347008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_347011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133105347, 347008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_347013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_347013(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105347, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_347014(context, evt)
	-- 判断是gadgetid 347008 option_id 7
	if 347008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_347014(context, evt)
	-- 将configid为 347008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 347008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "youla" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "youla", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105347, 2)
	
	-- 删除指定group： 133105347 ；指定config：347008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133105347, 347008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012110") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 开启编号为888，挑战内容为2的区域挑战
	ScriptLib.CreateFatherChallenge(context, 1012102, 227, 180, {success = 1, fail =1})
	ScriptLib.AttachChildChallenge(context, 1012102, 10, 2,{180, 133105347, 10},{}, {success=1,fail=1})
	ScriptLib.AttachChildChallenge(context, 1012102, 11, 224,{180, 3, 666, 1},{}, {success=0, fail=1})
	ScriptLib.AttachChildChallenge(context, 1012102, 12, 225,{180, 3, 777, 1},{}, {success=0, fail=1})
	ScriptLib.StartFatherChallenge(context, 1012102)
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_347015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105347, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105347, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105347, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105347, 5)
	
	-- 将configid为 347008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 347008, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012111") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_347016(context, evt)
	-- 将configid为 347008 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 347008, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105347, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105347, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105347, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105347, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133105347, 347008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012199") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_347017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"youla"为1
	if ScriptLib.GetGroupVariableValue(context, "youla") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_347017(context, evt)
	-- 终止识别id为11的挑战，并判定失败
		ScriptLib.StopChallenge(context, 11, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_347020(context, evt)
	if evt.param1 ~= 347020 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_347020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012118") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_347022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"youla"为1
	if ScriptLib.GetGroupVariableValue(context, "youla") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_347022(context, evt)
	-- 终止识别id为12的挑战，并判定失败
		ScriptLib.StopChallenge(context, 12, 0)
	
	return 0
end