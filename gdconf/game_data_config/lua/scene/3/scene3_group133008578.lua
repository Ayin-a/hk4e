-- 基础信息
local base_info = {
	group_id = 133008578
}

-- DEFS_MISCS
local defs = {
    GroupID = 133008578,
    AGRegionConfigID = 578022,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part2",
    AGKey = "_Activity_ToMoon_Part2_Level",
    ChallengeRegionConfigID = 578022,
    ChallengeID = 111184,
    TriggerTag = 578023,
    TargetTriggerTime = 14,
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
	[578001] = { config_id = 578001, monster_id = 25030201, pos = { x = 1210.969, y = 388.289, z = -731.148 }, rot = { x = 0.000, y = 85.040, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9006, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578002] = { config_id = 578002, monster_id = 25010201, pos = { x = 1213.399, y = 388.402, z = -734.522 }, rot = { x = 0.000, y = 0.246, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 4, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578003] = { config_id = 578003, monster_id = 25010201, pos = { x = 1213.411, y = 387.396, z = -727.824 }, rot = { x = 0.000, y = 168.671, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 4, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578004] = { config_id = 578004, monster_id = 25010201, pos = { x = 1218.260, y = 387.937, z = -731.008 }, rot = { x = 0.000, y = 268.677, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 4, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578005] = { config_id = 578005, monster_id = 25030301, pos = { x = 1217.068, y = 387.815, z = -734.132 }, rot = { x = 0.000, y = 243.296, z = 0.000 }, level = 1, drop_tag = "盗宝团", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578006] = { config_id = 578006, monster_id = 25010701, pos = { x = 1217.596, y = 388.051, z = -736.427 }, rot = { x = 0.000, y = 243.296, z = 0.000 }, level = 1, drop_tag = "盗宝团", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578007] = { config_id = 578007, monster_id = 25010701, pos = { x = 1215.311, y = 388.304, z = -735.978 }, rot = { x = 0.000, y = 243.296, z = 0.000 }, level = 1, drop_tag = "盗宝团", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578008] = { config_id = 578008, monster_id = 25020201, pos = { x = 1218.322, y = 386.029, z = -714.671 }, rot = { x = 0.000, y = 104.833, z = 0.000 }, level = 1, drop_tag = "盗宝团", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578009] = { config_id = 578009, monster_id = 25020201, pos = { x = 1216.185, y = 386.214, z = -717.417 }, rot = { x = 0.000, y = 104.833, z = 0.000 }, level = 1, drop_tag = "盗宝团", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578010] = { config_id = 578010, monster_id = 23040101, pos = { x = 1199.799, y = 389.762, z = -715.674 }, rot = { x = 0.000, y = 19.122, z = 0.000 }, level = 1, drop_tag = "召唤师", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578011] = { config_id = 578011, monster_id = 25020201, pos = { x = 1216.206, y = 387.959, z = -734.776 }, rot = { x = 0.000, y = 257.624, z = 0.000 }, level = 1, drop_tag = "盗宝团", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578012] = { config_id = 578012, monster_id = 25020201, pos = { x = 1216.687, y = 387.624, z = -732.411 }, rot = { x = 0.000, y = 257.624, z = 0.000 }, level = 1, drop_tag = "盗宝团", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578013] = { config_id = 578013, monster_id = 25020201, pos = { x = 1217.135, y = 387.761, z = -733.791 }, rot = { x = 0.000, y = 311.360, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9006, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[578014] = { config_id = 578014, monster_id = 25020201, pos = { x = 1215.147, y = 387.889, z = -733.470 }, rot = { x = 0.000, y = 224.643, z = 0.000 }, level = 1, drop_tag = "盗宝团", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[578015] = { config_id = 578015, gadget_id = 70310017, pos = { x = 1209.164, y = 387.470, z = -721.898 }, rot = { x = 0.000, y = 85.040, z = 0.000 }, level = 1, area_id = 10 },
	[578016] = { config_id = 578016, gadget_id = 70310107, pos = { x = 1209.230, y = 387.462, z = -721.895 }, rot = { x = 0.000, y = 85.040, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[578017] = { config_id = 578017, gadget_id = 70360099, pos = { x = 1214.210, y = 387.695, z = -731.172 }, rot = { x = 0.000, y = 85.040, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 10 },
	[578018] = { config_id = 578018, gadget_id = 70217008, pos = { x = 1210.590, y = 387.317, z = -721.856 }, rot = { x = 0.000, y = 85.040, z = 0.000 }, level = 26, chest_drop_id = 21500015, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 10 }
}

-- 区域
regions = {
	[578022] = { config_id = 578022, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 1209.215, y = 387.465, z = -721.960 }, height = 60.000, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1578019, name = "GADGET_CREATE_578019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_578019", action = "action_EVENT_GADGET_CREATE_578019", trigger_count = 0 },
	{ config_id = 1578020, name = "ANY_GADGET_DIE_578020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_578020", action = "action_EVENT_ANY_GADGET_DIE_578020", trigger_count = 0 },
	{ config_id = 1578021, name = "TIME_AXIS_PASS_578021", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_578021", trigger_count = 0 },
	{ config_id = 1578022, name = "ENTER_REGION_578022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_578022", action = "" },
	{ config_id = 1578023, name = "ANY_MONSTER_DIE_578023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_578023", trigger_count = 0, tag = "578023" },
	{ config_id = 1578024, name = "CHALLENGE_SUCCESS_578024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111840", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_578024" },
	{ config_id = 1578025, name = "ANY_MONSTER_DIE_578025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_578025", action = "action_EVENT_ANY_MONSTER_DIE_578025" },
	{ config_id = 1578026, name = "ANY_MONSTER_DIE_578026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_578026", action = "action_EVENT_ANY_MONSTER_DIE_578026" },
	{ config_id = 1578027, name = "GADGET_STATE_CHANGE_578027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_578027", action = "action_EVENT_GADGET_STATE_CHANGE_578027" }
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
		regions = { 578022 },
		triggers = { "ENTER_REGION_578022", "ANY_MONSTER_DIE_578023", "CHALLENGE_SUCCESS_578024", "GADGET_STATE_CHANGE_578027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 暖源,
		monsters = { },
		gadgets = { 578015 },
		regions = { },
		triggers = { "GADGET_CREATE_578019", "ANY_GADGET_DIE_578020", "TIME_AXIS_PASS_578021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪,
		monsters = { 578001, 578002, 578003, 578004, 578013 },
		gadgets = { 578017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_578025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二波怪,
		monsters = { 578005, 578006, 578007, 578008, 578009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_578026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三波怪,
		monsters = { 578010, 578011, 578012, 578014 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 嘲讽外壳,
		monsters = { },
		gadgets = { 578016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 宝箱,
		monsters = { },
		gadgets = { 578018 },
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
function condition_EVENT_GADGET_CREATE_578019(context, evt)
	if 578015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_578019(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008578, 6)
	
	-- 将configid为 578015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 578015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_578020(context, evt)
	if 578016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_578020(context, evt)
	-- 将configid为 578015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 578015, GadgetState.Default) then
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
function action_EVENT_TIME_AXIS_PASS_578021(context, evt)
	-- 调用提示id为 400077 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400077) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为578016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 578016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 578015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 578015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_578022(context, evt)
	if evt.param1 ~= 578022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_578023(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_578024(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008578, 7)
	
	-- 将configid为 578015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 578015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_578025(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_578025(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008578, 4)
	
	-- 调用提示id为 400072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_578026(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_578026(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008578, 5)
	
	-- 调用提示id为 400072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_578027(context, evt)
	if 578018 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_578027(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_1/MoonlitCamp"