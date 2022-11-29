-- 基础信息
local base_info = {
	group_id = 133003082
}

-- Trigger变量
local defs = {
	challenge_id = 2010064,
	enter_region = 82026,
	leave_region = 82027,
	trigger_time = 6
}

-- DEFS_MISCS
local Phase ={
        [1] = {3,4,7},
        [2] = {5,7},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[82001] = { config_id = 82001, monster_id = 20010901, pos = { x = 1824.166, y = 194.762, z = -1538.517 }, rot = { x = 0.000, y = 84.882, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[82003] = { config_id = 82003, monster_id = 26010101, pos = { x = 1822.408, y = 194.762, z = -1539.941 }, rot = { x = 0.000, y = 144.017, z = 0.000 }, level = 1, drop_tag = "骗骗花", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[82004] = { config_id = 82004, monster_id = 20010702, pos = { x = 1824.024, y = 194.762, z = -1535.098 }, rot = { x = 0.000, y = 82.530, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[82010] = { config_id = 82010, monster_id = 20010604, pos = { x = 1830.927, y = 194.762, z = -1536.899 }, rot = { x = 0.000, y = 254.870, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[82018] = { config_id = 82018, monster_id = 20011103, pos = { x = 1829.027, y = 194.762, z = -1534.284 }, rot = { x = 0.000, y = 273.758, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[82034] = { config_id = 82034, monster_id = 26010201, pos = { x = 1827.469, y = 194.762, z = -1536.200 }, rot = { x = 0.000, y = 233.447, z = 0.000 }, level = 1, drop_tag = "骗骗花", disableWander = true, affix = { 5216, 9009 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[82012] = { config_id = 82012, gadget_id = 70290196, pos = { x = 1822.203, y = 194.762, z = -1541.664 }, rot = { x = 0.000, y = 356.909, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[82015] = { config_id = 82015, gadget_id = 70290196, pos = { x = 1822.203, y = 194.762, z = -1541.664 }, rot = { x = 0.000, y = 356.909, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[82023] = { config_id = 82023, gadget_id = 70800251, pos = { x = 1827.530, y = 195.172, z = -1542.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[82024] = { config_id = 82024, gadget_id = 70800251, pos = { x = 1821.632, y = 195.228, z = -1534.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[82025] = { config_id = 82025, gadget_id = 70800251, pos = { x = 1831.880, y = 195.228, z = -1531.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	[82002] = { config_id = 82002, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 1823.730, y = 194.762, z = -1539.563 }, height = 70.000, area_id = 2 },
	[82026] = { config_id = 82026, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1823.768, y = 194.762, z = -1539.573 }, area_id = 2 },
	[82027] = { config_id = 82027, shape = RegionShape.CYLINDER, radius = 70, pos = { x = 1823.730, y = 194.762, z = -1539.563 }, height = 70.000, area_id = 2, team_ability_group_list = { "Activity_VintageChallenge_Stage_1" } }
}

-- 触发器
triggers = {
	{ config_id = 1082028, name = "ANY_MONSTER_DIE_82028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_82028", trigger_count = 0 },
	{ config_id = 1082029, name = "ANY_MONSTER_DIE_82029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82029", action = "action_EVENT_ANY_MONSTER_DIE_82029" },
	{ config_id = 1082030, name = "MONSTER_BATTLE_82030", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_82030" },
	{ config_id = 1082032, name = "TIME_AXIS_PASS_82032", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_82032" },
	{ config_id = 1082035, name = "ANY_MONSTER_DIE_82035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82035", action = "action_EVENT_ANY_MONSTER_DIE_82035" }
}

-- 变量
variables = {
	{ config_id = 5, name = "STAGE", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 82017, monster_id = 20011001, pos = { x = 1832.653, y = 194.735, z = -1537.746 }, rot = { x = 0.000, y = 215.787, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 5216 }, isOneoff = true, area_id = 2 },
		{ config_id = 82033, monster_id = 20011001, pos = { x = 1827.255, y = 194.651, z = -1530.224 }, rot = { x = 0.000, y = 215.787, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 5216 }, isOneoff = true, area_id = 2 }
	},
	regions = {
		{ config_id = 82007, shape = RegionShape.SPHERE, radius = 100, pos = { x = 1823.730, y = 194.762, z = -1539.563 }, area_id = 2 },
		{ config_id = 82031, shape = RegionShape.CYLINDER, radius = 75, pos = { x = 1823.730, y = 194.762, z = -1539.563 }, height = 75.000, area_id = 2 }
	},
	triggers = {
		{ config_id = 1082007, name = "ENTER_REGION_82007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82007", action = "" },
		{ config_id = 1082031, name = "ENTER_REGION_82031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82031", action = "action_EVENT_ENTER_REGION_82031" }
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
		gadgets = { 82012 },
		regions = { 82002, 82026, 82027 },
		triggers = { "ANY_MONSTER_DIE_82028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 82001, 82003, 82018 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 82015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_82029", "MONSTER_BATTLE_82030", "TIME_AXIS_PASS_82032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 82004, 82010, 82034 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_82035" },
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
		gadgets = { 82023, 82024, 82025 },
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
function action_EVENT_ANY_MONSTER_DIE_82028(context, evt)
	-- 针对当前group内变量名为 "SET_TRIGGER" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SET_TRIGGER", 1, 133003082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133003082) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82029(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003082, 5)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003082, 7)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003082, 7)
	
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
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_82030(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_82032(context, evt)
	-- 调用提示id为 600135 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82035(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82035(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003082, 7)
	
	return 0
end

require "V3_1/CampChallenge"