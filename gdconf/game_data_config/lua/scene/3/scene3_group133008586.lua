-- 基础信息
local base_info = {
	group_id = 133008586
}

-- DEFS_MISCS
local defs = {
    GroupID = 133008586,
    AGRegionConfigID = 586022,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part2",
    AGKey = "_Activity_ToMoon_Part2_Level",
    ChallengeRegionConfigID = 586022,
    ChallengeID = 111184,
    TriggerTag = 586023,
    TargetTriggerTime = 13,
    AreaID = 3, --  1璃月 2蒙德 3雪山
    OverKey = "OverKey",
    WatchKey = "save",
}

local Phase ={
        [1] = {2,3},
        [2] = {2,3,4},
        [3] = {2,3,4,5},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[586001] = { config_id = 586001, monster_id = 20010801, pos = { x = 1328.973, y = 353.753, z = -924.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586002] = { config_id = 586002, monster_id = 20010801, pos = { x = 1333.468, y = 352.864, z = -921.134 }, rot = { x = 0.000, y = 275.205, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586003] = { config_id = 586003, monster_id = 20010801, pos = { x = 1323.556, y = 355.068, z = -921.348 }, rot = { x = 0.000, y = 83.631, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586004] = { config_id = 586004, monster_id = 20010501, pos = { x = 1329.435, y = 354.040, z = -914.181 }, rot = { x = 0.000, y = 183.637, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586005] = { config_id = 586005, monster_id = 20010901, pos = { x = 1321.065, y = 355.649, z = -918.161 }, rot = { x = 0.000, y = 158.256, z = 0.000 }, level = 1, drop_tag = "大史莱姆", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586006] = { config_id = 586006, monster_id = 21011401, pos = { x = 1319.905, y = 356.011, z = -936.891 }, rot = { x = 0.000, y = 340.245, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586007] = { config_id = 586007, monster_id = 21011401, pos = { x = 1319.266, y = 356.394, z = -939.122 }, rot = { x = 0.000, y = 340.245, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586008] = { config_id = 586008, monster_id = 20010801, pos = { x = 1331.867, y = 353.496, z = -917.935 }, rot = { x = 0.000, y = 196.696, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586009] = { config_id = 586009, monster_id = 20010801, pos = { x = 1329.342, y = 354.037, z = -915.554 }, rot = { x = 0.000, y = 196.696, z = 0.000 }, level = 1, drop_tag = "史莱姆", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586010] = { config_id = 586010, monster_id = 26010101, pos = { x = 1322.274, y = 355.342, z = -921.989 }, rot = { x = 0.000, y = 294.082, z = 0.000 }, level = 1, drop_tag = "骗骗花", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586011] = { config_id = 586011, monster_id = 26010101, pos = { x = 1319.719, y = 356.185, z = -938.045 }, rot = { x = 0.000, y = 172.584, z = 0.000 }, level = 1, drop_tag = "骗骗花", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586013] = { config_id = 586013, monster_id = 20010501, pos = { x = 1333.594, y = 353.176, z = -916.067 }, rot = { x = 0.000, y = 226.320, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[586014] = { config_id = 586014, monster_id = 20010501, pos = { x = 1324.664, y = 354.845, z = -916.183 }, rot = { x = 0.000, y = 139.603, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[586015] = { config_id = 586015, gadget_id = 70310017, pos = { x = 1329.484, y = 353.283, z = -928.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[586016] = { config_id = 586016, gadget_id = 70310107, pos = { x = 1329.486, y = 353.289, z = -928.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[586018] = { config_id = 586018, gadget_id = 70217008, pos = { x = 1329.568, y = 353.381, z = -926.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 21500014, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 10 }
}

-- 区域
regions = {
	[586022] = { config_id = 586022, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 1329.551, y = 353.271, z = -928.084 }, height = 60.000, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1586019, name = "GADGET_CREATE_586019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_586019", action = "action_EVENT_GADGET_CREATE_586019", trigger_count = 0 },
	{ config_id = 1586020, name = "ANY_GADGET_DIE_586020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_586020", action = "action_EVENT_ANY_GADGET_DIE_586020", trigger_count = 0 },
	{ config_id = 1586021, name = "TIME_AXIS_PASS_586021", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_586021", trigger_count = 0 },
	{ config_id = 1586022, name = "ENTER_REGION_586022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_586022", action = "" },
	{ config_id = 1586023, name = "ANY_MONSTER_DIE_586023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_586023", trigger_count = 0, tag = "586023" },
	{ config_id = 1586024, name = "CHALLENGE_SUCCESS_586024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111840", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_586024" },
	{ config_id = 1586025, name = "ANY_MONSTER_DIE_586025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_586025", action = "action_EVENT_ANY_MONSTER_DIE_586025" },
	{ config_id = 1586026, name = "ANY_MONSTER_DIE_586026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_586026", action = "action_EVENT_ANY_MONSTER_DIE_586026" },
	{ config_id = 1586027, name = "GADGET_STATE_CHANGE_586027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_586027", action = "action_EVENT_GADGET_STATE_CHANGE_586027" }
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
		gadgets = { },
		regions = { 586022 },
		triggers = { "ENTER_REGION_586022", "ANY_MONSTER_DIE_586023", "CHALLENGE_SUCCESS_586024", "GADGET_STATE_CHANGE_586027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 暖源,
		monsters = { },
		gadgets = { 586015 },
		regions = { },
		triggers = { "GADGET_CREATE_586019", "ANY_GADGET_DIE_586020", "TIME_AXIS_PASS_586021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪,
		monsters = { 586001, 586002, 586003, 586004, 586013, 586014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_586025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二波怪,
		monsters = { 586005, 586006, 586007, 586008, 586009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_586026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三波怪,
		monsters = { 586010, 586011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 586016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 宝箱,
		monsters = { },
		gadgets = { 586018 },
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
function condition_EVENT_GADGET_CREATE_586019(context, evt)
	if 586015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_586019(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008586, 6)
	
	-- 将configid为 586015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 586015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_586020(context, evt)
	if 586016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_586020(context, evt)
	-- 将configid为 586015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 586015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"T1"，时间节点为{30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {30}, false)
	
	
	-- 调用提示id为 400076 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400076) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_586021(context, evt)
	-- 调用提示id为 400077 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400077) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为586016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 586016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 586015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 586015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_586022(context, evt)
	if evt.param1 ~= 586022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_586023(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_586024(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008586, 7)
	
	-- 将configid为 586015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 586015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_586025(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_586025(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008586, 4)
	
	-- 调用提示id为 400072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_586026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"stage"为2
	if ScriptLib.GetGroupVariableValue(context, "stage") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_586026(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008586, 5)
	
	-- 调用提示id为 400072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_586027(context, evt)
	if 586018 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_586027(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_1/MoonlitCamp"