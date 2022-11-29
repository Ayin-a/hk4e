-- 基础信息
local base_info = {
	group_id = 133003048
}

-- DEFS_MISCS
local defs = {
    GroupID = 133003048,
    AGRegionConfigID = 48041,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part1",
    AGKey = "_Activity_ToMoon_Part1_Level",
    ChallengeRegionConfigID = 48041,
    ChallengeID = 111168,
    TriggerTag = 48020,
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
	[48001] = { config_id = 48001, monster_id = 21020501, pos = { x = 2574.206, y = 359.291, z = -1712.311 }, rot = { x = 0.000, y = 270.125, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王", disableWander = true, affix = { 6110, 1007 }, isElite = true, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48002] = { config_id = 48002, monster_id = 21010201, pos = { x = 2575.559, y = 359.025, z = -1708.028 }, rot = { x = 0.000, y = 271.122, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48003] = { config_id = 48003, monster_id = 21010201, pos = { x = 2576.035, y = 358.523, z = -1703.965 }, rot = { x = 0.000, y = 256.178, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48004] = { config_id = 48004, monster_id = 21010201, pos = { x = 2567.358, y = 356.512, z = -1703.260 }, rot = { x = 0.000, y = 190.755, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48005] = { config_id = 48005, monster_id = 21010601, pos = { x = 2574.226, y = 360.027, z = -1716.879 }, rot = { x = 0.000, y = 289.957, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48006] = { config_id = 48006, monster_id = 21030301, pos = { x = 2563.108, y = 358.148, z = -1719.757 }, rot = { x = 0.000, y = 39.422, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48007] = { config_id = 48007, monster_id = 21010401, pos = { x = 2564.037, y = 358.467, z = -1720.518 }, rot = { x = 0.000, y = 39.422, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48009] = { config_id = 48009, monster_id = 21010501, pos = { x = 2583.660, y = 366.329, z = -1705.190 }, rot = { x = 0.000, y = 272.186, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48010] = { config_id = 48010, monster_id = 21010201, pos = { x = 2565.797, y = 355.998, z = -1703.159 }, rot = { x = 0.000, y = 100.831, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48029] = { config_id = 48029, monster_id = 21010601, pos = { x = 2573.033, y = 360.188, z = -1720.163 }, rot = { x = 0.000, y = 289.957, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48031] = { config_id = 48031, monster_id = 21010401, pos = { x = 2578.768, y = 367.363, z = -1721.468 }, rot = { x = 0.000, y = 295.360, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48035] = { config_id = 48035, monster_id = 21010701, pos = { x = 2567.111, y = 356.456, z = -1703.544 }, rot = { x = 0.000, y = 106.025, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48036] = { config_id = 48036, monster_id = 21010701, pos = { x = 2565.594, y = 355.999, z = -1703.922 }, rot = { x = 0.000, y = 106.025, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[48039] = { config_id = 48039, monster_id = 21030101, pos = { x = 2566.745, y = 356.326, z = -1703.397 }, rot = { x = 0.000, y = 182.555, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[48011] = { config_id = 48011, gadget_id = 70300085, pos = { x = 2566.585, y = 355.769, z = -1703.165 }, rot = { x = 1.874, y = 9.564, z = 18.149 }, level = 15, persistent = true, area_id = 1 },
	[48012] = { config_id = 48012, gadget_id = 70300085, pos = { x = 2563.119, y = 357.711, z = -1720.627 }, rot = { x = 0.000, y = 9.186, z = 16.898 }, level = 15, persistent = true, area_id = 1 },
	[48013] = { config_id = 48013, gadget_id = 70300081, pos = { x = 2579.295, y = 363.553, z = -1732.013 }, rot = { x = 346.069, y = 58.636, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[48014] = { config_id = 48014, gadget_id = 70300081, pos = { x = 2585.713, y = 359.731, z = -1695.934 }, rot = { x = 13.083, y = 318.457, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[48015] = { config_id = 48015, gadget_id = 70300081, pos = { x = 2561.232, y = 352.434, z = -1696.987 }, rot = { x = 358.667, y = 219.578, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[48016] = { config_id = 48016, gadget_id = 70300081, pos = { x = 2558.837, y = 356.687, z = -1723.646 }, rot = { x = 348.374, y = 156.923, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[48017] = { config_id = 48017, gadget_id = 70300090, pos = { x = 2583.841, y = 360.835, z = -1705.655 }, rot = { x = 0.000, y = 91.195, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[48018] = { config_id = 48018, gadget_id = 70300090, pos = { x = 2579.361, y = 361.800, z = -1721.700 }, rot = { x = 0.000, y = 95.516, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[48033] = { config_id = 48033, gadget_id = 70690012, pos = { x = 2579.733, y = 357.765, z = -1712.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[48059] = { config_id = 48059, gadget_id = 70217008, pos = { x = 2574.544, y = 359.423, z = -1712.480 }, rot = { x = 0.000, y = 272.741, z = 0.000 }, level = 6, chest_drop_id = 21500012, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 1 }
}

-- 区域
regions = {
	[48019] = { config_id = 48019, shape = RegionShape.CYLINDER, radius = 120, pos = { x = 2575.414, y = 359.720, z = -1712.657 }, height = 100.000, area_id = 1 },
	[48023] = { config_id = 48023, shape = RegionShape.SPHERE, radius = 70, pos = { x = 2575.299, y = 359.550, z = -1711.841 }, area_id = 1 },
	[48041] = { config_id = 48041, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 2575.414, y = 359.720, z = -1712.657 }, height = 100.000, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1048019, name = "ENTER_REGION_48019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_48019" },
	{ config_id = 1048020, name = "ANY_MONSTER_DIE_48020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48020", action = "action_EVENT_ANY_MONSTER_DIE_48020", trigger_count = 0, tag = "48020" },
	{ config_id = 1048021, name = "CHALLENGE_SUCCESS_48021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111680", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_48021" },
	{ config_id = 1048022, name = "MONSTER_BATTLE_48022", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_48022", action = "action_EVENT_MONSTER_BATTLE_48022" },
	{ config_id = 1048023, name = "ENTER_REGION_48023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48023", action = "action_EVENT_ENTER_REGION_48023" },
	{ config_id = 1048024, name = "TIME_AXIS_PASS_48024", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "condition_EVENT_TIME_AXIS_PASS_48024", action = "action_EVENT_TIME_AXIS_PASS_48024" },
	{ config_id = 1048025, name = "TIME_AXIS_PASS_48025", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "condition_EVENT_TIME_AXIS_PASS_48025", action = "action_EVENT_TIME_AXIS_PASS_48025" },
	{ config_id = 1048028, name = "GADGET_STATE_CHANGE_48028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48028", action = "action_EVENT_GADGET_STATE_CHANGE_48028" },
	{ config_id = 1048041, name = "ENTER_REGION_48041", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "save", value = 0, no_refresh = true },
	{ config_id = 2, name = "IS_BOSS1_DEAD", value = 0, no_refresh = true },
	{ config_id = 3, name = "IS_BOSS2_DEAD", value = 0, no_refresh = true },
	{ config_id = 4, name = "OverKey", value = 0, no_refresh = false },
	{ config_id = 5, name = "stage", value = 1, no_refresh = true }
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
		regions = { 48019, 48041 },
		triggers = { "ENTER_REGION_48019", "ANY_MONSTER_DIE_48020", "CHALLENGE_SUCCESS_48021", "GADGET_STATE_CHANGE_48028", "ENTER_REGION_48041" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 刷怪点,
		monsters = { },
		gadgets = { 48011, 48012, 48013, 48014, 48015, 48016, 48017, 48018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = BOSS,
		monsters = { 48001 },
		gadgets = { 48033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = BOSS第一波怪,
		monsters = { 48002, 48003, 48005, 48029, 48031 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_48022", "TIME_AXIS_PASS_48024" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = BOSS第二波怪,
		monsters = { 48006, 48007, 48035, 48036 },
		gadgets = { },
		regions = { 48023 },
		triggers = { "ENTER_REGION_48023", "TIME_AXIS_PASS_48025" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = BOSS第三波怪,
		monsters = { 48004, 48009, 48010, 48039 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 宝箱,
		monsters = { },
		gadgets = { 48059 },
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
function action_EVENT_ENTER_REGION_48019(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003048, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48020(context, evt)
	--判断死亡怪物的configid是否为 48001
	if evt.param1 ~= 48001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48020(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "IS_BOSS1_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS1_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_48021(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003048, 11)
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133003048, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003048, EntityType.GADGET, 48033 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_48022(context, evt)
	if 48001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_48022(context, evt)
	-- 创建标识为"T1"，时间节点为{75}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {75}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_48023(context, evt)
	if evt.param1 ~= 48023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48023(context, evt)
	-- 创建标识为"T2"，时间节点为{75}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {75}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_48024(context, evt)
	-- 判断变量"IS_BOSS1_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS1_DEAD") ~= 0 then
			return false
	end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_48024(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133003048, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133003048, 4)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003048, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_48025(context, evt)
	-- 判断变量"IS_BOSS1_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS1_DEAD") ~= 0 then
			return false
	end
	
	-- 判断变量"stage"为2
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_48025(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133003048, 6)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133003048, 5)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003048, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_48028(context, evt)
	if 48059 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_48028(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003048, EntityType.GADGET, 48033 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_1/MoonlitCamp"