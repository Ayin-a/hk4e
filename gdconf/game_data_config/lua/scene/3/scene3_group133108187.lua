-- 基础信息
local base_info = {
	group_id = 133108187
}

-- DEFS_MISCS
local defs = {
    GroupID = 133108187,
    AGRegionConfigID = 187011,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part3",
    AGKey = "_Activity_ToMoon_Part3_Level",
    ChallengeRegionConfigID = 187011,
    ChallengeID = 111185,
    TriggerTag = 187012,
    TargetTriggerTime = 10,
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
	[187001] = { config_id = 187001, monster_id = 26040101, pos = { x = -107.102, y = 253.342, z = -37.586 }, rot = { x = 0.000, y = 5.795, z = 0.000 }, level = 1, drop_tag = "岩龙蜥", disableWander = true, affix = { 4140 }, isElite = true, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[187002] = { config_id = 187002, monster_id = 20011401, pos = { x = -97.901, y = 255.353, z = -37.959 }, rot = { x = 0.000, y = 268.907, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[187003] = { config_id = 187003, monster_id = 26030101, pos = { x = -117.233, y = 252.028, z = -37.830 }, rot = { x = 0.000, y = 95.006, z = 0.000 }, level = 1, drop_tag = "幼岩龙蜥", isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[187004] = { config_id = 187004, monster_id = 20011401, pos = { x = -103.780, y = 254.546, z = -30.586 }, rot = { x = 0.000, y = 6.720, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[187005] = { config_id = 187005, monster_id = 20011401, pos = { x = -109.614, y = 254.553, z = -30.183 }, rot = { x = 0.000, y = 189.415, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[187006] = { config_id = 187006, monster_id = 20011401, pos = { x = -104.388, y = 253.564, z = -46.177 }, rot = { x = 0.000, y = 8.454, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[187007] = { config_id = 187007, monster_id = 20011401, pos = { x = -109.977, y = 252.465, z = -46.296 }, rot = { x = 0.000, y = 4.225, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[187008] = { config_id = 187008, monster_id = 20011101, pos = { x = -99.575, y = 255.268, z = -38.454 }, rot = { x = 0.000, y = 297.927, z = 0.000 }, level = 1, drop_tag = "大史莱姆", isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[187009] = { config_id = 187009, monster_id = 20011001, pos = { x = -98.752, y = 255.192, z = -42.071 }, rot = { x = 0.000, y = 297.927, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[187016] = { config_id = 187016, monster_id = 20011001, pos = { x = -96.060, y = 256.012, z = -39.396 }, rot = { x = 0.000, y = 297.927, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true, area_id = 7, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[187010] = { config_id = 187010, gadget_id = 70217008, pos = { x = -106.990, y = 253.355, z = -37.685 }, rot = { x = 0.000, y = 5.357, z = 0.000 }, level = 16, chest_drop_id = 21500004, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 7 },
	[187018] = { config_id = 187018, gadget_id = 70290196, pos = { x = -103.221, y = 244.267, z = -40.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	[187011] = { config_id = 187011, shape = RegionShape.CYLINDER, radius = 70, pos = { x = -107.020, y = 253.339, z = -37.813 }, height = 100.000, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1187011, name = "ENTER_REGION_187011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187011", action = "" },
	{ config_id = 1187012, name = "ANY_MONSTER_DIE_187012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_187012", trigger_count = 0, tag = "187012" },
	{ config_id = 1187013, name = "CHALLENGE_SUCCESS_187013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111850", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_187013" },
	{ config_id = 1187014, name = "GADGET_STATE_CHANGE_187014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_187014", action = "action_EVENT_GADGET_STATE_CHANGE_187014" },
	{ config_id = 1187017, name = "ANY_MONSTER_DIE_187017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_187017", action = "action_EVENT_ANY_MONSTER_DIE_187017" }
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
		gadgets = { 187018 },
		regions = { 187011 },
		triggers = { "ENTER_REGION_187011", "ANY_MONSTER_DIE_187012", "CHALLENGE_SUCCESS_187013", "GADGET_STATE_CHANGE_187014" },
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
		monsters = { 187001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_187017" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 初始小怪,
		monsters = { 187002, 187003, 187004, 187005, 187006, 187007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 增援小怪,
		monsters = { 187008, 187009, 187016 },
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
		gadgets = { 187010 },
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
function condition_EVENT_ENTER_REGION_187011(context, evt)
	if evt.param1 ~= 187011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_187012(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_187013(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108187, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_187014(context, evt)
	if 187010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_187014(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_187017(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_187017(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108187, 5)
	
	-- 调用提示id为 400070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_1/MoonlitCamp"