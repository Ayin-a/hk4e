-- 基础信息
local base_info = {
	group_id = 133108196
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 196001, monster_id = 25010201, pos = { x = -468.653, y = 200.693, z = -830.209 }, rot = { x = 0.000, y = 284.219, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 7 },
	{ config_id = 196003, monster_id = 25010601, pos = { x = -471.910, y = 200.693, z = -818.967 }, rot = { x = 0.000, y = 150.405, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 7 },
	{ config_id = 196004, monster_id = 25010501, pos = { x = -471.210, y = 200.575, z = -820.096 }, rot = { x = 0.000, y = 341.809, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 9006, area_id = 7 },
	{ config_id = 196012, monster_id = 25030102, pos = { x = -457.069, y = 201.075, z = -836.324 }, rot = { x = 0.000, y = 238.394, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, isElite = true, area_id = 7 },
	{ config_id = 196014, monster_id = 25030301, pos = { x = -470.354, y = 200.485, z = -829.280 }, rot = { x = 0.000, y = 109.480, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 196024, monster_id = 25010501, pos = { x = -455.523, y = 201.308, z = -829.179 }, rot = { x = 0.000, y = 251.018, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 196025, monster_id = 25030201, pos = { x = -451.827, y = 200.741, z = -837.197 }, rot = { x = 0.000, y = 273.602, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 196026, monster_id = 25010201, pos = { x = -453.267, y = 201.285, z = -834.090 }, rot = { x = 0.000, y = 271.786, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 },
	{ config_id = 196027, monster_id = 25010201, pos = { x = -454.072, y = 200.665, z = -838.847 }, rot = { x = 0.000, y = 289.916, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 196006, gadget_id = 70800102, pos = { x = -468.659, y = 200.781, z = -828.297 }, rot = { x = 357.623, y = 7.895, z = 9.271 }, level = 1, area_id = 7 },
	{ config_id = 196007, gadget_id = 70220062, pos = { x = -467.676, y = 200.912, z = -828.994 }, rot = { x = 358.236, y = 359.850, z = 9.753 }, level = 1, area_id = 7 },
	{ config_id = 196008, gadget_id = 70220064, pos = { x = -470.552, y = 200.551, z = -815.360 }, rot = { x = 359.630, y = 6.859, z = 5.646 }, level = 1, area_id = 7 },
	{ config_id = 196009, gadget_id = 70800089, pos = { x = -487.615, y = 200.000, z = -823.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 196010, gadget_id = 70800102, pos = { x = -468.294, y = 200.782, z = -815.016 }, rot = { x = 358.117, y = 4.500, z = 5.252 }, level = 1, area_id = 7 },
	{ config_id = 196011, gadget_id = 70800102, pos = { x = -467.307, y = 201.005, z = -827.939 }, rot = { x = 357.289, y = 8.096, z = 9.558 }, level = 1, area_id = 7 },
	{ config_id = 196017, gadget_id = 70800056, pos = { x = -469.708, y = 200.398, z = -831.138 }, rot = { x = 354.690, y = 7.557, z = 8.814 }, level = 1, area_id = 7 },
	{ config_id = 196019, gadget_id = 70300118, pos = { x = -468.659, y = 200.781, z = -828.297 }, rot = { x = 358.872, y = 5.326, z = 4.915 }, level = 1, area_id = 7 },
	{ config_id = 196020, gadget_id = 70300118, pos = { x = -468.294, y = 200.782, z = -815.016 }, rot = { x = 358.117, y = 4.500, z = 5.252 }, level = 1, area_id = 7 },
	{ config_id = 196021, gadget_id = 70300118, pos = { x = -467.307, y = 201.005, z = -827.939 }, rot = { x = 358.697, y = 5.230, z = 4.662 }, level = 1, area_id = 7 },
	{ config_id = 196022, gadget_id = 70220063, pos = { x = -469.715, y = 200.636, z = -814.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 196029, gadget_id = 70220063, pos = { x = -469.910, y = 200.893, z = -816.211 }, rot = { x = 68.891, y = 316.766, z = 256.374 }, level = 1, area_id = 7 },
	{ config_id = 196030, gadget_id = 70300104, pos = { x = -466.624, y = 200.945, z = -816.604 }, rot = { x = 0.660, y = 353.996, z = 5.177 }, level = 1, area_id = 7 },
	{ config_id = 196031, gadget_id = 70300104, pos = { x = -466.692, y = 201.137, z = -821.702 }, rot = { x = 357.957, y = 172.298, z = 352.677 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	-- 到达位置通知任务流转
	{ config_id = 196023, shape = RegionShape.SPHERE, radius = 10, pos = { x = -465.350, y = 200.000, z = -823.878 }, area_id = 7 },
	-- 爆竹箱使用region
	{ config_id = 196032, shape = RegionShape.SPHERE, radius = 30, pos = { x = -461.218, y = 200.786, z = -823.706 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } },
	-- 弹出教学
	{ config_id = 196033, shape = RegionShape.SPHERE, radius = 30, pos = { x = -467.653, y = 200.346, z = -823.867 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1196002, name = "ANY_MONSTER_DIE_196002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_196002", action = "action_EVENT_ANY_MONSTER_DIE_196002" },
	{ config_id = 1196005, name = "ANY_MONSTER_DIE_196005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_196005", action = "action_EVENT_ANY_MONSTER_DIE_196005" },
	-- 16环任务开始
	{ config_id = 1196013, name = "QUEST_START_196013", event = EventType.EVENT_QUEST_START, source = "4003916", condition = "", action = "action_EVENT_QUEST_START_196013", trigger_count = 0 },
	{ config_id = 1196015, name = "SELECT_OPTION_196015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_196015", action = "action_EVENT_SELECT_OPTION_196015", trigger_count = 0 },
	{ config_id = 1196016, name = "SELECT_OPTION_196016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_196016", action = "action_EVENT_SELECT_OPTION_196016", trigger_count = 0 },
	{ config_id = 1196018, name = "SELECT_OPTION_196018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_196018", action = "action_EVENT_SELECT_OPTION_196018", trigger_count = 0 },
	-- 到达位置通知任务流转
	{ config_id = 1196023, name = "ENTER_REGION_196023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_196023", action = "action_EVENT_ENTER_REGION_196023", trigger_count = 0 },
	-- 开打
	{ config_id = 1196028, name = "QUEST_START_196028", event = EventType.EVENT_QUEST_START, source = "4003906", condition = "", action = "action_EVENT_QUEST_START_196028", trigger_count = 0 },
	-- 弹出教学
	{ config_id = 1196033, name = "ENTER_REGION_196033", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_196033", action = "action_EVENT_ENTER_REGION_196033" },
	-- 设置三个box
	{ config_id = 1196034, name = "QUEST_FINISH_196034", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_196034", action = "action_EVENT_QUEST_FINISH_196034", trigger_count = 0 },
	-- 时间轴1s后挂特效
	{ config_id = 1196035, name = "TIME_AXIS_PASS_196035", event = EventType.EVENT_TIME_AXIS_PASS, source = "delay", condition = "condition_EVENT_TIME_AXIS_PASS_196035", action = "action_EVENT_TIME_AXIS_PASS_196035", trigger_count = 0 },
	-- 创船后开启时间轴
	{ config_id = 1196036, name = "QUEST_START_196036", event = EventType.EVENT_QUEST_START, source = "4003918", condition = "", action = "action_EVENT_QUEST_START_196036", trigger_count = 0 },
	-- 第一次加载
	{ config_id = 1196038, name = "GROUP_REFRESH_196038", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_196038", trigger_count = 0 },
	-- 加载一号箱子
	{ config_id = 1196039, name = "GROUP_LOAD_196039", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196039", action = "action_EVENT_GROUP_LOAD_196039", trigger_count = 0 },
	-- 加载二号箱子
	{ config_id = 1196040, name = "GROUP_LOAD_196040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196040", action = "action_EVENT_GROUP_LOAD_196040", trigger_count = 0 },
	-- 加载三号箱子
	{ config_id = 1196041, name = "GROUP_LOAD_196041", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196041", action = "action_EVENT_GROUP_LOAD_196041", trigger_count = 0 },
	-- 捡起一号箱子
	{ config_id = 1196042, name = "GADGET_STATE_CHANGE_196042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_196042", action = "action_EVENT_GADGET_STATE_CHANGE_196042", trigger_count = 0 },
	-- 捡起二号箱子
	{ config_id = 1196043, name = "GADGET_STATE_CHANGE_196043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_196043", action = "action_EVENT_GADGET_STATE_CHANGE_196043", trigger_count = 0 },
	-- 捡起三号箱子
	{ config_id = 1196044, name = "GADGET_STATE_CHANGE_196044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_196044", action = "action_EVENT_GADGET_STATE_CHANGE_196044", trigger_count = 0 },
	-- 超级大保底，发三次通知
	{ config_id = 1196045, name = "GROUP_LOAD_196045", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196045", action = "action_EVENT_GROUP_LOAD_196045", trigger_count = 0 },
	-- 在16环开始后创建箱子保底交互
	{ config_id = 1196046, name = "GADGET_CREATE_196046", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_196046", action = "action_EVENT_GADGET_CREATE_196046", trigger_count = 0 },
	-- 加载一号特效
	{ config_id = 1196047, name = "GROUP_LOAD_196047", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196047", action = "action_EVENT_GROUP_LOAD_196047", trigger_count = 0 },
	-- 加载二号特效
	{ config_id = 1196048, name = "GROUP_LOAD_196048", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196048", action = "action_EVENT_GROUP_LOAD_196048", trigger_count = 0 },
	-- 加载三号特效
	{ config_id = 1196049, name = "GROUP_LOAD_196049", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196049", action = "action_EVENT_GROUP_LOAD_196049", trigger_count = 0 },
	-- 爆竹箱加载设置变量
	{ config_id = 1196050, name = "GADGET_CREATE_196050", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_196050", action = "action_EVENT_GADGET_CREATE_196050", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start16", value = 0, no_refresh = false },
	{ config_id = 2, name = "pick1", value = 0, no_refresh = false },
	{ config_id = 3, name = "pick2", value = 0, no_refresh = false },
	{ config_id = 4, name = "pick3", value = 0, no_refresh = false },
	{ config_id = 5, name = "start06", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1196037, name = "GROUP_LOAD_196037", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196037", action = "action_EVENT_GROUP_LOAD_196037", trigger_count = 0 }
	}
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
		gadgets = { 196007, 196008, 196009, 196017, 196022, 196029, 196030, 196031 },
		regions = { 196023, 196032 },
		triggers = { "QUEST_START_196013", "SELECT_OPTION_196015", "SELECT_OPTION_196016", "SELECT_OPTION_196018", "ENTER_REGION_196023", "QUEST_START_196028", "QUEST_FINISH_196034", "TIME_AXIS_PASS_196035", "QUEST_START_196036", "GROUP_REFRESH_196038", "GROUP_LOAD_196039", "GROUP_LOAD_196040", "GROUP_LOAD_196041", "GADGET_STATE_CHANGE_196042", "GADGET_STATE_CHANGE_196043", "GADGET_STATE_CHANGE_196044", "GROUP_LOAD_196045", "GADGET_CREATE_196046", "GROUP_LOAD_196047", "GROUP_LOAD_196048", "GROUP_LOAD_196049", "GADGET_CREATE_196050" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 196012, 196024, 196025, 196026, 196027 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_196002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 196019, 196020, 196021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 196001, 196003, 196004, 196014 },
		gadgets = { },
		regions = { 196033 },
		triggers = { "ANY_MONSTER_DIE_196005", "ENTER_REGION_196033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 箱子suite，按需刷取,
		monsters = { },
		gadgets = { 196006, 196010, 196011 },
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
function condition_EVENT_ANY_MONSTER_DIE_196002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310819601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "Variable_EndGame" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_EndGame", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 196006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 196010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 196011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_196005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108196, 2)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_196013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108196, 196006, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108196, 196010, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108196, 196011, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108196, 3)
	
	-- 将configid为 196006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 196010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 196011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "start16" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start16", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "picked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "picked", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "pick1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pick1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "pick2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pick2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "pick3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pick3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_196015(context, evt)
	if 196006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_196015(context, evt)
	-- 删除指定group： 133108196 ；指定config：196006；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108196, 196006, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 196006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133108196, EntityType.GADGET, 196019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310819602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_196016(context, evt)
	if 196010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_196016(context, evt)
	-- 删除指定group： 133108196 ；指定config：196010；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108196, 196010, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 196010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133108196, EntityType.GADGET, 196020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310819602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_196018(context, evt)
	if 196011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_196018(context, evt)
	-- 删除指定group： 133108196 ；指定config：196011；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108196, 196011, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 196011 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196011, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133108196, EntityType.GADGET, 196021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310819602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_196023(context, evt)
	if evt.param1 ~= 196023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_196023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310819603") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_196028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108196, 4)
	
	-- 将本组内变量名为 "Variable_StartWatcherCountDown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_StartWatcherCountDown", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "start06" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start06", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_196033(context, evt)
	if evt.param1 ~= 196033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_196033(context, evt)
	-- 显示id为150的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,150,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_196034(context, evt)
	--检查ID为4003918的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4003918 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_196034(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, "GV_Mark_Skiff", 1)
	
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_Box_Count", 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_196035(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_196035(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	
	
	ScriptLib.PrintContextLog(context, "adding effs")
	
	ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, "GV_Mark_Skiff", 1)
	
	ScriptLib.SetTeamServerGlobalValue(context, uid_list[1], "SGV_Box_Count", 1)
	
	ScriptLib.EndTimeAxis(context, "delay")
	
	ScriptLib.PrintContextLog(context, "added effs")
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_196036(context, evt)
	-- 创建标识为"delay"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {2}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_196038(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108196, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196039(context, evt)
	-- 判断变量"pick1"为0
	if ScriptLib.GetGroupVariableValue(context, "pick1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196039(context, evt)
	-- 创建id为196006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 196006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196040(context, evt)
	-- 判断变量"pick2"为0
	if ScriptLib.GetGroupVariableValue(context, "pick2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196040(context, evt)
	-- 创建id为196010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 196010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196041(context, evt)
	-- 判断变量"pick3"为0
	if ScriptLib.GetGroupVariableValue(context, "pick3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196041(context, evt)
	-- 创建id为196011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 196011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_196042(context, evt)
	if 196006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_196042(context, evt)
	-- 将本组内变量名为 "pick1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pick1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_196043(context, evt)
	if 196010 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_196043(context, evt)
	-- 将本组内变量名为 "pick2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pick2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_196044(context, evt)
	if 196011 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_196044(context, evt)
	-- 将本组内变量名为 "pick3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pick3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196045(context, evt)
	-- 判断变量"pick1"为1
	if ScriptLib.GetGroupVariableValue(context, "pick1") ~= 1 then
			return false
	end
	
	-- 判断变量"pick2"为1
	if ScriptLib.GetGroupVariableValue(context, "pick2") ~= 1 then
			return false
	end
	
	-- 判断变量"pick3"为1
	if ScriptLib.GetGroupVariableValue(context, "pick3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196045(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310819602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310819602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310819602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_196046(context, evt)
	if 70800102 ~= evt.param2 then
		return false
	end
	
	-- 判断变量"start16"为1
	if ScriptLib.GetGroupVariableValue(context, "start16") ~= 1 then
			return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_196046(context, evt)
	
	ScriptLib.SetWorktopOptionsByGroupId(context, 133108196, evt.param1, {68})
	ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196047(context, evt)
	-- 判断变量"pick1"为0
	if ScriptLib.GetGroupVariableValue(context, "pick1") ~= 0 then
			return false
	end
	
	-- 判断变量"start16"为1
	if ScriptLib.GetGroupVariableValue(context, "start16") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196047(context, evt)
	-- 创建id为196019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 196019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196048(context, evt)
	-- 判断变量"pick2"为0
	if ScriptLib.GetGroupVariableValue(context, "pick2") ~= 0 then
			return false
	end
	
	-- 判断变量"start16"为1
	if ScriptLib.GetGroupVariableValue(context, "start16") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196048(context, evt)
	-- 创建id为196020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 196020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_196049(context, evt)
	-- 判断变量"pick3"为0
	if ScriptLib.GetGroupVariableValue(context, "pick3") ~= 0 then
			return false
	end
	
	-- 判断变量"start16"为1
	if ScriptLib.GetGroupVariableValue(context, "start16") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196049(context, evt)
	-- 创建id为196021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 196021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_196050(context, evt)
	if 196017 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"start06"为1
	if ScriptLib.GetGroupVariableValue(context, "start06") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_196050(context, evt)
	-- 将本组内变量名为 "Variable_StartWatcherCountDown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_StartWatcherCountDown", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/Firecracker"