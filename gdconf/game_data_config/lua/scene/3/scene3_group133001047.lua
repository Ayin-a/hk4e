-- 基础信息
local base_info = {
	group_id = 133001047
}

-- DEFS_MISCS
local defs = {
    GroupID = 133001047,
    AGRegionConfigID = 47049,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part1",
    AGKey = "_Activity_ToMoon_Part1_Level",
    ChallengeRegionConfigID = 47049,
    ChallengeID = 111168,
    TriggerTag = 47013,
    TargetTriggerTime = 1,
    AreaID = 2, --  1璃月 2蒙德 3雪山
    OverKey = "OverKey",
    WatchKey = "save",
}

local Phase ={
        [1] = {3,4},
        [2] = {3,5},
        [3] = {3,6},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[47001] = { config_id = 47001, monster_id = 23020101, pos = { x = 1724.836, y = 195.976, z = -1524.765 }, rot = { x = 0.000, y = 269.209, z = 0.000 }, level = 1, drop_tag = "债务处理人", disableWander = true, affix = { 6110, 1007 }, isElite = true, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[47002] = { config_id = 47002, monster_id = 25020201, pos = { x = 1726.833, y = 195.399, z = -1515.365 }, rot = { x = 0.000, y = 222.868, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[47003] = { config_id = 47003, monster_id = 25010201, pos = { x = 1720.100, y = 196.778, z = -1529.973 }, rot = { x = 0.000, y = 58.960, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[47004] = { config_id = 47004, monster_id = 25010201, pos = { x = 1718.858, y = 197.057, z = -1527.605 }, rot = { x = 0.000, y = 58.960, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[47007] = { config_id = 47007, monster_id = 25010301, pos = { x = 1724.474, y = 196.103, z = -1517.955 }, rot = { x = 0.000, y = 180.030, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[47008] = { config_id = 47008, monster_id = 25010301, pos = { x = 1726.583, y = 195.571, z = -1517.984 }, rot = { x = 0.000, y = 180.030, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[47009] = { config_id = 47009, monster_id = 25010501, pos = { x = 1725.435, y = 195.998, z = -1532.164 }, rot = { x = 0.000, y = 351.995, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[47010] = { config_id = 47010, monster_id = 25010501, pos = { x = 1724.825, y = 196.084, z = -1532.933 }, rot = { x = 0.000, y = 351.995, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[47021] = { config_id = 47021, monster_id = 25020201, pos = { x = 1724.427, y = 196.031, z = -1515.336 }, rot = { x = 0.000, y = 222.868, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[47022] = { config_id = 47022, monster_id = 25010201, pos = { x = 1723.763, y = 196.265, z = -1535.506 }, rot = { x = 0.000, y = 298.765, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[47023] = { config_id = 47023, monster_id = 25010201, pos = { x = 1726.345, y = 195.843, z = -1535.349 }, rot = { x = 0.000, y = 298.765, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[47046] = { config_id = 47046, monster_id = 25030201, pos = { x = 1723.907, y = 196.193, z = -1528.740 }, rot = { x = 0.000, y = 89.682, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[47005] = { config_id = 47005, gadget_id = 70300105, pos = { x = 1725.319, y = 195.578, z = -1512.667 }, rot = { x = 11.983, y = 93.278, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[47006] = { config_id = 47006, gadget_id = 70300105, pos = { x = 1724.618, y = 196.018, z = -1538.013 }, rot = { x = 351.725, y = 274.077, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[47011] = { config_id = 47011, gadget_id = 70690012, pos = { x = 1734.034, y = 193.457, z = -1527.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[47024] = { config_id = 47024, gadget_id = 70220014, pos = { x = 1732.732, y = 194.796, z = -1528.799 }, rot = { x = 0.000, y = 283.844, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[47025] = { config_id = 47025, gadget_id = 70220014, pos = { x = 1732.357, y = 194.851, z = -1529.682 }, rot = { x = 0.000, y = 283.844, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[47026] = { config_id = 47026, gadget_id = 70220005, pos = { x = 1727.536, y = 195.663, z = -1534.710 }, rot = { x = 0.000, y = 283.844, z = 0.000 }, level = 1, area_id = 2 },
	[47027] = { config_id = 47027, gadget_id = 70220005, pos = { x = 1727.996, y = 195.544, z = -1536.013 }, rot = { x = 0.000, y = 283.844, z = 0.000 }, level = 1, area_id = 2 },
	[47030] = { config_id = 47030, gadget_id = 70300105, pos = { x = 1714.582, y = 197.571, z = -1531.799 }, rot = { x = 354.984, y = 335.960, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[47031] = { config_id = 47031, gadget_id = 70300105, pos = { x = 1715.107, y = 197.934, z = -1516.169 }, rot = { x = 10.170, y = 36.251, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[47032] = { config_id = 47032, gadget_id = 70310006, pos = { x = 1724.984, y = 196.085, z = -1535.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[47033] = { config_id = 47033, gadget_id = 70310006, pos = { x = 1725.432, y = 195.745, z = -1515.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[47034] = { config_id = 47034, gadget_id = 70220005, pos = { x = 1717.678, y = 197.014, z = -1533.491 }, rot = { x = 0.000, y = 283.844, z = 0.000 }, level = 1, area_id = 2 },
	[47035] = { config_id = 47035, gadget_id = 70220005, pos = { x = 1718.138, y = 196.870, z = -1534.794 }, rot = { x = 0.000, y = 283.844, z = 0.000 }, level = 1, area_id = 2 },
	[47038] = { config_id = 47038, gadget_id = 70220014, pos = { x = 1731.446, y = 194.742, z = -1521.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[47039] = { config_id = 47039, gadget_id = 70220014, pos = { x = 1732.176, y = 194.642, z = -1522.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[47040] = { config_id = 47040, gadget_id = 70220048, pos = { x = 1730.974, y = 194.898, z = -1523.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[47041] = { config_id = 47041, gadget_id = 70220014, pos = { x = 1732.176, y = 194.714, z = -1524.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[47042] = { config_id = 47042, gadget_id = 70220048, pos = { x = 1730.974, y = 195.181, z = -1529.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[47043] = { config_id = 47043, gadget_id = 70220048, pos = { x = 1731.377, y = 195.064, z = -1530.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[47047] = { config_id = 47047, gadget_id = 70217008, pos = { x = 1724.619, y = 195.998, z = -1525.463 }, rot = { x = 0.000, y = 91.069, z = 0.000 }, level = 1, chest_drop_id = 21500008, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 2 }
}

-- 区域
regions = {
	[47012] = { config_id = 47012, shape = RegionShape.CYLINDER, radius = 100, pos = { x = 1724.015, y = 196.085, z = -1525.197 }, height = 100.000, area_id = 2 },
	[47016] = { config_id = 47016, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1723.889, y = 196.117, z = -1524.384 }, area_id = 2 },
	[47049] = { config_id = 47049, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 1724.015, y = 196.085, z = -1525.197 }, height = 100.000, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1047012, name = "ENTER_REGION_47012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47012", action = "action_EVENT_ENTER_REGION_47012" },
	{ config_id = 1047013, name = "ANY_MONSTER_DIE_47013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47013", action = "action_EVENT_ANY_MONSTER_DIE_47013", trigger_count = 0, tag = "47013" },
	{ config_id = 1047014, name = "CHALLENGE_SUCCESS_47014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111680", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_47014" },
	{ config_id = 1047015, name = "MONSTER_BATTLE_47015", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_47015", action = "action_EVENT_MONSTER_BATTLE_47015" },
	{ config_id = 1047016, name = "ENTER_REGION_47016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47016", action = "action_EVENT_ENTER_REGION_47016" },
	{ config_id = 1047017, name = "TIME_AXIS_PASS_47017", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "condition_EVENT_TIME_AXIS_PASS_47017", action = "action_EVENT_TIME_AXIS_PASS_47017" },
	{ config_id = 1047018, name = "TIME_AXIS_PASS_47018", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "condition_EVENT_TIME_AXIS_PASS_47018", action = "action_EVENT_TIME_AXIS_PASS_47018" },
	{ config_id = 1047029, name = "GADGET_STATE_CHANGE_47029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_47029", action = "action_EVENT_GADGET_STATE_CHANGE_47029" },
	{ config_id = 1047049, name = "ENTER_REGION_47049", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47049", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "save", value = 0, no_refresh = true },
	{ config_id = 2, name = "IS_BOSS_DEAD", value = 0, no_refresh = true },
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
		regions = { 47012, 47049 },
		triggers = { "ENTER_REGION_47012", "ANY_MONSTER_DIE_47013", "CHALLENGE_SUCCESS_47014", "GADGET_STATE_CHANGE_47029", "ENTER_REGION_47049" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 摆设物件,
		monsters = { },
		gadgets = { 47005, 47006, 47024, 47025, 47030, 47031, 47032, 47033, 47038, 47039, 47040, 47041, 47042, 47043 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 首领,
		monsters = { 47001 },
		gadgets = { 47011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 小怪组1,
		monsters = { 47002, 47021, 47022, 47023 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_47015", "TIME_AXIS_PASS_47017" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 小怪组2,
		monsters = { 47003, 47004, 47007, 47008 },
		gadgets = { 47034, 47035 },
		regions = { 47016 },
		triggers = { "ENTER_REGION_47016", "TIME_AXIS_PASS_47018" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 小怪组3,
		monsters = { 47009, 47010, 47046 },
		gadgets = { 47026, 47027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 47047 },
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
function condition_EVENT_ENTER_REGION_47012(context, evt)
	if evt.param1 ~= 47012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_47012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001047, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_47013(context, evt)
	--判断死亡怪物的configid是否为 47001
	if evt.param1 ~= 47001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47013(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "IS_BOSS_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_47014(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001047, 7)
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001047, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133001047, EntityType.GADGET, 47011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_47015(context, evt)
	if 47001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_47015(context, evt)
	-- 创建标识为"T1"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_47016(context, evt)
	if evt.param1 ~= 47016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_47016(context, evt)
	-- 创建标识为"T2"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_47017(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_47017(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 400069 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400069) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001047, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133001047, 4)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001047, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_47018(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	-- 判断变量"stage"为2
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_47018(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 400069 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400069) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001047, 6)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133001047, 5)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001047, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_47029(context, evt)
	if 47047 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_47029(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_47049(context, evt)
	if evt.param1 ~= 47049 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V2_1/MoonlitCamp"