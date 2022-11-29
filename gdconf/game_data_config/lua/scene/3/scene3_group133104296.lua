-- 基础信息
local base_info = {
	group_id = 133104296
}

-- DEFS_MISCS
local defs = {
    GroupID = 133104296,
    AGRegionConfigID = 296011,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part3",
    AGKey = "_Activity_ToMoon_Part3_Level",
    ChallengeRegionConfigID = 296011,
    ChallengeID = 111185,
    TriggerTag = 296012,
    TargetTriggerTime = 10,
    AreaID = 1, --  1璃月 2蒙德 3雪山
    OverKey = "OverKey",
    WatchKey = "save",
}


local Phase ={
        [1] = {3,4},
        [2] = {3,4,5},
        [3] = {3,4,5,6},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[296001] = { config_id = 296001, monster_id = 23020101, pos = { x = -142.427, y = 291.498, z = 145.703 }, rot = { x = 0.000, y = 210.419, z = 0.000 }, level = 1, drop_tag = "债务处理人", disableWander = true, affix = { 4140, 1007 }, isElite = true, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[296002] = { config_id = 296002, monster_id = 25030301, pos = { x = -147.941, y = 289.846, z = 146.886 }, rot = { x = 0.000, y = 30.429, z = 0.000 }, level = 1, drop_tag = "盗宝团", affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[296003] = { config_id = 296003, monster_id = 25070101, pos = { x = -147.614, y = 289.714, z = 153.226 }, rot = { x = 0.000, y = 73.804, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[296004] = { config_id = 296004, monster_id = 25010201, pos = { x = -138.375, y = 292.764, z = 140.212 }, rot = { x = 0.000, y = 45.136, z = 0.000 }, level = 1, drop_tag = "盗宝团", affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[296007] = { config_id = 296007, monster_id = 25020201, pos = { x = -147.709, y = 291.709, z = 138.224 }, rot = { x = 0.000, y = 297.151, z = 0.000 }, level = 1, drop_tag = "盗宝团", affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[296008] = { config_id = 296008, monster_id = 25020201, pos = { x = -150.729, y = 288.609, z = 151.361 }, rot = { x = 0.000, y = 115.992, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[296029] = { config_id = 296029, monster_id = 25030301, pos = { x = -133.531, y = 292.646, z = 132.873 }, rot = { x = 0.000, y = 299.368, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[296031] = { config_id = 296031, monster_id = 25020201, pos = { x = -149.390, y = 289.171, z = 154.185 }, rot = { x = 0.000, y = 125.117, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[296032] = { config_id = 296032, monster_id = 25020201, pos = { x = -130.921, y = 292.343, z = 135.358 }, rot = { x = 0.000, y = 299.368, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[296036] = { config_id = 296036, monster_id = 25010201, pos = { x = -135.140, y = 292.905, z = 133.779 }, rot = { x = 0.000, y = 299.368, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[296009] = { config_id = 296009, gadget_id = 70300092, pos = { x = -133.076, y = 293.096, z = 144.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[296010] = { config_id = 296010, gadget_id = 70217008, pos = { x = -141.157, y = 292.293, z = 141.741 }, rot = { x = 0.000, y = 303.651, z = 0.000 }, level = 16, chest_drop_id = 21500003, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 7 },
	[296016] = { config_id = 296016, gadget_id = 70300105, pos = { x = -149.256, y = 292.365, z = 134.160 }, rot = { x = 335.655, y = 124.221, z = 10.740 }, level = 1, persistent = true, area_id = 7 },
	[296017] = { config_id = 296017, gadget_id = 70300105, pos = { x = -137.429, y = 293.128, z = 151.916 }, rot = { x = 5.614, y = 306.050, z = 2.253 }, level = 1, persistent = true, area_id = 7 },
	[296018] = { config_id = 296018, gadget_id = 70220048, pos = { x = -153.654, y = 289.182, z = 139.206 }, rot = { x = 0.000, y = 38.429, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	[296019] = { config_id = 296019, gadget_id = 70220048, pos = { x = -152.317, y = 289.386, z = 140.586 }, rot = { x = 0.000, y = 38.429, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	[296020] = { config_id = 296020, gadget_id = 70220014, pos = { x = -152.819, y = 289.965, z = 137.647 }, rot = { x = 0.000, y = 38.429, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	[296021] = { config_id = 296021, gadget_id = 70220014, pos = { x = -151.977, y = 290.043, z = 138.606 }, rot = { x = 0.000, y = 38.429, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	[296022] = { config_id = 296022, gadget_id = 70220014, pos = { x = -144.761, y = 290.477, z = 151.227 }, rot = { x = 0.000, y = 38.429, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	[296023] = { config_id = 296023, gadget_id = 70220014, pos = { x = -144.241, y = 290.607, z = 152.132 }, rot = { x = 0.000, y = 38.429, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	[296024] = { config_id = 296024, gadget_id = 70220014, pos = { x = -143.445, y = 290.929, z = 151.155 }, rot = { x = 0.000, y = 38.429, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	[296025] = { config_id = 296025, gadget_id = 70310006, pos = { x = -143.664, y = 291.622, z = 143.143 }, rot = { x = 0.000, y = 28.068, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[296026] = { config_id = 296026, gadget_id = 70300092, pos = { x = -132.442, y = 293.063, z = 142.883 }, rot = { x = 0.000, y = 5.884, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[296027] = { config_id = 296027, gadget_id = 70220014, pos = { x = -132.945, y = 292.961, z = 141.633 }, rot = { x = 0.000, y = 38.429, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	[296028] = { config_id = 296028, gadget_id = 70220014, pos = { x = -131.528, y = 292.985, z = 141.276 }, rot = { x = 0.000, y = 38.429, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 7 },
	[296035] = { config_id = 296035, gadget_id = 70290196, pos = { x = -139.254, y = 286.029, z = 145.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	[296011] = { config_id = 296011, shape = RegionShape.CYLINDER, radius = 70, pos = { x = -144.288, y = 291.405, z = 143.554 }, height = 100.000, area_id = 7 },
	[296034] = { config_id = 296034, shape = RegionShape.CYLINDER, radius = 100, pos = { x = -144.288, y = 291.405, z = 143.554 }, height = 100.000, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1296011, name = "ENTER_REGION_296011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_296011", action = "" },
	{ config_id = 1296012, name = "ANY_MONSTER_DIE_296012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_296012", trigger_count = 0, tag = "296012" },
	{ config_id = 1296013, name = "CHALLENGE_SUCCESS_296013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111850", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_296013" },
	{ config_id = 1296014, name = "GADGET_STATE_CHANGE_296014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_296014", action = "action_EVENT_GADGET_STATE_CHANGE_296014" },
	{ config_id = 1296033, name = "ANY_MONSTER_DIE_296033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_296033", action = "action_EVENT_ANY_MONSTER_DIE_296033" },
	{ config_id = 1296034, name = "ENTER_REGION_296034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_296034", action = "action_EVENT_ENTER_REGION_296034" },
	{ config_id = 1296037, name = "ANY_MONSTER_DIE_296037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_296037", action = "action_EVENT_ANY_MONSTER_DIE_296037" }
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
		gadgets = { 296035 },
		regions = { 296011, 296034 },
		triggers = { "ENTER_REGION_296011", "ANY_MONSTER_DIE_296012", "CHALLENGE_SUCCESS_296013", "GADGET_STATE_CHANGE_296014", "ENTER_REGION_296034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 物件,
		monsters = { },
		gadgets = { 296009, 296016, 296017, 296018, 296019, 296020, 296021, 296022, 296023, 296024, 296025, 296026, 296027, 296028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 首领,
		monsters = { 296001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_296033" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 初始小怪,
		monsters = { 296002, 296004, 296007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 增援小怪,
		monsters = { 296029, 296032, 296036 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_296037" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 296003, 296008, 296031 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 宝箱,
		monsters = { },
		gadgets = { 296010 },
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
function condition_EVENT_ENTER_REGION_296011(context, evt)
	if evt.param1 ~= 296011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_296012(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_296013(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104296, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_296014(context, evt)
	if 296010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_296014(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_296033(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_296033(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104296, 5)
	
	-- 调用提示id为 400070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_296034(context, evt)
	if evt.param1 ~= 296034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_296034(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104296, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_296037(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	-- 判断变量"stage"为2
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_296037(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104296, 6)
	
	-- 调用提示id为 400070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_1/MoonlitCamp"