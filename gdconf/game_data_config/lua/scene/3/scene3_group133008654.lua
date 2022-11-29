-- 基础信息
local base_info = {
	group_id = 133008654
}

-- DEFS_MISCS
local defs = {
    GroupID = 133008654,
    AGRegionConfigID = 654022,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part2",
    AGKey = "_Activity_ToMoon_Part2_Level",
    ChallengeRegionConfigID = 654022,
    ChallengeID = 111184,
    TriggerTag = 654023,
    TargetTriggerTime = 4,
    AreaID = 3, --  1璃月 2蒙德 3雪山
    OverKey = "OverKey",
    WatchKey = "save",
}

local Phase ={
        [1] = {2,3},
        [2] = {2,3,4},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[654001] = { config_id = 654001, monster_id = 23010301, pos = { x = 956.970, y = 342.179, z = -592.327 }, rot = { x = 0.000, y = 31.470, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9014, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[654002] = { config_id = 654002, monster_id = 23010501, pos = { x = 960.291, y = 342.626, z = -587.463 }, rot = { x = 0.000, y = 201.374, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9014, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[654005] = { config_id = 654005, monster_id = 23010101, pos = { x = 952.737, y = 341.841, z = -605.412 }, rot = { x = 0.000, y = 355.737, z = 0.000 }, level = 1, drop_tag = "先遣队", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[654006] = { config_id = 654006, monster_id = 23010201, pos = { x = 957.201, y = 342.057, z = -606.715 }, rot = { x = 0.000, y = 355.737, z = 0.000 }, level = 1, drop_tag = "先遣队", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[654015] = { config_id = 654015, gadget_id = 70310017, pos = { x = 952.684, y = 341.839, z = -599.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	[654016] = { config_id = 654016, gadget_id = 70310107, pos = { x = 952.685, y = 341.840, z = -599.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[654018] = { config_id = 654018, gadget_id = 70217008, pos = { x = 952.771, y = 341.896, z = -598.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 21500016, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 10 }
}

-- 区域
regions = {
	[654022] = { config_id = 654022, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 952.750, y = 341.843, z = -599.653 }, height = 100.000, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1654019, name = "GADGET_CREATE_654019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_654019", action = "action_EVENT_GADGET_CREATE_654019", trigger_count = 0 },
	{ config_id = 1654020, name = "ANY_GADGET_DIE_654020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_654020", action = "action_EVENT_ANY_GADGET_DIE_654020", trigger_count = 0 },
	{ config_id = 1654021, name = "TIME_AXIS_PASS_654021", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_654021", trigger_count = 0 },
	{ config_id = 1654022, name = "ENTER_REGION_654022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_654022", action = "" },
	{ config_id = 1654023, name = "ANY_MONSTER_DIE_654023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_654023", trigger_count = 0, tag = "654023" },
	{ config_id = 1654024, name = "CHALLENGE_SUCCESS_654024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111840", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_654024" },
	{ config_id = 1654025, name = "ANY_MONSTER_DIE_654025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_654025", action = "action_EVENT_ANY_MONSTER_DIE_654025" },
	{ config_id = 1654027, name = "GADGET_STATE_CHANGE_654027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_654027", action = "action_EVENT_GADGET_STATE_CHANGE_654027" }
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
		regions = { 654022 },
		triggers = { "ENTER_REGION_654022", "ANY_MONSTER_DIE_654023", "CHALLENGE_SUCCESS_654024", "GADGET_STATE_CHANGE_654027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 暖源,
		monsters = { },
		gadgets = { 654015 },
		regions = { },
		triggers = { "GADGET_CREATE_654019", "ANY_GADGET_DIE_654020", "TIME_AXIS_PASS_654021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪,
		monsters = { 654001, 654002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_654025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二波怪,
		monsters = { 654005, 654006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三波怪,
		monsters = { },
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
		gadgets = { 654018 },
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
function condition_EVENT_GADGET_CREATE_654019(context, evt)
	if 654015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_654019(context, evt)
	-- 创建id为654016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 654016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 654015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 654015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_654020(context, evt)
	if 654016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_654020(context, evt)
	-- 将configid为 654015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 654015, GadgetState.Default) then
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
function action_EVENT_TIME_AXIS_PASS_654021(context, evt)
	-- 调用提示id为 400077 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400077) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为654016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 654016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 654015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 654015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_654022(context, evt)
	if evt.param1 ~= 654022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_654023(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_654024(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008654, 7)
	
	-- 将configid为 654015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 654015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_654025(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_654025(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008654, 4)
	
	-- 调用提示id为 400072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_654027(context, evt)
	if 654018 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_654027(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_1/MoonlitCamp"