-- 基础信息
local base_info = {
	group_id = 133008659
}

-- DEFS_MISCS
local defs = {
    GroupID = 133008659,
    AGRegionConfigID = 659022,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part2",
    AGKey = "_Activity_ToMoon_Part2_Level",
    ChallengeRegionConfigID = 659022,
    ChallengeID = 111184,
    TriggerTag = 659023,
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
	[659001] = { config_id = 659001, monster_id = 21030501, pos = { x = 901.294, y = 411.437, z = -822.946 }, rot = { x = 0.000, y = 119.660, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659002] = { config_id = 659002, monster_id = 21011301, pos = { x = 901.606, y = 411.094, z = -828.296 }, rot = { x = 0.000, y = 34.866, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9013, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659003] = { config_id = 659003, monster_id = 21011301, pos = { x = 906.313, y = 411.979, z = -819.582 }, rot = { x = 0.000, y = 203.292, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9013, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659004] = { config_id = 659004, monster_id = 21010401, pos = { x = 913.485, y = 412.029, z = -820.564 }, rot = { x = 0.000, y = 175.475, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659005] = { config_id = 659005, monster_id = 21020601, pos = { x = 893.391, y = 413.400, z = -836.347 }, rot = { x = 0.000, y = 64.825, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659006] = { config_id = 659006, monster_id = 21011401, pos = { x = 892.529, y = 413.735, z = -838.532 }, rot = { x = 0.000, y = 64.825, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659007] = { config_id = 659007, monster_id = 21011401, pos = { x = 890.902, y = 413.694, z = -836.873 }, rot = { x = 0.000, y = 64.825, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659008] = { config_id = 659008, monster_id = 21011301, pos = { x = 912.516, y = 412.153, z = -819.302 }, rot = { x = 0.000, y = 180.298, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659009] = { config_id = 659009, monster_id = 21011301, pos = { x = 915.837, y = 412.337, z = -818.280 }, rot = { x = 0.000, y = 180.298, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659010] = { config_id = 659010, monster_id = 21020601, pos = { x = 913.876, y = 410.762, z = -840.464 }, rot = { x = 0.000, y = 325.865, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659011] = { config_id = 659011, monster_id = 21020601, pos = { x = 921.655, y = 409.628, z = -836.446 }, rot = { x = 0.000, y = 292.244, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659012] = { config_id = 659012, monster_id = 21010901, pos = { x = 924.967, y = 410.127, z = -835.431 }, rot = { x = 0.000, y = 292.244, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", affix = { 1031 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659013] = { config_id = 659013, monster_id = 21010201, pos = { x = 905.954, y = 411.337, z = -830.914 }, rot = { x = 0.000, y = 345.981, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[659014] = { config_id = 659014, monster_id = 21010401, pos = { x = 909.845, y = 411.734, z = -820.931 }, rot = { x = 0.000, y = 175.970, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[659015] = { config_id = 659015, gadget_id = 70310017, pos = { x = 912.591, y = 411.215, z = -830.227 }, rot = { x = 0.000, y = 119.660, z = 0.000 }, level = 1, area_id = 10 },
	[659016] = { config_id = 659016, gadget_id = 70310107, pos = { x = 912.586, y = 411.215, z = -830.238 }, rot = { x = 0.000, y = 119.660, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[659017] = { config_id = 659017, gadget_id = 70360099, pos = { x = 905.432, y = 411.067, z = -825.358 }, rot = { x = 0.000, y = 119.660, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 10 },
	[659018] = { config_id = 659018, gadget_id = 70217008, pos = { x = 914.017, y = 411.129, z = -831.131 }, rot = { x = 0.000, y = 119.660, z = 0.000 }, level = 26, chest_drop_id = 21500017, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 10 }
}

-- 区域
regions = {
	[659022] = { config_id = 659022, shape = RegionShape.SPHERE, radius = 60, pos = { x = 912.596, y = 412.703, z = -830.307 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1659019, name = "GADGET_CREATE_659019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_659019", action = "action_EVENT_GADGET_CREATE_659019", trigger_count = 0 },
	{ config_id = 1659020, name = "ANY_GADGET_DIE_659020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_659020", action = "action_EVENT_ANY_GADGET_DIE_659020", trigger_count = 0 },
	{ config_id = 1659021, name = "TIME_AXIS_PASS_659021", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_659021", trigger_count = 0 },
	{ config_id = 1659022, name = "ENTER_REGION_659022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_659022", action = "" },
	{ config_id = 1659023, name = "ANY_MONSTER_DIE_659023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_659023", trigger_count = 0, tag = "659023" },
	{ config_id = 1659024, name = "CHALLENGE_SUCCESS_659024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111840", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_659024" },
	{ config_id = 1659025, name = "ANY_MONSTER_DIE_659025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_659025", action = "action_EVENT_ANY_MONSTER_DIE_659025" },
	{ config_id = 1659026, name = "ANY_MONSTER_DIE_659026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_659026", action = "action_EVENT_ANY_MONSTER_DIE_659026" },
	{ config_id = 1659027, name = "GADGET_STATE_CHANGE_659027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_659027", action = "action_EVENT_GADGET_STATE_CHANGE_659027" }
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
		regions = { 659022 },
		triggers = { "ENTER_REGION_659022", "ANY_MONSTER_DIE_659023", "CHALLENGE_SUCCESS_659024", "GADGET_STATE_CHANGE_659027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 暖源,
		monsters = { },
		gadgets = { 659015 },
		regions = { },
		triggers = { "GADGET_CREATE_659019", "ANY_GADGET_DIE_659020", "TIME_AXIS_PASS_659021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪,
		monsters = { 659001, 659002, 659003, 659013 },
		gadgets = { 659017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_659025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二波怪,
		monsters = { 659005, 659006, 659007, 659008, 659009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_659026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三波怪,
		monsters = { 659004, 659010, 659011, 659014 },
		gadgets = { },
		regions = { },
		triggers = { },
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
		-- description = 宝箱,
		monsters = { },
		gadgets = { 659018 },
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
function condition_EVENT_GADGET_CREATE_659019(context, evt)
	if 659015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_659019(context, evt)
	-- 创建id为659016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 659016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 659015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 659015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_659020(context, evt)
	if 659016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_659020(context, evt)
	-- 将configid为 659015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 659015, GadgetState.Default) then
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
function action_EVENT_TIME_AXIS_PASS_659021(context, evt)
	-- 调用提示id为 400077 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400077) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为659016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 659016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 659015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 659015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_659022(context, evt)
	if evt.param1 ~= 659022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_659023(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_659024(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008659, 7)
	
	-- 将configid为 659015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 659015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_659025(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_659025(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008659, 4)
	
	-- 调用提示id为 400072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_659026(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_659026(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008659, 5)
	
	-- 调用提示id为 400072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_659027(context, evt)
	if 659018 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_659027(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_1/MoonlitCamp"