-- 基础信息
local base_info = {
	group_id = 133008660
}

-- DEFS_MISCS
local defs = {
    GroupID = 133008660,
    AGRegionConfigID = 660022,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part2",
    AGKey = "_Activity_ToMoon_Part2_Level",
    ChallengeRegionConfigID = 660022,
    ChallengeID = 111184,
    TriggerTag = 660023,
    TargetTriggerTime = 15,
    AreaID = 3, --  1璃月 2蒙德 3雪山
    OverKey = "OverKey",
    WatchKey = "save",
}

local Phase ={
        [1] = {2,3,6},
        [2] = {2,3,4,6},
        [3] = {2,3,4,5,6},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[660001] = { config_id = 660001, monster_id = 21010201, pos = { x = 1062.855, y = 285.861, z = -448.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660002] = { config_id = 660002, monster_id = 21010201, pos = { x = 1067.354, y = 285.861, z = -445.642 }, rot = { x = 0.000, y = 275.205, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660003] = { config_id = 660003, monster_id = 21010401, pos = { x = 1066.369, y = 285.861, z = -431.916 }, rot = { x = 0.000, y = 175.401, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9013, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660004] = { config_id = 660004, monster_id = 21011301, pos = { x = 1063.319, y = 285.861, z = -438.689 }, rot = { x = 0.000, y = 183.637, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660005] = { config_id = 660005, monster_id = 21011401, pos = { x = 1063.500, y = 285.861, z = -437.015 }, rot = { x = 0.000, y = 158.256, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660006] = { config_id = 660006, monster_id = 21011401, pos = { x = 1065.824, y = 285.861, z = -436.689 }, rot = { x = 0.000, y = 158.256, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660007] = { config_id = 660007, monster_id = 21010401, pos = { x = 1062.976, y = 285.861, z = -431.420 }, rot = { x = 0.000, y = 158.256, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660008] = { config_id = 660008, monster_id = 21010401, pos = { x = 1092.679, y = 285.861, z = -431.394 }, rot = { x = 0.000, y = 200.139, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660009] = { config_id = 660009, monster_id = 21010901, pos = { x = 1089.385, y = 285.861, z = -428.686 }, rot = { x = 0.000, y = 200.139, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660010] = { config_id = 660010, monster_id = 28020304, pos = { x = 1080.250, y = 285.861, z = -458.661 }, rot = { x = 0.000, y = 354.519, z = 0.000 }, level = 1, drop_tag = "走兽", affix = { 1031 }, isOneoff = true, title_id = 10003, special_name_id = 10019, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660011] = { config_id = 660011, monster_id = 21010901, pos = { x = 1089.195, y = 285.861, z = -452.129 }, rot = { x = 0.000, y = 329.100, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660012] = { config_id = 660012, monster_id = 21010901, pos = { x = 1090.982, y = 285.861, z = -449.149 }, rot = { x = 0.000, y = 329.100, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660013] = { config_id = 660013, monster_id = 21011301, pos = { x = 1067.478, y = 285.861, z = -440.574 }, rot = { x = 0.000, y = 226.320, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660014] = { config_id = 660014, monster_id = 21010201, pos = { x = 1087.538, y = 285.861, z = -435.728 }, rot = { x = 0.000, y = 139.603, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1007 }, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[660034] = { config_id = 660034, monster_id = 21010201, pos = { x = 1089.754, y = 285.861, z = -433.842 }, rot = { x = 0.000, y = 139.603, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1007 }, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[660015] = { config_id = 660015, gadget_id = 70310017, pos = { x = 1064.577, y = 285.861, z = -443.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[660016] = { config_id = 660016, gadget_id = 70310107, pos = { x = 1064.580, y = 285.861, z = -443.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[660018] = { config_id = 660018, gadget_id = 70217008, pos = { x = 1079.506, y = 285.861, z = -438.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 21500018, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 10 },
	[660029] = { config_id = 660029, gadget_id = 70310017, pos = { x = 1091.597, y = 285.861, z = -438.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[660033] = { config_id = 660033, gadget_id = 70310107, pos = { x = 1091.600, y = 285.861, z = -438.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
	[660022] = { config_id = 660022, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 1079.488, y = 285.861, z = -439.783 }, height = 100.000, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1660019, name = "GADGET_CREATE_660019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_660019", action = "action_EVENT_GADGET_CREATE_660019", trigger_count = 0 },
	{ config_id = 1660020, name = "ANY_GADGET_DIE_660020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_660020", action = "action_EVENT_ANY_GADGET_DIE_660020", trigger_count = 0 },
	{ config_id = 1660021, name = "TIME_AXIS_PASS_660021", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_660021", trigger_count = 0 },
	{ config_id = 1660022, name = "ENTER_REGION_660022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_660022", action = "" },
	{ config_id = 1660023, name = "ANY_MONSTER_DIE_660023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_660023", trigger_count = 0, tag = "660023" },
	{ config_id = 1660024, name = "CHALLENGE_SUCCESS_660024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111840", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_660024" },
	{ config_id = 1660025, name = "ANY_MONSTER_DIE_660025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_660025", action = "action_EVENT_ANY_MONSTER_DIE_660025" },
	{ config_id = 1660026, name = "ANY_MONSTER_DIE_660026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_660026", action = "action_EVENT_ANY_MONSTER_DIE_660026" },
	{ config_id = 1660027, name = "GADGET_STATE_CHANGE_660027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_660027", action = "action_EVENT_GADGET_STATE_CHANGE_660027" },
	{ config_id = 1660030, name = "GADGET_CREATE_660030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_660030", action = "action_EVENT_GADGET_CREATE_660030", trigger_count = 0 },
	{ config_id = 1660031, name = "ANY_GADGET_DIE_660031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_660031", action = "action_EVENT_ANY_GADGET_DIE_660031", trigger_count = 0 },
	{ config_id = 1660032, name = "TIME_AXIS_PASS_660032", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_660032", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "save", value = 0, no_refresh = true },
	{ config_id = 2, name = "IS_CAMP_FINISHED", value = 0, no_refresh = true },
	{ config_id = 3, name = "OverKey", value = 0, no_refresh = false },
	{ config_id = 4, name = "stage", value = 1, no_refresh = true }
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
		regions = { 660022 },
		triggers = { "ENTER_REGION_660022", "ANY_MONSTER_DIE_660023", "CHALLENGE_SUCCESS_660024", "GADGET_STATE_CHANGE_660027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 暖源,
		monsters = { },
		gadgets = { 660015 },
		regions = { },
		triggers = { "GADGET_CREATE_660019", "ANY_GADGET_DIE_660020", "TIME_AXIS_PASS_660021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪,
		monsters = { 660001, 660002, 660004, 660013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_660025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二波怪,
		monsters = { 660003, 660005, 660006, 660007, 660008, 660009, 660014, 660034 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_660026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三波怪,
		monsters = { 660010, 660011, 660012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 暖源2,
		monsters = { },
		gadgets = { 660029 },
		regions = { },
		triggers = { "GADGET_CREATE_660030", "ANY_GADGET_DIE_660031", "TIME_AXIS_PASS_660032" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 宝箱,
		monsters = { },
		gadgets = { 660018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
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
function condition_EVENT_GADGET_CREATE_660019(context, evt)
	if 660015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_660019(context, evt)
	-- 创建id为660016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 660016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 660015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 660015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_660020(context, evt)
	if 660016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_660020(context, evt)
	-- 将configid为 660015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 660015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"T1"，时间节点为{30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {30}, false)
	
	
	-- 调用提示id为 400076 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400076) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_660021(context, evt)
	-- 调用提示id为 400077 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400077) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为660016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 660016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 660015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 660015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_660022(context, evt)
	if evt.param1 ~= 660022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_660023(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_660024(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008660, 7)
	
	-- 将configid为 660015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 660015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 660029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 660029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_660025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_660025(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008660, 4)
	
	-- 调用提示id为 400072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_660026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"stage"为2
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_660026(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008660, 5)
	
	-- 调用提示id为 400072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_660027(context, evt)
	if 660018 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_660027(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_660030(context, evt)
	if 660029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_660030(context, evt)
	-- 创建id为660033的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 660033 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 660029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 660029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_660031(context, evt)
	if 660033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_660031(context, evt)
	-- 将configid为 660029 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 660029, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"T2"，时间节点为{30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {30}, false)
	
	
	-- 调用提示id为 400076 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400076) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_660032(context, evt)
	-- 调用提示id为 400077 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400077) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为660033的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 660033 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 660029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 660029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_1/MoonlitCamp"