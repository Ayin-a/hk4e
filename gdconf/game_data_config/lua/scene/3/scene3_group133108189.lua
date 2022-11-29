-- 基础信息
local base_info = {
	group_id = 133108189
}

-- DEFS_MISCS
local defs = {
    GroupID = 133108189,
    AGRegionConfigID = 189011,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part3",
    AGKey = "_Activity_ToMoon_Part3_Level",
    ChallengeRegionConfigID = 189011,
    ChallengeID = 111185,
    TriggerTag = 189012,
    TargetTriggerTime = 10,
    AreaID = 1, --  1璃月 2蒙德 3雪山
    OverKey = "OverKey",
    WatchKey = "save",
}

local Phase ={
        [1] = {3,5},
        [2] = {4,6},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[189001] = { config_id = 189001, monster_id = 24010101, pos = { x = -348.343, y = 200.512, z = -706.952 }, rot = { x = 0.000, y = 304.349, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 4140 }, isElite = true, isOneoff = true, pose_id = 101, area_id = 7, guest_ban_drop = 63 },
	[189002] = { config_id = 189002, monster_id = 24010101, pos = { x = -344.440, y = 200.512, z = -709.634 }, rot = { x = 0.000, y = 126.714, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 4140 }, isElite = true, isOneoff = true, pose_id = 101, area_id = 7, guest_ban_drop = 63 },
	[189003] = { config_id = 189003, monster_id = 24010101, pos = { x = -358.780, y = 200.874, z = -724.052 }, rot = { x = 0.000, y = 25.431, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 4140 }, isElite = true, isOneoff = true, pose_id = 100, area_id = 7, guest_ban_drop = 63 },
	[189004] = { config_id = 189004, monster_id = 24010101, pos = { x = -353.382, y = 200.976, z = -723.494 }, rot = { x = 0.000, y = 29.332, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, affix = { 4140 }, isElite = true, isOneoff = true, pose_id = 100, area_id = 7, guest_ban_drop = 63 },
	[189008] = { config_id = 189008, monster_id = 21010201, pos = { x = -339.580, y = 200.614, z = -713.018 }, rot = { x = 0.000, y = 287.645, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, isOneoff = true, pose_id = 9012, area_id = 7, guest_ban_drop = 63 },
	[189009] = { config_id = 189009, monster_id = 21010201, pos = { x = -342.380, y = 200.000, z = -701.497 }, rot = { x = 0.000, y = 216.522, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, isOneoff = true, pose_id = 9012, area_id = 7, guest_ban_drop = 63 },
	[189016] = { config_id = 189016, monster_id = 21010401, pos = { x = -353.436, y = 200.495, z = -703.169 }, rot = { x = 0.000, y = 121.808, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, isOneoff = true, pose_id = 9012, area_id = 7, guest_ban_drop = 63 },
	[189027] = { config_id = 189027, monster_id = 21030103, pos = { x = -364.406, y = 203.491, z = -722.126 }, rot = { x = 0.000, y = 48.220, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[189028] = { config_id = 189028, monster_id = 21010701, pos = { x = -355.697, y = 201.260, z = -728.003 }, rot = { x = 0.000, y = 19.543, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, isOneoff = true, area_id = 7, guest_ban_drop = 63 },
	[189029] = { config_id = 189029, monster_id = 21010701, pos = { x = -357.224, y = 201.132, z = -727.461 }, rot = { x = 0.000, y = 19.543, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, isOneoff = true, area_id = 7, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[189010] = { config_id = 189010, gadget_id = 70217008, pos = { x = -346.918, y = 200.512, z = -709.815 }, rot = { x = 0.000, y = 15.315, z = 0.000 }, level = 26, chest_drop_id = 21500006, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 7 },
	[189018] = { config_id = 189018, gadget_id = 70300107, pos = { x = -343.830, y = 200.406, z = -704.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	[189019] = { config_id = 189019, gadget_id = 70300107, pos = { x = -340.397, y = 200.456, z = -709.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	[189020] = { config_id = 189020, gadget_id = 70300107, pos = { x = -344.212, y = 200.631, z = -714.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	[189021] = { config_id = 189021, gadget_id = 70300107, pos = { x = -350.277, y = 200.485, z = -714.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	[189022] = { config_id = 189022, gadget_id = 70300107, pos = { x = -353.273, y = 200.547, z = -707.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	[189023] = { config_id = 189023, gadget_id = 70300107, pos = { x = -349.109, y = 200.354, z = -702.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 7 },
	[189032] = { config_id = 189032, gadget_id = 70290196, pos = { x = -348.114, y = 195.802, z = -712.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	[189011] = { config_id = 189011, shape = RegionShape.CYLINDER, radius = 70, pos = { x = -346.970, y = 200.512, z = -709.936 }, height = 100.000, area_id = 7 },
	[189024] = { config_id = 189024, shape = RegionShape.CYLINDER, radius = 120, pos = { x = -346.970, y = 200.512, z = -709.936 }, height = 100.000, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1189005, name = "ANY_MONSTER_DIE_189005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_189005", action = "action_EVENT_ANY_MONSTER_DIE_189005" },
	{ config_id = 1189011, name = "ENTER_REGION_189011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_189011", action = "" },
	{ config_id = 1189012, name = "ANY_MONSTER_DIE_189012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_189012", trigger_count = 0, tag = "189012" },
	{ config_id = 1189013, name = "CHALLENGE_SUCCESS_189013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111850", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_189013" },
	{ config_id = 1189014, name = "GADGET_STATE_CHANGE_189014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_189014", action = "action_EVENT_GADGET_STATE_CHANGE_189014" },
	{ config_id = 1189024, name = "ENTER_REGION_189024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_189024", action = "action_EVENT_ENTER_REGION_189024" }
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
		gadgets = { 189032 },
		regions = { 189011, 189024 },
		triggers = { "ENTER_REGION_189011", "ANY_MONSTER_DIE_189012", "CHALLENGE_SUCCESS_189013", "GADGET_STATE_CHANGE_189014", "ENTER_REGION_189024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 物件,
		monsters = { },
		gadgets = { 189018, 189019, 189020, 189021, 189022, 189023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 首领,
		monsters = { 189001, 189002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_189005" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 首领第二波,
		monsters = { 189003, 189004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 初始小怪,
		monsters = { 189008, 189009, 189016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 首领二小怪,
		monsters = { 189027, 189028, 189029 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 宝箱,
		monsters = { },
		gadgets = { 189010 },
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
function condition_EVENT_ANY_MONSTER_DIE_189005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"stage"为1
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_189005(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108189, 4)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108189, 6)
	
	-- 触发镜头注目，注目位置为坐标（-359，203，-724），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-359, y=203, z=-724}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 400075 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400075) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_189011(context, evt)
	if evt.param1 ~= 189011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_189012(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_189013(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108189, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_189014(context, evt)
	if 189010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_189014(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_189024(context, evt)
	if evt.param1 ~= 189024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_189024(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108189, 2)
	
	return 0
end

require "V2_1/MoonlitCamp"