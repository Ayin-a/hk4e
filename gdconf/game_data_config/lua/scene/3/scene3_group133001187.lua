-- 基础信息
local base_info = {
	group_id = 133001187
}

-- Trigger变量
local defs = {
	challenge_id = 2010070,
	enter_region = 187032,
	leave_region = 187034,
	trigger_time = 7
}

-- DEFS_MISCS
local Phase ={
        [1] = {2,6},
        [2] = {4,6},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[187001] = { config_id = 187001, monster_id = 20010604, pos = { x = 1875.581, y = 252.021, z = -540.369 }, rot = { x = 0.000, y = 132.344, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[187002] = { config_id = 187002, monster_id = 20020101, pos = { x = 1881.720, y = 253.184, z = -544.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "元素之核", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[187003] = { config_id = 187003, monster_id = 21011002, pos = { x = 1888.721, y = 255.012, z = -539.072 }, rot = { x = 0.000, y = 205.793, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, pose_id = 32, area_id = 3, guest_ban_drop = 63 },
	[187006] = { config_id = 187006, monster_id = 20011304, pos = { x = 1883.606, y = 252.384, z = -548.524 }, rot = { x = 0.000, y = 317.305, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[187009] = { config_id = 187009, monster_id = 21030103, pos = { x = 1873.085, y = 251.938, z = -545.154 }, rot = { x = 0.000, y = 207.345, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[187017] = { config_id = 187017, monster_id = 20011201, pos = { x = 1884.517, y = 254.227, z = -545.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 },
	[187018] = { config_id = 187018, monster_id = 20011201, pos = { x = 1880.165, y = 253.856, z = -542.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 5217, 9009 }, isOneoff = true, area_id = 3, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[187010] = { config_id = 187010, gadget_id = 70290196, pos = { x = 1879.871, y = 252.497, z = -544.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
	[187011] = { config_id = 187011, gadget_id = 70300081, pos = { x = 1873.150, y = 251.285, z = -536.492 }, rot = { x = 353.777, y = 238.911, z = 348.269 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[187024] = { config_id = 187024, gadget_id = 70220020, pos = { x = 1891.534, y = 254.287, z = -551.439 }, rot = { x = 8.934, y = 312.726, z = 3.398 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[187025] = { config_id = 187025, gadget_id = 70220020, pos = { x = 1886.065, y = 253.815, z = -554.183 }, rot = { x = 3.699, y = 352.576, z = 7.583 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
	[187027] = { config_id = 187027, gadget_id = 70800251, pos = { x = 1885.628, y = 253.933, z = -551.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[187028] = { config_id = 187028, gadget_id = 70800251, pos = { x = 1886.814, y = 255.751, z = -538.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[187029] = { config_id = 187029, gadget_id = 70800251, pos = { x = 1878.161, y = 253.182, z = -548.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	[187004] = { config_id = 187004, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1877.592, y = 251.989, z = -539.507 }, area_id = 3 },
	[187032] = { config_id = 187032, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1877.592, y = 251.989, z = -539.507 }, area_id = 3 },
	[187034] = { config_id = 187034, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1877.267, y = 252.344, z = -543.046 }, area_id = 3, team_ability_group_list = { "Activity_VintageChallenge_Stage_2" } }
}

-- 触发器
triggers = {
	{ config_id = 1187030, name = "ANY_MONSTER_DIE_187030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_187030", trigger_count = 0 },
	{ config_id = 1187031, name = "MONSTER_BATTLE_187031", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_187031" },
	{ config_id = 1187032, name = "ENTER_REGION_187032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187032", action = "action_EVENT_ENTER_REGION_187032" },
	{ config_id = 1187033, name = "ANY_MONSTER_DIE_187033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_187033", action = "action_EVENT_ANY_MONSTER_DIE_187033" },
	{ config_id = 1187035, name = "TIME_AXIS_PASS_187035", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_187035" },
	{ config_id = 1187036, name = "ANY_MONSTER_DIE_187036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_187036", action = "action_EVENT_ANY_MONSTER_DIE_187036" }
}

-- 变量
variables = {
	{ config_id = 5, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 187005, monster_id = 20011001, pos = { x = 1874.906, y = 251.971, z = -538.098 }, rot = { x = 0.000, y = 148.390, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 5217 }, isOneoff = true, area_id = 3 },
		{ config_id = 187007, monster_id = 20011201, pos = { x = 1883.219, y = 252.537, z = -550.396 }, rot = { x = 0.000, y = 317.342, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 5217 }, isOneoff = true, area_id = 3 }
	},
	gadgets = {
		{ config_id = 187014, gadget_id = 70220013, pos = { x = 1881.120, y = 252.225, z = -538.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
		{ config_id = 187015, gadget_id = 70220013, pos = { x = 1882.196, y = 253.235, z = -554.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
		{ config_id = 187020, gadget_id = 70220014, pos = { x = 1881.178, y = 253.159, z = -554.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
		{ config_id = 187021, gadget_id = 70220014, pos = { x = 1882.088, y = 252.614, z = -539.779 }, rot = { x = 277.756, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 3 },
		{ config_id = 187026, gadget_id = 70220020, pos = { x = 1889.359, y = 254.415, z = -536.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 3 }
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
		gadgets = { 187010 },
		regions = { 187004, 187032, 187034 },
		triggers = { "ANY_MONSTER_DIE_187030", "ENTER_REGION_187032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 187001, 187003, 187006, 187009 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_187031", "ANY_MONSTER_DIE_187033", "TIME_AXIS_PASS_187035" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 187002, 187017, 187018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_187036" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 187011, 187024, 187025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 187027, 187028, 187029 },
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_187030(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133001187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_187031(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187032(context, evt)
	if evt.param1 ~= 187032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187032(context, evt)
	ScriptLib.AddExtraGroupSuite(context, 133001187, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_187033(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001187) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_187033(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001187, 4)
	
	-- 调用提示id为 400075 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400075) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "STAGE" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "STAGE", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001187, 6)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001187, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_187035(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_187036(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_187036(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001187, 6)
	
	return 0
end

require "V3_1/CampChallenge"