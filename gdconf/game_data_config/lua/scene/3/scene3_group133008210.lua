-- 基础信息
local base_info = {
	group_id = 133008210
}

-- DEFS_MISCS
local defs = {
    GroupID = 133008210,
    AGRegionConfigID = 210019,
    AGName = "ActivityAbility_ToMoon_FoodChallenge_Part2",
    AGKey = "_Activity_ToMoon_Part2_Level",
    ChallengeRegionConfigID = 210019,
    ChallengeID = 111184,
    TriggerTag = 210020,
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
	[210007] = { config_id = 210007, monster_id = 21030501, pos = { x = 1285.181, y = 271.907, z = -1210.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210008] = { config_id = 210008, monster_id = 21011301, pos = { x = 1289.680, y = 271.455, z = -1207.280 }, rot = { x = 0.000, y = 275.205, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9013, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210009] = { config_id = 210009, monster_id = 21011301, pos = { x = 1279.765, y = 272.656, z = -1207.495 }, rot = { x = 0.000, y = 83.631, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9013, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210010] = { config_id = 210010, monster_id = 21011301, pos = { x = 1285.645, y = 271.159, z = -1200.327 }, rot = { x = 0.000, y = 183.637, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9013, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210011] = { config_id = 210011, monster_id = 21011401, pos = { x = 1274.689, y = 271.397, z = -1196.711 }, rot = { x = 0.000, y = 158.256, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210012] = { config_id = 210012, monster_id = 21011401, pos = { x = 1277.013, y = 271.405, z = -1196.385 }, rot = { x = 0.000, y = 158.256, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210013] = { config_id = 210013, monster_id = 21011401, pos = { x = 1276.374, y = 271.311, z = -1198.617 }, rot = { x = 0.000, y = 158.256, z = 0.000 }, level = 1, drop_tag = "丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210014] = { config_id = 210014, monster_id = 21010901, pos = { x = 1277.364, y = 272.768, z = -1217.035 }, rot = { x = 0.000, y = 69.212, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210015] = { config_id = 210015, monster_id = 21010901, pos = { x = 1276.743, y = 272.830, z = -1219.681 }, rot = { x = 0.000, y = 69.212, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210016] = { config_id = 210016, monster_id = 21020601, pos = { x = 1299.601, y = 273.017, z = -1218.747 }, rot = { x = 0.000, y = 294.082, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", affix = { 1031, 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210017] = { config_id = 210017, monster_id = 21010901, pos = { x = 1286.070, y = 270.964, z = -1202.974 }, rot = { x = 0.000, y = 172.584, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210018] = { config_id = 210018, monster_id = 21010901, pos = { x = 1283.749, y = 271.113, z = -1202.202 }, rot = { x = 0.000, y = 172.584, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", affix = { 1007 }, isOneoff = true, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210027] = { config_id = 210027, monster_id = 21010201, pos = { x = 1289.804, y = 270.524, z = -1202.212 }, rot = { x = 0.000, y = 226.320, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 },
	[210028] = { config_id = 210028, monster_id = 21010201, pos = { x = 1280.874, y = 271.307, z = -1202.329 }, rot = { x = 0.000, y = 139.603, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 1031, 1007 }, isOneoff = true, pose_id = 9012, climate_area_id = 1, area_id = 10, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[210001] = { config_id = 210001, gadget_id = 70310017, pos = { x = 1284.399, y = 272.404, z = -1216.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	[210002] = { config_id = 210002, gadget_id = 70310107, pos = { x = 1284.402, y = 272.399, z = -1216.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	[210006] = { config_id = 210006, gadget_id = 70360099, pos = { x = 1285.405, y = 271.183, z = -1205.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 10 },
	[210024] = { config_id = 210024, gadget_id = 70217008, pos = { x = 1284.484, y = 272.287, z = -1214.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 21500013, drop_count = 1, isOneoff = true, persistent = true, autopick = true, guest_ban_drop = 63, area_id = 10 }
}

-- 区域
regions = {
	[210019] = { config_id = 210019, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 1284.466, y = 272.406, z = -1216.511 }, height = 100.000, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1210003, name = "GADGET_CREATE_210003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_210003", action = "action_EVENT_GADGET_CREATE_210003", trigger_count = 0 },
	{ config_id = 1210004, name = "ANY_GADGET_DIE_210004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_210004", action = "action_EVENT_ANY_GADGET_DIE_210004", trigger_count = 0 },
	{ config_id = 1210005, name = "TIME_AXIS_PASS_210005", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_210005", trigger_count = 0 },
	{ config_id = 1210019, name = "ENTER_REGION_210019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_210019", action = "" },
	{ config_id = 1210020, name = "ANY_MONSTER_DIE_210020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_210020", trigger_count = 0, tag = "210020" },
	{ config_id = 1210021, name = "CHALLENGE_SUCCESS_210021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111840", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_210021" },
	{ config_id = 1210022, name = "ANY_MONSTER_DIE_210022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_210022", action = "action_EVENT_ANY_MONSTER_DIE_210022" },
	{ config_id = 1210023, name = "ANY_MONSTER_DIE_210023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_210023", action = "action_EVENT_ANY_MONSTER_DIE_210023" },
	{ config_id = 1210025, name = "GADGET_STATE_CHANGE_210025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_210025", action = "action_EVENT_GADGET_STATE_CHANGE_210025" }
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
		regions = { 210019 },
		triggers = { "ENTER_REGION_210019", "ANY_MONSTER_DIE_210020", "CHALLENGE_SUCCESS_210021", "GADGET_STATE_CHANGE_210025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 暖源,
		monsters = { },
		gadgets = { 210001 },
		regions = { },
		triggers = { "GADGET_CREATE_210003", "ANY_GADGET_DIE_210004", "TIME_AXIS_PASS_210005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪,
		monsters = { 210007, 210008, 210009, 210010, 210027, 210028 },
		gadgets = { 210006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_210022" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二波怪,
		monsters = { 210011, 210012, 210013, 210014, 210015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_210023" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三波怪,
		monsters = { 210016, 210017, 210018 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 嘲讽外壳,
		monsters = { },
		gadgets = { 210002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 宝箱,
		monsters = { },
		gadgets = { 210024 },
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
function condition_EVENT_GADGET_CREATE_210003(context, evt)
	if 210001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_210003(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008210, 6)
	
	-- 将configid为 210001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 210001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_210004(context, evt)
	if 210002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_210004(context, evt)
	-- 将configid为 210001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 210001, GadgetState.Default) then
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
function action_EVENT_TIME_AXIS_PASS_210005(context, evt)
	-- 调用提示id为 400077 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400077) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为210002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 210002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 210001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 210001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_210019(context, evt)
	if evt.param1 ~= 210019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_210020(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_210021(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008210, 7)
	
	-- 将configid为 210001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 210001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_210022(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_210022(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008210, 4)
	
	-- 调用提示id为 400072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_210023(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_210023(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stage", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008210, 5)
	
	-- 调用提示id为 400072 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400072) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_210025(context, evt)
	if 210024 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_210025(context, evt)
	-- 将本组内变量名为 "OverKey" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OverKey", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_1/MoonlitCamp"