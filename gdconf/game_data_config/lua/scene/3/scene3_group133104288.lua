-- 基础信息
local base_info = {
	group_id = 133104288
}

-- DEFS_MISCS
local defs = {
    GroupID = 133104288,
    AGRegionConfigID = 288022,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part3",
    AGKey = "_Activity_ToMoon_Part3_Level",
    ChallengeRegionConfigID = 288022,
    ChallengeID = 111185,
    TriggerTag = 288023,
    TargetTriggerTime = 8,
    AreaID = 1, --  1璃月 2蒙德 3雪山
    OverKey = "OverKey",
    WatchKey = "save",
}

local Phase ={
        [1] = {3,4},
        [2] = {3,4,5},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[288001] = { config_id = 288001, monster_id = 21020201, pos = { x = 409.069, y = 201.044, z = -69.099 }, rot = { x = 0.000, y = 25.823, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4140, 1007 }, isElite = true, isOneoff = true, pose_id = 401, area_id = 9, guest_ban_drop = 63 },
	[288002] = { config_id = 288002, monster_id = 21020201, pos = { x = 407.939, y = 201.065, z = -74.371 }, rot = { x = 0.000, y = 196.661, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4140, 1007 }, isElite = true, isOneoff = true, pose_id = 401, area_id = 9, guest_ban_drop = 63 },
	[288005] = { config_id = 288005, monster_id = 21010201, pos = { x = 414.583, y = 201.468, z = -64.922 }, rot = { x = 0.000, y = 232.587, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, pose_id = 9012, area_id = 9, guest_ban_drop = 63 },
	[288006] = { config_id = 288006, monster_id = 21010402, pos = { x = 408.295, y = 201.771, z = -62.363 }, rot = { x = 0.000, y = 163.098, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, pose_id = 9012, area_id = 9, guest_ban_drop = 63 },
	[288007] = { config_id = 288007, monster_id = 21010201, pos = { x = 409.083, y = 201.448, z = -79.938 }, rot = { x = 0.000, y = 344.108, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, pose_id = 9012, area_id = 9, guest_ban_drop = 63 },
	[288008] = { config_id = 288008, monster_id = 21010402, pos = { x = 402.488, y = 201.073, z = -78.585 }, rot = { x = 0.000, y = 57.791, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, pose_id = 9012, area_id = 9, guest_ban_drop = 63 },
	[288009] = { config_id = 288009, monster_id = 21030103, pos = { x = 409.574, y = 201.592, z = -63.048 }, rot = { x = 0.000, y = 201.010, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 1007 }, isOneoff = true, area_id = 9, guest_ban_drop = 63 },
	[288031] = { config_id = 288031, monster_id = 21010701, pos = { x = 412.319, y = 201.425, z = -64.737 }, rot = { x = 0.000, y = 231.868, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, area_id = 9, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[288010] = { config_id = 288010, gadget_id = 70300089, pos = { x = 406.552, y = 201.024, z = -77.827 }, rot = { x = 0.000, y = 57.617, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288011] = { config_id = 288011, gadget_id = 70300089, pos = { x = 409.984, y = 201.363, z = -65.244 }, rot = { x = 0.000, y = 57.617, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288012] = { config_id = 288012, gadget_id = 70300102, pos = { x = 417.510, y = 201.276, z = -76.084 }, rot = { x = 0.000, y = 57.617, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288013] = { config_id = 288013, gadget_id = 70300102, pos = { x = 399.181, y = 201.409, z = -67.317 }, rot = { x = 0.000, y = 57.617, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288014] = { config_id = 288014, gadget_id = 70300087, pos = { x = 417.601, y = 201.736, z = -76.133 }, rot = { x = 0.000, y = 57.617, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288015] = { config_id = 288015, gadget_id = 70300087, pos = { x = 399.295, y = 201.869, z = -67.467 }, rot = { x = 0.000, y = 57.617, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288016] = { config_id = 288016, gadget_id = 70300089, pos = { x = 410.587, y = 201.025, z = -76.563 }, rot = { x = 0.000, y = 57.617, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288017] = { config_id = 288017, gadget_id = 70300089, pos = { x = 412.472, y = 201.075, z = -68.887 }, rot = { x = 0.000, y = 57.617, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288018] = { config_id = 288018, gadget_id = 70217008, pos = { x = 409.024, y = 201.070, z = -71.671 }, rot = { x = 0.000, y = 31.729, z = 0.000 }, level = 16, chest_drop_id = 21500001, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 9 },
	[288019] = { config_id = 288019, gadget_id = 70300089, pos = { x = 403.848, y = 201.016, z = -74.643 }, rot = { x = 0.000, y = 57.617, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288020] = { config_id = 288020, gadget_id = 70300089, pos = { x = 406.138, y = 201.104, z = -67.003 }, rot = { x = 0.000, y = 57.617, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288021] = { config_id = 288021, gadget_id = 70300081, pos = { x = 419.569, y = 201.877, z = -81.480 }, rot = { x = 3.522, y = 41.820, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288025] = { config_id = 288025, gadget_id = 70300081, pos = { x = 402.439, y = 202.735, z = -85.852 }, rot = { x = 355.674, y = 117.302, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288026] = { config_id = 288026, gadget_id = 70300081, pos = { x = 422.874, y = 202.074, z = -66.583 }, rot = { x = 354.718, y = 347.130, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288029] = { config_id = 288029, gadget_id = 70300081, pos = { x = 392.653, y = 201.211, z = -70.390 }, rot = { x = 0.000, y = 194.210, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288033] = { config_id = 288033, gadget_id = 70300081, pos = { x = 408.282, y = 202.298, z = -53.801 }, rot = { x = 1.587, y = 249.098, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	[288034] = { config_id = 288034, gadget_id = 70290196, pos = { x = 412.484, y = 195.511, z = -68.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
	[288022] = { config_id = 288022, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 408.940, y = 201.071, z = -71.773 }, height = 100.000, area_id = 9 },
	[288030] = { config_id = 288030, shape = RegionShape.CYLINDER, radius = 150, pos = { x = 408.940, y = 201.071, z = -71.773 }, height = 100.000, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1288022, name = "ENTER_REGION_288022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_288022", action = "" },
	{ config_id = 1288023, name = "ANY_MONSTER_DIE_288023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_288023", trigger_count = 0, tag = "288023" },
	{ config_id = 1288024, name = "CHALLENGE_SUCCESS_288024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111850", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_288024" },
	{ config_id = 1288027, name = "GADGET_STATE_CHANGE_288027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_288027", action = "action_EVENT_GADGET_STATE_CHANGE_288027" },
	{ config_id = 1288030, name = "ENTER_REGION_288030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_288030", action = "action_EVENT_ENTER_REGION_288030" },
	{ config_id = 1288032, name = "ANY_MONSTER_DIE_288032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_288032", action = "action_EVENT_ANY_MONSTER_DIE_288032" }
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
		gadgets = { 288034 },
		regions = { 288022, 288030 },
		triggers = { "ENTER_REGION_288022", "ANY_MONSTER_DIE_288023", "CHALLENGE_SUCCESS_288024", "GADGET_STATE_CHANGE_288027", "ENTER_REGION_288030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 物件,
		monsters = { },
		gadgets = { 288010, 288011, 288012, 288013, 288014, 288015, 288016, 288017, 288019, 288020, 288021, 288025, 288026, 288029, 288033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 首领,
		monsters = { 288001, 288002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_288032" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 初始小怪,
		monsters = { 288005, 288006, 288007, 288008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 中期增援小怪,
		monsters = { 288009, 288031 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 宝箱,
		monsters = { },
		gadgets = { 288018 },
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
function condition_EVENT_ENTER_REGION_288022(context, evt)
	if evt.param1 ~= 288022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_288023(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_288024(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104288, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_288027(context, evt)
	if 288018 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_288027(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_288030(context, evt)
	if evt.param1 ~= 288030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_288030(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104288, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_288032(context, evt)
	-- 判断剩余怪物数量是否是4
	if ScriptLib.GetGroupMonsterCount(context) ~= 4 then
		return false
	end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_288032(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104288, 5)
	
	-- 调用提示id为 400070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_1/MoonlitCamp"