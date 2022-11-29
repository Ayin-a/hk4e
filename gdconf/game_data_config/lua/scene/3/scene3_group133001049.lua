-- 基础信息
local base_info = {
	group_id = 133001049
}

-- DEFS_MISCS
local defs = {
    GroupID = 133001049,
    AGRegionConfigID = 49046,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part1",
    AGKey = "_Activity_ToMoon_Part1_Level",
    ChallengeRegionConfigID = 49046,
    ChallengeID = 111168,
    TriggerTag = 49013,
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
	[49001] = { config_id = 49001, monster_id = 20010601, pos = { x = 1889.138, y = 196.270, z = -1462.853 }, rot = { x = 0.000, y = 260.939, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true, affix = { 1007, 1033, 6110 }, isElite = true, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49002] = { config_id = 49002, monster_id = 20010801, pos = { x = 1887.484, y = 196.164, z = -1454.311 }, rot = { x = 0.000, y = 142.961, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49003] = { config_id = 49003, monster_id = 20010501, pos = { x = 1885.544, y = 197.373, z = -1473.165 }, rot = { x = 0.000, y = 9.719, z = 0.000 }, level = 1, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49004] = { config_id = 49004, monster_id = 20010501, pos = { x = 1884.294, y = 197.366, z = -1473.550 }, rot = { x = 0.000, y = 9.719, z = 0.000 }, level = 1, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49022] = { config_id = 49022, monster_id = 20010801, pos = { x = 1886.234, y = 196.157, z = -1454.696 }, rot = { x = 0.000, y = 142.961, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49023] = { config_id = 49023, monster_id = 21010401, pos = { x = 1901.592, y = 197.521, z = -1464.169 }, rot = { x = 0.000, y = 214.598, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49024] = { config_id = 49024, monster_id = 21010401, pos = { x = 1901.074, y = 197.524, z = -1462.327 }, rot = { x = 0.000, y = 214.598, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49031] = { config_id = 49031, monster_id = 20011001, pos = { x = 1901.952, y = 197.525, z = -1463.272 }, rot = { x = 0.000, y = 281.461, z = 0.000 }, level = 1, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49032] = { config_id = 49032, monster_id = 20011001, pos = { x = 1900.702, y = 197.518, z = -1463.657 }, rot = { x = 0.000, y = 281.461, z = 0.000 }, level = 1, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49035] = { config_id = 49035, monster_id = 21010902, pos = { x = 1886.880, y = 196.158, z = -1455.515 }, rot = { x = 0.000, y = 170.599, z = 0.000 }, level = 1, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49036] = { config_id = 49036, monster_id = 21010902, pos = { x = 1886.519, y = 196.162, z = -1453.445 }, rot = { x = 0.000, y = 170.599, z = 0.000 }, level = 1, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49038] = { config_id = 49038, monster_id = 21010401, pos = { x = 1895.759, y = 198.845, z = -1470.067 }, rot = { x = 0.000, y = 322.617, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49039] = { config_id = 49039, monster_id = 21010701, pos = { x = 1887.002, y = 196.160, z = -1454.685 }, rot = { x = 0.000, y = 33.137, z = 0.000 }, level = 1, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 },
	[49042] = { config_id = 49042, monster_id = 21010701, pos = { x = 1887.727, y = 196.167, z = -1453.574 }, rot = { x = 0.000, y = 33.137, z = 0.000 }, level = 1, disableWander = true, affix = { 4139 }, isOneoff = true, area_id = 2, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[49005] = { config_id = 49005, gadget_id = 70300085, pos = { x = 1887.016, y = 195.702, z = -1454.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[49006] = { config_id = 49006, gadget_id = 70300085, pos = { x = 1884.766, y = 196.910, z = -1473.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[49007] = { config_id = 49007, gadget_id = 70300081, pos = { x = 1908.527, y = 197.185, z = -1463.660 }, rot = { x = 3.835, y = 0.000, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[49008] = { config_id = 49008, gadget_id = 70300081, pos = { x = 1899.827, y = 196.934, z = -1451.583 }, rot = { x = 0.000, y = 318.405, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[49009] = { config_id = 49009, gadget_id = 70300081, pos = { x = 1888.763, y = 195.668, z = -1444.757 }, rot = { x = 2.911, y = 274.620, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[49010] = { config_id = 49010, gadget_id = 70300081, pos = { x = 1899.961, y = 198.139, z = -1479.086 }, rot = { x = 0.000, y = 43.149, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[49011] = { config_id = 49011, gadget_id = 70300081, pos = { x = 1884.370, y = 196.873, z = -1482.795 }, rot = { x = 355.075, y = 79.544, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[49019] = { config_id = 49019, gadget_id = 70690012, pos = { x = 1895.881, y = 195.822, z = -1457.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	[49021] = { config_id = 49021, gadget_id = 70300085, pos = { x = 1901.205, y = 197.062, z = -1463.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, persistent = true, area_id = 2 },
	[49025] = { config_id = 49025, gadget_id = 70220005, pos = { x = 1901.489, y = 197.000, z = -1459.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[49026] = { config_id = 49026, gadget_id = 70220005, pos = { x = 1899.713, y = 196.994, z = -1459.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[49027] = { config_id = 49027, gadget_id = 70220005, pos = { x = 1890.100, y = 196.156, z = -1452.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[49028] = { config_id = 49028, gadget_id = 70220005, pos = { x = 1889.061, y = 195.902, z = -1451.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[49029] = { config_id = 49029, gadget_id = 70220005, pos = { x = 1887.893, y = 197.045, z = -1470.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[49030] = { config_id = 49030, gadget_id = 70220005, pos = { x = 1886.952, y = 197.002, z = -1471.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[49044] = { config_id = 49044, gadget_id = 70217008, pos = { x = 1890.611, y = 196.352, z = -1462.685 }, rot = { x = 0.000, y = 268.556, z = 0.000 }, level = 1, chest_drop_id = 21500009, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 2 }
}

-- 区域
regions = {
	[49012] = { config_id = 49012, shape = RegionShape.CYLINDER, radius = 100, pos = { x = 1888.375, y = 196.274, z = -1463.323 }, height = 100.000, area_id = 2 },
	[49016] = { config_id = 49016, shape = RegionShape.SPHERE, radius = 70, pos = { x = 1888.133, y = 196.173, z = -1462.536 }, area_id = 2 },
	[49046] = { config_id = 49046, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 1888.375, y = 196.274, z = -1463.323 }, height = 100.000, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1049012, name = "ENTER_REGION_49012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49012", action = "action_EVENT_ENTER_REGION_49012" },
	{ config_id = 1049013, name = "ANY_MONSTER_DIE_49013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49013", action = "action_EVENT_ANY_MONSTER_DIE_49013", trigger_count = 0, tag = "49013" },
	{ config_id = 1049014, name = "CHALLENGE_SUCCESS_49014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111680", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_49014" },
	{ config_id = 1049015, name = "MONSTER_BATTLE_49015", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_49015", action = "action_EVENT_MONSTER_BATTLE_49015" },
	{ config_id = 1049016, name = "ENTER_REGION_49016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49016", action = "action_EVENT_ENTER_REGION_49016" },
	{ config_id = 1049017, name = "TIME_AXIS_PASS_49017", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "condition_EVENT_TIME_AXIS_PASS_49017", action = "action_EVENT_TIME_AXIS_PASS_49017" },
	{ config_id = 1049018, name = "TIME_AXIS_PASS_49018", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "condition_EVENT_TIME_AXIS_PASS_49018", action = "action_EVENT_TIME_AXIS_PASS_49018" },
	{ config_id = 1049037, name = "GADGET_STATE_CHANGE_49037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_49037", action = "action_EVENT_GADGET_STATE_CHANGE_49037" },
	{ config_id = 1049045, name = "TIME_AXIS_PASS_49045", event = EventType.EVENT_TIME_AXIS_PASS, source = "waitBundleEnd", condition = "", action = "action_EVENT_TIME_AXIS_PASS_49045" },
	{ config_id = 1049046, name = "ENTER_REGION_49046", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49046", action = "" }
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
		regions = { 49012, 49046 },
		triggers = { "ENTER_REGION_49012", "ANY_MONSTER_DIE_49013", "CHALLENGE_SUCCESS_49014", "GADGET_STATE_CHANGE_49037", "TIME_AXIS_PASS_49045", "ENTER_REGION_49046" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 物件,
		monsters = { },
		gadgets = { 49005, 49006, 49007, 49008, 49009, 49010, 49011, 49021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 首领,
		monsters = { 49001 },
		gadgets = { 49019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第一波怪,
		monsters = { 49002, 49022, 49023, 49024, 49038 },
		gadgets = { 49025, 49026 },
		regions = { },
		triggers = { "MONSTER_BATTLE_49015", "TIME_AXIS_PASS_49017" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪,
		monsters = { 49031, 49032, 49039, 49042 },
		gadgets = { 49029, 49030 },
		regions = { 49016 },
		triggers = { "ENTER_REGION_49016", "TIME_AXIS_PASS_49018" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪,
		monsters = { 49003, 49004, 49035, 49036 },
		gadgets = { 49027, 49028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 49044 },
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
function condition_EVENT_ENTER_REGION_49012(context, evt)
	if evt.param1 ~= 49012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001049, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49013(context, evt)
	--判断死亡怪物的configid是否为 49001
	if evt.param1 ~= 49001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49013(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_49014(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001049, 7)
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001049, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133001049, EntityType.GADGET, 49019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_49015(context, evt)
	if 49001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_49015(context, evt)
	-- 创建标识为"T1"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_49016(context, evt)
	if evt.param1 ~= 49016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49016(context, evt)
	-- 创建标识为"T2"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_49017(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_49017(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133001049, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133001049, 4)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001049, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_49018(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_49018(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133001049, 6)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133001049, 5)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001049, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_49037(context, evt)
	if 49044 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_49037(context, evt)
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
function action_EVENT_TIME_AXIS_PASS_49045(context, evt)
	-- 触发镜头注目，注目位置为坐标（1910.817，205，-1458），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1910.817, y=205, z=-1458}
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
function condition_EVENT_ENTER_REGION_49046(context, evt)
	if evt.param1 ~= 49046 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V2_1/MoonlitCamp"