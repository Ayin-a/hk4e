-- 基础信息
local base_info = {
	group_id = 133001220
}

-- Trigger变量
local defs = {
	challenge_id = 2010061,
	enter_region = 220025,
	leave_region = 220028,
	trigger_time = 1
}

-- DEFS_MISCS
local Phase ={
        [1] = {3,6},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[220001] = { config_id = 220001, monster_id = 24010301, pos = { x = 667.979, y = 201.249, z = -863.793 }, rot = { x = 0.000, y = 255.615, z = 0.000 }, level = 1, drop_tag = "遗迹重机", disableWander = true, affix = { 5218, 9009 }, isOneoff = true, pose_id = 101, title_id = 10134, special_name_id = 10189, climate_area_id = 1, area_id = 10, guest_ban_drop = 63, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	[220002] = { config_id = 220002, monster_id = 21010201, pos = { x = 659.528, y = 200.749, z = -865.940 }, rot = { x = 0.000, y = 100.765, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[220005] = { config_id = 220005, monster_id = 24020201, pos = { x = 654.429, y = 200.542, z = -859.320 }, rot = { x = 0.000, y = 102.491, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5218, 9009 }, pose_id = 100, climate_area_id = 1, area_id = 10 },
	[220006] = { config_id = 220006, monster_id = 24020201, pos = { x = 653.596, y = 200.608, z = -865.072 }, rot = { x = 0.000, y = 103.134, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5218, 9009 }, pose_id = 100, climate_area_id = 1, area_id = 10 },
	[220010] = { config_id = 220010, monster_id = 24010201, pos = { x = 674.589, y = 202.175, z = -862.936 }, rot = { x = 0.000, y = 285.258, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5218, 9009 }, pose_id = 100, climate_area_id = 1, area_id = 10, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	[220011] = { config_id = 220011, monster_id = 24010201, pos = { x = 673.711, y = 202.184, z = -868.565 }, rot = { x = 0.000, y = 277.913, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5218, 9009 }, pose_id = 100, climate_area_id = 1, area_id = 10, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	[220013] = { config_id = 220013, monster_id = 21010201, pos = { x = 660.205, y = 200.685, z = -861.171 }, rot = { x = 0.000, y = 111.804, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[220008] = { config_id = 220008, gadget_id = 70710199, pos = { x = 650.383, y = 201.426, z = -854.358 }, rot = { x = 0.000, y = 290.857, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	[220015] = { config_id = 220015, gadget_id = 70310017, pos = { x = 664.234, y = 200.706, z = -863.703 }, rot = { x = 0.000, y = 14.757, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	[220017] = { config_id = 220017, gadget_id = 70290196, pos = { x = 655.911, y = 200.496, z = -859.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	[220032] = { config_id = 220032, gadget_id = 70800251, pos = { x = 663.347, y = 201.592, z = -868.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[220033] = { config_id = 220033, gadget_id = 70800251, pos = { x = 660.002, y = 201.473, z = -856.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[220034] = { config_id = 220034, gadget_id = 70800251, pos = { x = 654.215, y = 201.413, z = -865.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	[220003] = { config_id = 220003, shape = RegionShape.SPHERE, radius = 70, pos = { x = 657.039, y = 200.524, z = -862.394 }, area_id = 10 },
	[220023] = { config_id = 220023, shape = RegionShape.SPHERE, radius = 70, pos = { x = 657.039, y = 200.524, z = -862.394 }, area_id = 10 },
	[220025] = { config_id = 220025, shape = RegionShape.SPHERE, radius = 40, pos = { x = 655.139, y = 200.528, z = -863.692 }, area_id = 10 },
	[220028] = { config_id = 220028, shape = RegionShape.SPHERE, radius = 70, pos = { x = 655.139, y = 200.528, z = -863.692 }, area_id = 10, team_ability_group_list = { "Activity_VintageChallenge_Stage_3" } }
}

-- 触发器
triggers = {
	{ config_id = 1220009, name = "ANY_MONSTER_DIE_220009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_220009", action = "action_EVENT_ANY_MONSTER_DIE_220009", trigger_count = 0 },
	{ config_id = 1220012, name = "ANY_MONSTER_DIE_220012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_220012", action = "action_EVENT_ANY_MONSTER_DIE_220012", trigger_count = 0 },
	{ config_id = 1220016, name = "ANY_MONSTER_DIE_220016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_220016", action = "action_EVENT_ANY_MONSTER_DIE_220016", trigger_count = 0 },
	{ config_id = 1220018, name = "MONSTER_BATTLE_220018", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_220018" },
	{ config_id = 1220019, name = "TIME_AXIS_PASS_220019", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_220019" },
	{ config_id = 1220023, name = "ENTER_REGION_220023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_220023", action = "action_EVENT_ENTER_REGION_220023" },
	{ config_id = 1220024, name = "ANY_MONSTER_DIE_220024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_220024", action = "action_EVENT_ANY_MONSTER_DIE_220024" },
	{ config_id = 1220026, name = "TIME_AXIS_PASS_220026", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_220026", trigger_count = 0 },
	{ config_id = 1220027, name = "VARIABLE_CHANGE_220027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_220027", action = "action_EVENT_VARIABLE_CHANGE_220027", trigger_count = 0 },
	{ config_id = 1220029, name = "TIME_AXIS_PASS_220029", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_SEED", condition = "", action = "action_EVENT_TIME_AXIS_PASS_220029" },
	{ config_id = 1220030, name = "TIME_AXIS_PASS_220030", event = EventType.EVENT_TIME_AXIS_PASS, source = "T3", condition = "", action = "action_EVENT_TIME_AXIS_PASS_220030", trigger_count = 0 },
	{ config_id = 1220031, name = "VARIABLE_CHANGE_220031", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_220031", action = "action_EVENT_VARIABLE_CHANGE_220031", trigger_count = 0 },
	{ config_id = 1220035, name = "ANY_MONSTER_DIE_220035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_220035", action = "action_EVENT_ANY_MONSTER_DIE_220035", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 5, name = "DIE", value = 0, no_refresh = false },
	{ config_id = 6, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 220014, monster_id = 21030501, pos = { x = 662.119, y = 200.579, z = -863.406 }, rot = { x = 0.000, y = 104.702, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10 }
	},
	gadgets = {
		{ config_id = 220007, gadget_id = 70710200, pos = { x = 673.008, y = 199.712, z = -872.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
		{ config_id = 220020, gadget_id = 70220060, pos = { x = 666.320, y = 200.819, z = -856.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
		{ config_id = 220021, gadget_id = 70220059, pos = { x = 649.514, y = 200.663, z = -863.698 }, rot = { x = 0.000, y = 345.062, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
		{ config_id = 220022, gadget_id = 70220059, pos = { x = 649.916, y = 200.663, z = -861.596 }, rot = { x = 0.000, y = 10.536, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
		{ config_id = 220043, gadget_id = 70220060, pos = { x = 667.248, y = 200.704, z = -858.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
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
		gadgets = { 220017 },
		regions = { 220003, 220023, 220025, 220028 },
		triggers = { "ENTER_REGION_220023", "ANY_MONSTER_DIE_220024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 220008, 220015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 220001, 220002, 220013 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_220018", "TIME_AXIS_PASS_220019", "TIME_AXIS_PASS_220029" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 220005, 220006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_220009", "ANY_MONSTER_DIE_220012", "TIME_AXIS_PASS_220026", "VARIABLE_CHANGE_220027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 220010, 220011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_220016", "TIME_AXIS_PASS_220030", "VARIABLE_CHANGE_220031", "ANY_MONSTER_DIE_220035" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 220032, 220033, 220034 },
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
function condition_EVENT_ANY_MONSTER_DIE_220009(context, evt)
	--判断死亡怪物的configid是否为 220005
	if evt.param1 ~= 220005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_220009(context, evt)
	-- 针对当前group内变量名为 "DIE" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "DIE", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_220012(context, evt)
	--判断死亡怪物的configid是否为 220006
	if evt.param1 ~= 220006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_220012(context, evt)
	-- 针对当前group内变量名为 "DIE" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "DIE", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_220016(context, evt)
	--判断死亡怪物的configid是否为 220010
	if evt.param1 ~= 220010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_220016(context, evt)
	-- 针对当前group内变量名为 "DIE" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "DIE", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_220018(context, evt)
	-- 创建标识为"T1"，时间节点为{12}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {12}, false)
	
	
	-- 创建标识为"T_SEED"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_SEED", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_220019(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001220, 4)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001220, 6)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001220, 6)
	
	-- 调用提示id为 400069 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400069) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_220023(context, evt)
	if evt.param1 ~= 220023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_220023(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001220, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_220024(context, evt)
	if 220001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_220024(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133001220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001220, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001220, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001220, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001220, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_220026(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001220, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001220, 6)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001220, 6)
	
	-- 调用提示id为 400069 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400069) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "DIE" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "DIE", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001220, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_220027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"DIE"为2
	if ScriptLib.GetGroupVariableValue(context, "DIE") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_220027(context, evt)
	-- 创建标识为"T2"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {10}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_220029(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_220030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001220, 4)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001220, 6)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001220, 6)
	
	-- 调用提示id为 400069 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400069) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "DIE" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "DIE", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001220, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_220031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"DIE"为2
	if ScriptLib.GetGroupVariableValue(context, "DIE") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_220031(context, evt)
	-- 创建标识为"T3"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T3", {10}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_220035(context, evt)
	--判断死亡怪物的configid是否为 220011
	if evt.param1 ~= 220011 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_220035(context, evt)
	-- 针对当前group内变量名为 "DIE" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "DIE", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

require "V3_1/CampChallenge"