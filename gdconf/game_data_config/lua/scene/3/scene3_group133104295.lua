-- 基础信息
local base_info = {
	group_id = 133104295
}

-- DEFS_MISCS
local defs = {
    GroupID = 133104295,
    AGRegionConfigID = 295011,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part3",
    AGKey = "_Activity_ToMoon_Part3_Level",
    ChallengeRegionConfigID = 295011,
    ChallengeID = 111185,
    TriggerTag = 295012,
    TargetTriggerTime = 12,
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
	[295001] = { config_id = 295001, monster_id = 20011304, pos = { x = 49.832, y = 271.204, z = 43.389 }, rot = { x = 0.000, y = 49.363, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 4140, 1007 }, isElite = true, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[295002] = { config_id = 295002, monster_id = 20011502, pos = { x = 54.315, y = 271.204, z = 48.114 }, rot = { x = 0.000, y = 228.678, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 4140, 1007 }, isElite = true, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[295003] = { config_id = 295003, monster_id = 20011201, pos = { x = 53.336, y = 271.204, z = 40.344 }, rot = { x = 0.000, y = 337.831, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[295004] = { config_id = 295004, monster_id = 20011401, pos = { x = 59.404, y = 271.204, z = 49.371 }, rot = { x = 0.000, y = 43.262, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[295005] = { config_id = 295005, monster_id = 20011201, pos = { x = 45.675, y = 271.204, z = 46.125 }, rot = { x = 0.000, y = 103.038, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[295006] = { config_id = 295006, monster_id = 20011401, pos = { x = 58.506, y = 271.204, z = 45.031 }, rot = { x = 0.000, y = 293.811, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[295007] = { config_id = 295007, monster_id = 20011201, pos = { x = 58.926, y = 271.204, z = 52.103 }, rot = { x = 0.000, y = 229.274, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[295008] = { config_id = 295008, monster_id = 20011401, pos = { x = 51.779, y = 271.204, z = 52.221 }, rot = { x = 0.000, y = 157.339, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[295009] = { config_id = 295009, monster_id = 20011001, pos = { x = 48.936, y = 271.204, z = 49.410 }, rot = { x = 0.000, y = 335.694, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1007 }, isOneoff = true, pose_id = 901, area_id = 7, guest_ban_drop = 63 },
	[295016] = { config_id = 295016, monster_id = 20011001, pos = { x = 46.964, y = 271.204, z = 48.519 }, rot = { x = 0.000, y = 335.694, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1007 }, isOneoff = true, pose_id = 901, area_id = 7, guest_ban_drop = 63 },
	[295017] = { config_id = 295017, monster_id = 20010801, pos = { x = 49.500, y = 271.204, z = 51.929 }, rot = { x = 0.000, y = 335.694, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1007 }, isOneoff = true, pose_id = 901, area_id = 7, guest_ban_drop = 63 },
	[295019] = { config_id = 295019, monster_id = 20011401, pos = { x = 61.129, y = 271.204, z = 51.129 }, rot = { x = 0.000, y = 335.694, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[295010] = { config_id = 295010, gadget_id = 70217008, pos = { x = 51.598, y = 271.204, z = 45.931 }, rot = { x = 0.000, y = 135.555, z = 0.000 }, level = 16, chest_drop_id = 21500002, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 7 },
	[295020] = { config_id = 295020, gadget_id = 70290196, pos = { x = 53.310, y = 266.205, z = 49.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	[295011] = { config_id = 295011, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 51.540, y = 271.204, z = 46.050 }, height = 100.000, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1295011, name = "ENTER_REGION_295011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_295011", action = "" },
	{ config_id = 1295012, name = "ANY_MONSTER_DIE_295012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_295012", trigger_count = 0, tag = "295012" },
	{ config_id = 1295013, name = "CHALLENGE_SUCCESS_295013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111850", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_295013" },
	{ config_id = 1295014, name = "GADGET_STATE_CHANGE_295014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_295014", action = "action_EVENT_GADGET_STATE_CHANGE_295014" },
	{ config_id = 1295018, name = "ANY_MONSTER_DIE_295018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_295018", action = "action_EVENT_ANY_MONSTER_DIE_295018" },
	{ config_id = 1295021, name = "ANY_MONSTER_DIE_295021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_295021", action = "action_EVENT_ANY_MONSTER_DIE_295021" }
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
		gadgets = { 295020 },
		regions = { 295011 },
		triggers = { "ENTER_REGION_295011", "ANY_MONSTER_DIE_295012", "CHALLENGE_SUCCESS_295013", "GADGET_STATE_CHANGE_295014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 物件,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 首领,
		monsters = { 295001, 295002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_295018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 初始小怪,
		monsters = { 295003, 295005, 295006, 295008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 增援小怪,
		monsters = { 295009, 295016, 295017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_295021" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第二波增援小怪,
		monsters = { 295004, 295007, 295019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 宝箱,
		monsters = { },
		gadgets = { 295010 },
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
function condition_EVENT_ENTER_REGION_295011(context, evt)
	if evt.param1 ~= 295011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_295012(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_295013(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104295, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_295014(context, evt)
	if 295010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_295014(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_295018(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_295018(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104295, 5)
	
	-- 调用提示id为 400070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_295021(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_295021(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104295, 6)
	
	-- 调用提示id为 400070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_1/MoonlitCamp"