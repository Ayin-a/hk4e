-- 基础信息
local base_info = {
	group_id = 133108188
}

-- DEFS_MISCS
local defs = {
    GroupID = 133108188,
    AGRegionConfigID = 188011,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part3",
    AGKey = "_Activity_ToMoon_Part3_Level",
    ChallengeRegionConfigID = 188011,
    ChallengeID = 111185,
    TriggerTag = 188012,
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
	[188001] = { config_id = 188001, monster_id = 21020301, pos = { x = -156.325, y = 201.928, z = -466.181 }, rot = { x = 0.000, y = 77.360, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4140, 1007 }, isElite = true, isOneoff = true, pose_id = 401, area_id = 7, guest_ban_drop = 63 },
	[188002] = { config_id = 188002, monster_id = 21020301, pos = { x = -160.265, y = 202.423, z = -467.194 }, rot = { x = 0.000, y = 262.171, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4140, 1007 }, isElite = true, isOneoff = true, pose_id = 401, area_id = 7, guest_ban_drop = 63 },
	[188003] = { config_id = 188003, monster_id = 21010401, pos = { x = -164.142, y = 203.818, z = -461.403 }, rot = { x = 0.000, y = 133.560, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, pose_id = 9012, area_id = 7, guest_ban_drop = 63 },
	[188004] = { config_id = 188004, monster_id = 21010201, pos = { x = -160.262, y = 202.825, z = -459.348 }, rot = { x = 0.000, y = 170.002, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, pose_id = 9012, area_id = 7, guest_ban_drop = 63 },
	[188005] = { config_id = 188005, monster_id = 21010401, pos = { x = -154.852, y = 201.641, z = -460.315 }, rot = { x = 0.000, y = 216.086, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, pose_id = 9012, area_id = 7, guest_ban_drop = 63 },
	[188006] = { config_id = 188006, monster_id = 21010201, pos = { x = -155.800, y = 201.987, z = -473.743 }, rot = { x = 0.000, y = 343.354, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, pose_id = 9012, area_id = 7, guest_ban_drop = 63 },
	[188007] = { config_id = 188007, monster_id = 21010201, pos = { x = -151.864, y = 201.492, z = -470.881 }, rot = { x = 0.000, y = 297.648, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, pose_id = 9012, area_id = 7, guest_ban_drop = 63 },
	[188032] = { config_id = 188032, monster_id = 21030103, pos = { x = -150.025, y = 201.157, z = -468.780 }, rot = { x = 0.000, y = 320.498, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[188034] = { config_id = 188034, monster_id = 21010701, pos = { x = -157.825, y = 202.095, z = -476.587 }, rot = { x = 0.000, y = 357.533, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[188035] = { config_id = 188035, monster_id = 21010701, pos = { x = -154.889, y = 201.724, z = -478.001 }, rot = { x = 0.000, y = 357.533, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, area_id = 7, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[188010] = { config_id = 188010, gadget_id = 70217008, pos = { x = -157.662, y = 202.094, z = -465.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 21500005, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 7 },
	[188016] = { config_id = 188016, gadget_id = 70300090, pos = { x = -145.570, y = 200.382, z = -465.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188017] = { config_id = 188017, gadget_id = 70300090, pos = { x = -169.400, y = 204.483, z = -466.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188018] = { config_id = 188018, gadget_id = 70300091, pos = { x = -156.583, y = 201.715, z = -449.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188019] = { config_id = 188019, gadget_id = 70300091, pos = { x = -151.640, y = 201.383, z = -481.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188020] = { config_id = 188020, gadget_id = 70300089, pos = { x = -157.461, y = 202.132, z = -469.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188023] = { config_id = 188023, gadget_id = 70300089, pos = { x = -154.959, y = 201.801, z = -469.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188024] = { config_id = 188024, gadget_id = 70300089, pos = { x = -152.676, y = 201.419, z = -466.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188025] = { config_id = 188025, gadget_id = 70300089, pos = { x = -153.115, y = 201.414, z = -464.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188026] = { config_id = 188026, gadget_id = 70300089, pos = { x = -155.873, y = 201.834, z = -462.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188027] = { config_id = 188027, gadget_id = 70300089, pos = { x = -159.033, y = 202.395, z = -462.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188028] = { config_id = 188028, gadget_id = 70300089, pos = { x = -161.339, y = 202.855, z = -463.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188029] = { config_id = 188029, gadget_id = 70300089, pos = { x = -163.418, y = 203.268, z = -465.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188030] = { config_id = 188030, gadget_id = 70300089, pos = { x = -163.027, y = 202.999, z = -468.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188031] = { config_id = 188031, gadget_id = 70300089, pos = { x = -161.443, y = 202.711, z = -470.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	[188037] = { config_id = 188037, gadget_id = 70290196, pos = { x = -154.945, y = 191.448, z = -472.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	[188011] = { config_id = 188011, shape = RegionShape.CYLINDER, radius = 70, pos = { x = -157.680, y = 202.097, z = -466.047 }, height = 100.000, area_id = 7 },
	[188021] = { config_id = 188021, shape = RegionShape.CYLINDER, radius = 150, pos = { x = -157.680, y = 202.097, z = -466.047 }, height = 100.000, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1188011, name = "ENTER_REGION_188011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188011", action = "" },
	{ config_id = 1188012, name = "ANY_MONSTER_DIE_188012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_188012", trigger_count = 0, tag = "188012" },
	{ config_id = 1188013, name = "CHALLENGE_SUCCESS_188013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111850", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_188013" },
	{ config_id = 1188014, name = "GADGET_STATE_CHANGE_188014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_188014", action = "action_EVENT_GADGET_STATE_CHANGE_188014" },
	{ config_id = 1188021, name = "ENTER_REGION_188021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188021", action = "action_EVENT_ENTER_REGION_188021" },
	{ config_id = 1188036, name = "ANY_MONSTER_DIE_188036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188036", action = "action_EVENT_ANY_MONSTER_DIE_188036" }
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
		gadgets = { 188037 },
		regions = { 188011, 188021 },
		triggers = { "ENTER_REGION_188011", "ANY_MONSTER_DIE_188012", "CHALLENGE_SUCCESS_188013", "GADGET_STATE_CHANGE_188014", "ENTER_REGION_188021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 物件,
		monsters = { },
		gadgets = { 188016, 188017, 188018, 188019, 188020, 188023, 188024, 188025, 188026, 188027, 188028, 188029, 188030, 188031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 首领,
		monsters = { 188001, 188002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_188036" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 初始小怪,
		monsters = { 188003, 188004, 188005, 188006, 188007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 增援怪物,
		monsters = { 188032, 188034, 188035 },
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
		gadgets = { 188010 },
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
function condition_EVENT_ENTER_REGION_188011(context, evt)
	if evt.param1 ~= 188011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188012(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_188013(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108188, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_188014(context, evt)
	if 188010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_188014(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_188021(context, evt)
	if evt.param1 ~= 188021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188021(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108188, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188036(context, evt)
	-- 判断剩余怪物数量是否是3
	if ScriptLib.GetGroupMonsterCount(context) ~= 3 then
		return false
	end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188036(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108188, 5)
	
	-- 调用提示id为 400070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_1/MoonlitCamp"