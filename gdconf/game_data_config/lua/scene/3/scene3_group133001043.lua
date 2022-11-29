-- 基础信息
local base_info = {
	group_id = 133001043
}

-- DEFS_MISCS
local defs = {
    GroupID = 133001043,
    AGRegionConfigID = 43055,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part1",
    AGKey = "_Activity_ToMoon_Part1_Level",
    ChallengeRegionConfigID = 43055,
    ChallengeID = 111168,
    TriggerTag = 43006,
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
	[43001] = { config_id = 43001, monster_id = 21020101, pos = { x = 1551.591, y = 270.085, z = -1494.751 }, rot = { x = 0.000, y = 309.346, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", affix = { 1033, 6110, 1007 }, isElite = true, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43002] = { config_id = 43002, monster_id = 21030201, pos = { x = 1554.717, y = 269.628, z = -1484.765 }, rot = { x = 0.000, y = 263.005, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43003] = { config_id = 43003, monster_id = 21010401, pos = { x = 1540.219, y = 270.797, z = -1496.711 }, rot = { x = 0.000, y = 334.582, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43004] = { config_id = 43004, monster_id = 21010401, pos = { x = 1547.861, y = 276.690, z = -1504.526 }, rot = { x = 0.000, y = 317.134, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43024] = { config_id = 43024, monster_id = 21010201, pos = { x = 1540.865, y = 270.801, z = -1496.900 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43025] = { config_id = 43025, monster_id = 21010201, pos = { x = 1539.339, y = 270.792, z = -1496.257 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43026] = { config_id = 43026, monster_id = 21010201, pos = { x = 1553.750, y = 269.624, z = -1485.161 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43027] = { config_id = 43027, monster_id = 21010701, pos = { x = 1554.971, y = 269.628, z = -1483.911 }, rot = { x = 0.000, y = 319.175, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43028] = { config_id = 43028, monster_id = 21010401, pos = { x = 1541.008, y = 270.800, z = -1496.442 }, rot = { x = 0.000, y = 25.679, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43029] = { config_id = 43029, monster_id = 21010701, pos = { x = 1553.756, y = 269.624, z = -1485.167 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43036] = { config_id = 43036, monster_id = 21010601, pos = { x = 1555.091, y = 269.631, z = -1485.174 }, rot = { x = 0.000, y = 210.482, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43037] = { config_id = 43037, monster_id = 21010401, pos = { x = 1549.013, y = 276.722, z = -1504.086 }, rot = { x = 0.000, y = 319.175, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[43044] = { config_id = 43044, monster_id = 21010601, pos = { x = 1554.518, y = 269.625, z = -1483.683 }, rot = { x = 0.000, y = 210.482, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[43008] = { config_id = 43008, gadget_id = 70300085, pos = { x = 1554.509, y = 269.167, z = -1484.589 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[43009] = { config_id = 43009, gadget_id = 70300085, pos = { x = 1540.131, y = 270.337, z = -1496.669 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[43010] = { config_id = 43010, gadget_id = 70300081, pos = { x = 1560.030, y = 271.384, z = -1503.461 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[43011] = { config_id = 43011, gadget_id = 70300081, pos = { x = 1564.716, y = 270.366, z = -1494.773 }, rot = { x = 0.000, y = 6.812, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[43012] = { config_id = 43012, gadget_id = 70300081, pos = { x = 1562.673, y = 268.482, z = -1484.347 }, rot = { x = 1.406, y = 323.027, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[43013] = { config_id = 43013, gadget_id = 70300081, pos = { x = 1549.542, y = 271.288, z = -1508.204 }, rot = { x = 0.000, y = 79.196, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[43014] = { config_id = 43014, gadget_id = 70300081, pos = { x = 1538.910, y = 270.921, z = -1506.862 }, rot = { x = 355.829, y = 127.951, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[43022] = { config_id = 43022, gadget_id = 70300090, pos = { x = 1560.495, y = 270.286, z = -1493.970 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[43023] = { config_id = 43023, gadget_id = 70300090, pos = { x = 1548.789, y = 271.182, z = -1504.778 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[43030] = { config_id = 43030, gadget_id = 70690012, pos = { x = 1553.572, y = 266.626, z = -1497.121 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[43032] = { config_id = 43032, gadget_id = 70220005, pos = { x = 1538.977, y = 270.792, z = -1497.699 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, area_id = 2 },
	[43033] = { config_id = 43033, gadget_id = 70220005, pos = { x = 1538.705, y = 270.791, z = -1496.764 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, area_id = 2 },
	[43034] = { config_id = 43034, gadget_id = 70220005, pos = { x = 1555.692, y = 269.633, z = -1484.695 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, area_id = 2 },
	[43035] = { config_id = 43035, gadget_id = 70220005, pos = { x = 1555.308, y = 269.630, z = -1483.879 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, area_id = 2 },
	[43039] = { config_id = 43039, gadget_id = 70300091, pos = { x = 1552.124, y = 268.814, z = -1478.894 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[43040] = { config_id = 43040, gadget_id = 70300091, pos = { x = 1537.680, y = 269.299, z = -1490.436 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[43046] = { config_id = 43046, gadget_id = 70217008, pos = { x = 1550.737, y = 269.959, z = -1494.014 }, rot = { x = 0.000, y = 319.006, z = 0.000 }, level = 11, chest_drop_id = 21500007, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 2 },
	[43047] = { config_id = 43047, gadget_id = 70220013, pos = { x = 1551.404, y = 268.724, z = -1481.839 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[43048] = { config_id = 43048, gadget_id = 70220013, pos = { x = 1549.618, y = 268.850, z = -1482.321 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[43049] = { config_id = 43049, gadget_id = 70220014, pos = { x = 1558.301, y = 269.997, z = -1492.085 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[43050] = { config_id = 43050, gadget_id = 70220014, pos = { x = 1557.528, y = 270.114, z = -1492.967 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[43051] = { config_id = 43051, gadget_id = 70220014, pos = { x = 1557.306, y = 269.943, z = -1491.879 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[43052] = { config_id = 43052, gadget_id = 70220014, pos = { x = 1547.752, y = 270.875, z = -1502.707 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[43053] = { config_id = 43053, gadget_id = 70220014, pos = { x = 1548.402, y = 270.760, z = -1501.505 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 },
	[43054] = { config_id = 43054, gadget_id = 70220014, pos = { x = 1547.068, y = 270.704, z = -1501.747 }, rot = { x = 0.000, y = 48.407, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 2 }
}

-- 区域
regions = {
	[43005] = { config_id = 43005, shape = RegionShape.CYLINDER, radius = 100, pos = { x = 1551.222, y = 270.018, z = -1494.348 }, height = 100.000, area_id = 2 },
	[43016] = { config_id = 43016, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1551.651, y = 269.956, z = -1493.645 }, area_id = 2 },
	[43055] = { config_id = 43055, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 1551.222, y = 270.018, z = -1494.348 }, height = 100.000, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1043005, name = "ENTER_REGION_43005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43005", action = "action_EVENT_ENTER_REGION_43005" },
	{ config_id = 1043006, name = "ANY_MONSTER_DIE_43006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43006", action = "action_EVENT_ANY_MONSTER_DIE_43006", trigger_count = 0, tag = "43006" },
	{ config_id = 1043007, name = "CHALLENGE_SUCCESS_43007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111680", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_43007" },
	{ config_id = 1043015, name = "MONSTER_BATTLE_43015", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_43015", action = "action_EVENT_MONSTER_BATTLE_43015" },
	{ config_id = 1043016, name = "ENTER_REGION_43016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43016", action = "action_EVENT_ENTER_REGION_43016" },
	{ config_id = 1043017, name = "TIME_AXIS_PASS_43017", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "condition_EVENT_TIME_AXIS_PASS_43017", action = "action_EVENT_TIME_AXIS_PASS_43017" },
	{ config_id = 1043018, name = "TIME_AXIS_PASS_43018", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "condition_EVENT_TIME_AXIS_PASS_43018", action = "action_EVENT_TIME_AXIS_PASS_43018" },
	{ config_id = 1043021, name = "GADGET_STATE_CHANGE_43021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_43021", action = "action_EVENT_GADGET_STATE_CHANGE_43021" },
	{ config_id = 1043045, name = "TIME_AXIS_PASS_43045", event = EventType.EVENT_TIME_AXIS_PASS, source = "waitBundleEnd", condition = "", action = "action_EVENT_TIME_AXIS_PASS_43045" },
	{ config_id = 1043055, name = "ENTER_REGION_43055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43055", action = "" }
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
		regions = { 43005, 43055 },
		triggers = { "ENTER_REGION_43005", "ANY_MONSTER_DIE_43006", "CHALLENGE_SUCCESS_43007", "GADGET_STATE_CHANGE_43021", "TIME_AXIS_PASS_43045", "ENTER_REGION_43055" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 物件,
		monsters = { },
		gadgets = { 43008, 43009, 43010, 43011, 43012, 43013, 43014, 43022, 43023, 43039, 43040, 43047, 43048, 43049, 43050, 43051, 43052, 43053, 43054 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 首领,
		monsters = { 43001 },
		gadgets = { 43030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第一波怪,
		monsters = { 43002, 43024, 43025, 43026 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_43015", "TIME_AXIS_PASS_43017" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪,
		monsters = { 43003, 43027, 43028, 43029 },
		gadgets = { 43032, 43033 },
		regions = { 43016 },
		triggers = { "ENTER_REGION_43016", "TIME_AXIS_PASS_43018" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪,
		monsters = { 43004, 43036, 43037, 43044 },
		gadgets = { 43034, 43035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 宝箱suite,
		monsters = { },
		gadgets = { 43046 },
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
function condition_EVENT_ENTER_REGION_43005(context, evt)
	if evt.param1 ~= 43005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001043, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43006(context, evt)
	--判断死亡怪物的configid是否为 43001
	if evt.param1 ~= 43001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43006(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_43007(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001043, 7)
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001043, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133001043, EntityType.GADGET, 43030 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_43015(context, evt)
	if 43001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_43015(context, evt)
	-- 创建标识为"T1"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_43016(context, evt)
	if evt.param1 ~= 43016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43016(context, evt)
	-- 创建标识为"T2"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_43017(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_43017(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133001043, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133001043, 4)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001043, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_43018(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_43018(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133001043, 6)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133001043, 5)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001043, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_43021(context, evt)
	if 43046 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_43021(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"waitBundleEnd"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "waitBundleEnd", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_43045(context, evt)
	-- 触发镜头注目，注目位置为坐标（1572.091，280，-1477.297），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1572.091, y=280, z=-1477.297}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 400071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_43055(context, evt)
	if evt.param1 ~= 43055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V2_1/MoonlitCamp"