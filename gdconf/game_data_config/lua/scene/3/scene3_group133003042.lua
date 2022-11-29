-- 基础信息
local base_info = {
	group_id = 133003042
}

-- DEFS_MISCS
local defs = {
    GroupID = 133003042,
    AGRegionConfigID = 42049,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part1",
    AGKey = "_Activity_ToMoon_Part1_Level",
    ChallengeRegionConfigID = 42049,
    ChallengeID = 111168,
    TriggerTag = 42020,
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
	[42001] = { config_id = 42001, monster_id = 21020202, pos = { x = 2394.169, y = 282.435, z = -1571.366 }, rot = { x = 0.000, y = 283.469, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 1007, 1033, 6110 }, isElite = true, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42002] = { config_id = 42002, monster_id = 21010201, pos = { x = 2387.700, y = 280.896, z = -1558.470 }, rot = { x = 0.000, y = 237.128, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42003] = { config_id = 42003, monster_id = 21010401, pos = { x = 2405.562, y = 290.292, z = -1565.371 }, rot = { x = 0.000, y = 308.705, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42004] = { config_id = 42004, monster_id = 21010201, pos = { x = 2387.658, y = 280.885, z = -1558.323 }, rot = { x = 0.000, y = 237.128, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42005] = { config_id = 42005, monster_id = 21010201, pos = { x = 2387.052, y = 280.754, z = -1557.468 }, rot = { x = 0.000, y = 237.128, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42006] = { config_id = 42006, monster_id = 21010701, pos = { x = 2397.760, y = 285.230, z = -1582.503 }, rot = { x = 0.000, y = 320.257, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42007] = { config_id = 42007, monster_id = 21010701, pos = { x = 2398.482, y = 285.420, z = -1583.452 }, rot = { x = 0.000, y = 320.257, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42008] = { config_id = 42008, monster_id = 21030101, pos = { x = 2388.105, y = 280.965, z = -1558.047 }, rot = { x = 0.000, y = 115.498, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42009] = { config_id = 42009, monster_id = 21010401, pos = { x = 2406.080, y = 290.085, z = -1565.203 }, rot = { x = 0.000, y = 235.063, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42010] = { config_id = 42010, monster_id = 21010201, pos = { x = 2387.010, y = 280.743, z = -1557.321 }, rot = { x = 0.000, y = 237.128, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42029] = { config_id = 42029, monster_id = 21010401, pos = { x = 2397.897, y = 285.233, z = -1582.328 }, rot = { x = 0.000, y = 308.705, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42030] = { config_id = 42030, monster_id = 21011601, pos = { x = 2397.047, y = 285.212, z = -1583.389 }, rot = { x = 0.000, y = 308.705, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42031] = { config_id = 42031, monster_id = 21010401, pos = { x = 2386.104, y = 280.592, z = -1558.383 }, rot = { x = 0.000, y = 115.498, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[42033] = { config_id = 42033, monster_id = 21030301, pos = { x = 2398.469, y = 285.380, z = -1583.045 }, rot = { x = 0.000, y = 308.705, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[42011] = { config_id = 42011, gadget_id = 70300085, pos = { x = 2387.252, y = 280.333, z = -1557.945 }, rot = { x = 357.084, y = 22.012, z = 10.076 }, level = 15, persistent = true, area_id = 1 },
	[42012] = { config_id = 42012, gadget_id = 70300085, pos = { x = 2398.083, y = 284.895, z = -1583.427 }, rot = { x = 1.948, y = 22.843, z = 9.134 }, level = 15, persistent = true, area_id = 1 },
	[42013] = { config_id = 42013, gadget_id = 70300081, pos = { x = 2402.542, y = 286.864, z = -1592.936 }, rot = { x = 0.000, y = 71.981, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[42014] = { config_id = 42014, gadget_id = 70300081, pos = { x = 2405.392, y = 282.173, z = -1553.078 }, rot = { x = 6.953, y = 331.801, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[42015] = { config_id = 42015, gadget_id = 70300081, pos = { x = 2376.879, y = 279.154, z = -1555.418 }, rot = { x = 357.403, y = 205.293, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[42016] = { config_id = 42016, gadget_id = 70300081, pos = { x = 2367.526, y = 287.200, z = -1580.432 }, rot = { x = 350.797, y = 170.267, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[42017] = { config_id = 42017, gadget_id = 70300090, pos = { x = 2406.221, y = 284.398, z = -1565.536 }, rot = { x = 0.000, y = 91.591, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[42018] = { config_id = 42018, gadget_id = 70300090, pos = { x = 2377.893, y = 283.566, z = -1577.245 }, rot = { x = 0.000, y = 91.591, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[42034] = { config_id = 42034, gadget_id = 70690012, pos = { x = 2401.017, y = 280.503, z = -1569.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[42035] = { config_id = 42035, gadget_id = 70220005, pos = { x = 2390.222, y = 280.870, z = -1557.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	[42036] = { config_id = 42036, gadget_id = 70220005, pos = { x = 2390.175, y = 280.876, z = -1558.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	[42037] = { config_id = 42037, gadget_id = 70220005, pos = { x = 2396.981, y = 284.212, z = -1580.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	[42038] = { config_id = 42038, gadget_id = 70220005, pos = { x = 2398.090, y = 284.498, z = -1580.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	[42041] = { config_id = 42041, gadget_id = 70300091, pos = { x = 2409.221, y = 283.222, z = -1559.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[42042] = { config_id = 42042, gadget_id = 70300091, pos = { x = 2410.026, y = 285.122, z = -1569.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[42043] = { config_id = 42043, gadget_id = 70300091, pos = { x = 2372.544, y = 288.112, z = -1581.380 }, rot = { x = 6.606, y = 0.154, z = 3.689 }, level = 1, persistent = true, area_id = 1 },
	[42044] = { config_id = 42044, gadget_id = 70300091, pos = { x = 2408.313, y = 286.761, z = -1587.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[42045] = { config_id = 42045, gadget_id = 70300091, pos = { x = 2396.341, y = 286.627, z = -1592.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[42046] = { config_id = 42046, gadget_id = 70690012, pos = { x = 2383.936, y = 279.232, z = -1575.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[42047] = { config_id = 42047, gadget_id = 70217008, pos = { x = 2393.718, y = 282.033, z = -1569.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 21500011, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 1 }
}

-- 区域
regions = {
	[42019] = { config_id = 42019, shape = RegionShape.CYLINDER, radius = 100, pos = { x = 2395.254, y = 282.705, z = -1572.011 }, height = 100.000, area_id = 1 },
	[42023] = { config_id = 42023, shape = RegionShape.SPHERE, radius = 70, pos = { x = 2395.334, y = 282.676, z = -1571.193 }, area_id = 1 },
	[42049] = { config_id = 42049, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 2395.254, y = 282.705, z = -1572.011 }, height = 100.000, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1042019, name = "ENTER_REGION_42019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_42019", action = "action_EVENT_ENTER_REGION_42019" },
	{ config_id = 1042020, name = "ANY_MONSTER_DIE_42020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42020", action = "action_EVENT_ANY_MONSTER_DIE_42020", trigger_count = 0, tag = "42020" },
	{ config_id = 1042021, name = "CHALLENGE_SUCCESS_42021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111680", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_42021" },
	{ config_id = 1042022, name = "MONSTER_BATTLE_42022", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_42022", action = "action_EVENT_MONSTER_BATTLE_42022" },
	{ config_id = 1042023, name = "ENTER_REGION_42023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_42023", action = "action_EVENT_ENTER_REGION_42023" },
	{ config_id = 1042024, name = "TIME_AXIS_PASS_42024", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "condition_EVENT_TIME_AXIS_PASS_42024", action = "action_EVENT_TIME_AXIS_PASS_42024" },
	{ config_id = 1042025, name = "TIME_AXIS_PASS_42025", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "condition_EVENT_TIME_AXIS_PASS_42025", action = "action_EVENT_TIME_AXIS_PASS_42025" },
	{ config_id = 1042028, name = "TIME_AXIS_PASS_42028", event = EventType.EVENT_TIME_AXIS_PASS, source = "waitBundleEnd", condition = "", action = "action_EVENT_TIME_AXIS_PASS_42028" },
	{ config_id = 1042048, name = "GADGET_STATE_CHANGE_42048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42048", action = "action_EVENT_GADGET_STATE_CHANGE_42048" },
	{ config_id = 1042049, name = "ENTER_REGION_42049", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_42049", action = "" }
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
		regions = { 42019, 42049 },
		triggers = { "ENTER_REGION_42019", "ANY_MONSTER_DIE_42020", "CHALLENGE_SUCCESS_42021", "TIME_AXIS_PASS_42028", "GADGET_STATE_CHANGE_42048", "ENTER_REGION_42049" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 物件,
		monsters = { },
		gadgets = { 42011, 42012, 42013, 42014, 42015, 42016, 42017, 42018, 42041, 42042, 42043, 42044, 42045 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 42001 },
		gadgets = { 42034, 42046 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 42002, 42003, 42005, 42029, 42030 },
		gadgets = { 42037, 42038 },
		regions = { },
		triggers = { "MONSTER_BATTLE_42022", "TIME_AXIS_PASS_42024" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 42006, 42007, 42008, 42031 },
		gadgets = { 42035, 42036 },
		regions = { 42023 },
		triggers = { "ENTER_REGION_42023", "TIME_AXIS_PASS_42025" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 42004, 42009, 42010, 42033 },
		gadgets = { 42037, 42038 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 42047 },
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
function condition_EVENT_ENTER_REGION_42019(context, evt)
	if evt.param1 ~= 42019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_42019(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003042, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42020(context, evt)
	--判断死亡怪物的configid是否为 42001
	if evt.param1 ~= 42001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42020(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_42021(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003042, 7)
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133003042, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003042, EntityType.GADGET, 42034 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003042, EntityType.GADGET, 42046 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_42022(context, evt)
	if 42001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_42022(context, evt)
	-- 创建标识为"T1"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_42023(context, evt)
	if evt.param1 ~= 42023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_42023(context, evt)
	-- 创建标识为"T2"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_42024(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_42024(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133003042, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133003042, 4)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003042, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_42025(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_42025(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133003042, 6)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133003042, 5)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003042, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_42028(context, evt)
	-- 触发镜头注目，注目位置为坐标（2407，295，-1598），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2407, y=295, z=-1598}
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
function condition_EVENT_GADGET_STATE_CHANGE_42048(context, evt)
	if 42047 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42048(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"waitBundleEnd"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "waitBundleEnd", {3}, false)
	
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003042, EntityType.GADGET, 42034 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003042, EntityType.GADGET, 42046 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_42049(context, evt)
	if evt.param1 ~= 42049 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V2_1/MoonlitCamp"