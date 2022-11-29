-- 基础信息
local base_info = {
	group_id = 133001192
}

-- Trigger变量
local defs = {
	challenge_id = 2010070,
	enter_region = 192038,
	leave_region = 192040,
	trigger_time = 4
}

-- DEFS_MISCS
local Phase ={
        [1] = {3,4,7},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[192001] = { config_id = 192001, monster_id = 21020501, pos = { x = 2250.944, y = 254.856, z = -424.126 }, rot = { x = 0.000, y = 248.746, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, pose_id = 401, area_id = 3, guest_ban_drop = 63 },
	[192010] = { config_id = 192010, monster_id = 21011002, pos = { x = 2242.750, y = 254.483, z = -430.623 }, rot = { x = 0.000, y = 205.641, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, pose_id = 9013, area_id = 3, guest_ban_drop = 63 },
	[192011] = { config_id = 192011, monster_id = 21010502, pos = { x = 2239.665, y = 254.798, z = -429.203 }, rot = { x = 0.000, y = 221.459, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, pose_id = 9013, area_id = 3, guest_ban_drop = 63 },
	[192015] = { config_id = 192015, monster_id = 21010701, pos = { x = 2247.053, y = 254.696, z = -425.676 }, rot = { x = 0.000, y = 238.426, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, pose_id = 9013, area_id = 3, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[192009] = { config_id = 192009, gadget_id = 71700105, pos = { x = 2245.464, y = 255.126, z = -424.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[192016] = { config_id = 192016, gadget_id = 70220013, pos = { x = 2243.518, y = 254.845, z = -424.024 }, rot = { x = 0.000, y = 232.051, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[192018] = { config_id = 192018, gadget_id = 70310009, pos = { x = 2245.186, y = 254.648, z = -426.443 }, rot = { x = 2.065, y = 246.857, z = 0.677 }, level = 15, state = GadgetState.GearStart, isOneoff = true, persistent = true, area_id = 3 },
	[192020] = { config_id = 192020, gadget_id = 70300088, pos = { x = 2239.895, y = 254.855, z = -435.398 }, rot = { x = 0.000, y = 292.225, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[192021] = { config_id = 192021, gadget_id = 70300088, pos = { x = 2237.184, y = 254.732, z = -434.266 }, rot = { x = 0.000, y = 292.225, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[192022] = { config_id = 192022, gadget_id = 70290196, pos = { x = 2245.154, y = 254.808, z = -417.282 }, rot = { x = 0.000, y = 232.051, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
	[192035] = { config_id = 192035, gadget_id = 70800251, pos = { x = 2237.660, y = 255.735, z = -423.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[192036] = { config_id = 192036, gadget_id = 70800251, pos = { x = 2247.495, y = 255.475, z = -419.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[192037] = { config_id = 192037, gadget_id = 70800251, pos = { x = 2247.527, y = 254.938, z = -430.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	[192005] = { config_id = 192005, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 2247.707, y = 254.572, z = -427.369 }, height = 70.000, area_id = 3 },
	[192038] = { config_id = 192038, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2245.411, y = 254.818, z = -417.325 }, area_id = 3 },
	[192040] = { config_id = 192040, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 2247.707, y = 254.810, z = -427.368 }, height = 70.000, area_id = 3, team_ability_group_list = { "Activity_VintageChallenge_Stage_2" } },
	[192048] = { config_id = 192048, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 2247.707, y = 254.572, z = -427.369 }, height = 70.000, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1192004, name = "ANY_MONSTER_DIE_192004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192004", action = "action_EVENT_ANY_MONSTER_DIE_192004" },
	{ config_id = 1192041, name = "TIME_AXIS_PASS_192041", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_192041" },
	{ config_id = 1192042, name = "MONSTER_BATTLE_192042", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_192042" },
	{ config_id = 1192047, name = "ANY_MONSTER_DIE_192047", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_192047", trigger_count = 0 },
	{ config_id = 1192048, name = "ENTER_REGION_192048", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_192048", action = "action_EVENT_ENTER_REGION_192048" }
}

-- 变量
variables = {
	{ config_id = 5, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 192003, monster_id = 21010701, pos = { x = 2243.485, y = 254.630, z = -426.823 }, rot = { x = 0.000, y = 73.764, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 5217 }, isOneoff = true, area_id = 3 },
		{ config_id = 192007, monster_id = 21010402, pos = { x = 2241.040, y = 255.259, z = -417.745 }, rot = { x = 0.000, y = 208.516, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, pose_id = 9012, area_id = 3 },
		{ config_id = 192008, monster_id = 21020101, pos = { x = 2232.516, y = 255.442, z = -421.771 }, rot = { x = 0.000, y = 113.871, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3 },
		{ config_id = 192012, monster_id = 21010502, pos = { x = 2246.448, y = 254.688, z = -425.808 }, rot = { x = 0.000, y = 247.748, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, pose_id = 9012, area_id = 3 }
	},
	gadgets = {
		{ config_id = 192002, gadget_id = 71700494, pos = { x = 2253.018, y = 254.826, z = -420.994 }, rot = { x = 0.000, y = 55.569, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
		{ config_id = 192024, gadget_id = 71700435, pos = { x = 2237.833, y = 254.576, z = -418.721 }, rot = { x = 0.000, y = 239.003, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
		{ config_id = 192026, gadget_id = 70220014, pos = { x = 2235.470, y = 254.723, z = -427.245 }, rot = { x = 0.000, y = 232.051, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
		{ config_id = 192031, gadget_id = 70300081, pos = { x = 2230.486, y = 255.331, z = -420.790 }, rot = { x = 0.000, y = 191.248, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
		{ config_id = 192034, gadget_id = 70300081, pos = { x = 2249.272, y = 253.843, z = -434.475 }, rot = { x = 0.000, y = 57.416, z = 0.000 }, level = 1, persistent = true, area_id = 3 }
	},
	triggers = {
		{ config_id = 1192039, name = "ANY_MONSTER_DIE_192039", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192039", action = "action_EVENT_ANY_MONSTER_DIE_192039" }
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
		gadgets = { 192022 },
		regions = { 192005, 192038, 192040, 192048 },
		triggers = { "ANY_MONSTER_DIE_192004", "ANY_MONSTER_DIE_192047", "ENTER_REGION_192048" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 192009, 192016, 192018, 192020, 192021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 192001 },
		gadgets = { },
		regions = { },
		triggers = { "TIME_AXIS_PASS_192041", "MONSTER_BATTLE_192042" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 192010, 192011, 192015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
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
		-- description = ,
		monsters = { },
		gadgets = { 192035, 192036, 192037 },
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
function condition_EVENT_ANY_MONSTER_DIE_192004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_192004(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001192, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_192041(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_192042(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_192047(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133001192) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_192048(context, evt)
	if evt.param1 ~= 192048 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_192048(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001192, 2)
	
	return 0
end

require "V3_1/CampChallenge"