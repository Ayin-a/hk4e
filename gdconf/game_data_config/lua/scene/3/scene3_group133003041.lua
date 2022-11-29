-- 基础信息
local base_info = {
	group_id = 133003041
}

-- DEFS_MISCS
local defs = {
    GroupID = 133003041,
    AGRegionConfigID = 41042,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part1",
    AGKey = "_Activity_ToMoon_Part1_Level",
    ChallengeRegionConfigID = 41042,
    ChallengeID = 111168,
    TriggerTag = 41013,
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
	[41001] = { config_id = 41001, monster_id = 22010104, pos = { x = 2154.256, y = 222.158, z = -1367.306 }, rot = { x = 0.000, y = 191.878, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, affix = { 1033, 6110, 1007 }, isElite = true, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41002] = { config_id = 41002, monster_id = 21010401, pos = { x = 2142.023, y = 223.814, z = -1371.465 }, rot = { x = 0.000, y = 104.076, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41004] = { config_id = 41004, monster_id = 21010701, pos = { x = 2142.415, y = 223.864, z = -1372.204 }, rot = { x = 0.000, y = 80.079, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41011] = { config_id = 41011, monster_id = 21010401, pos = { x = 2141.038, y = 223.909, z = -1372.140 }, rot = { x = 0.000, y = 104.076, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41024] = { config_id = 41024, monster_id = 21010701, pos = { x = 2160.308, y = 222.137, z = -1379.445 }, rot = { x = 0.000, y = 321.175, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41025] = { config_id = 41025, monster_id = 21010701, pos = { x = 2161.241, y = 222.140, z = -1378.694 }, rot = { x = 0.000, y = 321.175, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41026] = { config_id = 41026, monster_id = 21010701, pos = { x = 2141.761, y = 223.998, z = -1373.458 }, rot = { x = 0.000, y = 55.202, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41027] = { config_id = 41027, monster_id = 21010401, pos = { x = 2148.240, y = 227.755, z = -1355.646 }, rot = { x = 0.000, y = 217.113, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41028] = { config_id = 41028, monster_id = 21010701, pos = { x = 2141.430, y = 223.959, z = -1372.881 }, rot = { x = 0.000, y = 80.079, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41029] = { config_id = 41029, monster_id = 21010201, pos = { x = 2161.425, y = 222.137, z = -1379.284 }, rot = { x = 0.000, y = 342.076, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41030] = { config_id = 41030, monster_id = 21010201, pos = { x = 2160.441, y = 222.134, z = -1379.959 }, rot = { x = 0.000, y = 342.076, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41031] = { config_id = 41031, monster_id = 21010701, pos = { x = 2141.324, y = 223.872, z = -1371.832 }, rot = { x = 0.000, y = 18.885, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 },
	[41032] = { config_id = 41032, monster_id = 21010401, pos = { x = 2147.208, y = 227.706, z = -1354.865 }, rot = { x = 0.000, y = 217.113, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 1, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[41005] = { config_id = 41005, gadget_id = 70300085, pos = { x = 2141.705, y = 223.445, z = -1372.400 }, rot = { x = 0.000, y = 290.939, z = 354.369 }, level = 15, persistent = true, area_id = 1 },
	[41006] = { config_id = 41006, gadget_id = 70300085, pos = { x = 2160.926, y = 221.677, z = -1379.360 }, rot = { x = 0.000, y = 290.939, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[41007] = { config_id = 41007, gadget_id = 70300081, pos = { x = 2178.104, y = 224.601, z = -1365.481 }, rot = { x = 358.871, y = 340.389, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[41008] = { config_id = 41008, gadget_id = 70300081, pos = { x = 2140.477, y = 222.267, z = -1352.757 }, rot = { x = 0.000, y = 240.210, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[41009] = { config_id = 41009, gadget_id = 70300081, pos = { x = 2136.617, y = 224.046, z = -1376.895 }, rot = { x = 0.000, y = 141.331, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[41010] = { config_id = 41010, gadget_id = 70300081, pos = { x = 2162.224, y = 221.153, z = -1384.659 }, rot = { x = 0.000, y = 78.676, z = 0.000 }, level = 15, persistent = true, area_id = 1 },
	[41022] = { config_id = 41022, gadget_id = 70300090, pos = { x = 2148.062, y = 222.195, z = -1355.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[41023] = { config_id = 41023, gadget_id = 70300090, pos = { x = 2168.082, y = 224.085, z = -1363.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[41035] = { config_id = 41035, gadget_id = 70690012, pos = { x = 2155.992, y = 219.251, z = -1363.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[41036] = { config_id = 41036, gadget_id = 70217008, pos = { x = 2154.153, y = 222.128, z = -1367.550 }, rot = { x = 0.000, y = 192.023, z = 0.000 }, level = 1, chest_drop_id = 21500010, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 1 },
	[41037] = { config_id = 41037, gadget_id = 70300091, pos = { x = 2135.920, y = 224.819, z = -1364.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[41038] = { config_id = 41038, gadget_id = 70300091, pos = { x = 2171.108, y = 223.959, z = -1377.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[41039] = { config_id = 41039, gadget_id = 70300091, pos = { x = 2146.471, y = 226.512, z = -1387.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	[41040] = { config_id = 41040, gadget_id = 70300091, pos = { x = 2158.127, y = 224.837, z = -1355.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 }
}

-- 区域
regions = {
	[41012] = { config_id = 41012, shape = RegionShape.CYLINDER, radius = 100, pos = { x = 2154.841, y = 222.309, z = -1366.193 }, height = 100.000, area_id = 1 },
	[41016] = { config_id = 41016, shape = RegionShape.SPHERE, radius = 70, pos = { x = 2154.020, y = 222.224, z = -1366.138 }, area_id = 1 },
	[41042] = { config_id = 41042, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 2154.841, y = 222.309, z = -1366.193 }, height = 100.000, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1041012, name = "ENTER_REGION_41012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41012", action = "action_EVENT_ENTER_REGION_41012" },
	{ config_id = 1041013, name = "ANY_MONSTER_DIE_41013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_41013", action = "action_EVENT_ANY_MONSTER_DIE_41013", trigger_count = 0, tag = "41013" },
	{ config_id = 1041014, name = "CHALLENGE_SUCCESS_41014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111680", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_41014" },
	{ config_id = 1041015, name = "MONSTER_BATTLE_41015", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_41015", action = "action_EVENT_MONSTER_BATTLE_41015" },
	{ config_id = 1041016, name = "ENTER_REGION_41016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41016", action = "action_EVENT_ENTER_REGION_41016" },
	{ config_id = 1041017, name = "TIME_AXIS_PASS_41017", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "condition_EVENT_TIME_AXIS_PASS_41017", action = "action_EVENT_TIME_AXIS_PASS_41017" },
	{ config_id = 1041018, name = "TIME_AXIS_PASS_41018", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "condition_EVENT_TIME_AXIS_PASS_41018", action = "action_EVENT_TIME_AXIS_PASS_41018" },
	{ config_id = 1041021, name = "TIME_AXIS_PASS_41021", event = EventType.EVENT_TIME_AXIS_PASS, source = "WaitEndBundle", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41021" },
	{ config_id = 1041041, name = "GADGET_STATE_CHANGE_41041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41041", action = "action_EVENT_GADGET_STATE_CHANGE_41041" },
	{ config_id = 1041042, name = "ENTER_REGION_41042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41042", action = "" }
}

-- 变量
variables = {
	{ config_id = 1, name = "save", value = 0, no_refresh = true },
	{ config_id = 2, name = "OverKey", value = 0, no_refresh = false },
	{ config_id = 3, name = "IS_BOSS_DEAD", value = 0, no_refresh = true },
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
		regions = { 41012, 41042 },
		triggers = { "ENTER_REGION_41012", "ANY_MONSTER_DIE_41013", "CHALLENGE_SUCCESS_41014", "TIME_AXIS_PASS_41021", "GADGET_STATE_CHANGE_41041", "ENTER_REGION_41042" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 物件,
		monsters = { },
		gadgets = { 41005, 41006, 41007, 41008, 41009, 41010, 41022, 41023, 41037, 41038, 41039, 41040 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 首领,
		monsters = { 41001 },
		gadgets = { 41035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第一波小怪,
		monsters = { 41002, 41011, 41029, 41030 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_41015", "TIME_AXIS_PASS_41017" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波小怪,
		monsters = { 41024, 41025, 41026, 41031 },
		gadgets = { },
		regions = { 41016 },
		triggers = { "ENTER_REGION_41016", "TIME_AXIS_PASS_41018" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波小怪,
		monsters = { 41004, 41027, 41028, 41032 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 宝箱,
		monsters = { },
		gadgets = { 41036 },
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
function condition_EVENT_ENTER_REGION_41012(context, evt)
	if evt.param1 ~= 41012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_41012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003041, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_41013(context, evt)
	--判断死亡怪物的configid是否为 41001
	if evt.param1 ~= 41001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_41013(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_41014(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003041, 7)
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133003041, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003041, EntityType.GADGET, 41035 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_41015(context, evt)
	if 41001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_41015(context, evt)
	-- 创建标识为"T1"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_41016(context, evt)
	if evt.param1 ~= 41016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_41016(context, evt)
	-- 创建标识为"T2"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_41017(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_41017(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133003041, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133003041, 4)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003041, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_41018(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_41018(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133003041, 6)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133003041, 5)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003041, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_41021(context, evt)
	-- 触发镜头注目，注目位置为坐标（2177，232，-1373），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2177, y=232, z=-1373}
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
function condition_EVENT_GADGET_STATE_CHANGE_41041(context, evt)
	if 41036 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41041(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"WaitEndBundle"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WaitEndBundle", {3}, false)
	
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003041, EntityType.GADGET, 41035 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_41042(context, evt)
	if evt.param1 ~= 41042 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V2_1/MoonlitCamp"