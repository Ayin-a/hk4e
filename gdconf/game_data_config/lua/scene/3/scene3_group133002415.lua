-- 基础信息
local base_info = {
	group_id = 133002415
}

-- Trigger变量
local defs = {
	randomPositions = {415042,415043,415044},
	groupId = 133002415,
	specialice1 = 415012,
	specialice2 = 415013,
	specialice3 = 415014,
	bossId = 415001,
	iceSquareId = 415016,
	targetId = 415021,
	iceShieldId = 415045,
	monsterOne = 415004,
	monsterTwo = 415005,
	iceStormId = 415015,
	monsterThree = 415002,
	monsterFour = 415003,
	bloodOrePositions = {{415046,415047,415048,415049,415050},{415053,415054,415055,415056,415057},{415060,415061,415062,415063,415064,415065}},
	monsterTideOne = {}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 415001, monster_id = 26020102, pos = { x = 1080.630, y = 285.861, z = -439.310 }, rot = { x = 0.000, y = 18.673, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 4065, 1021 }, pose_id = 3, title_id = 10008, special_name_id = 10024, climate_area_id = 1, area_id = 10 },
	{ config_id = 415002, monster_id = 20010802, pos = { x = 1094.495, y = 285.927, z = -431.642 }, rot = { x = 0.000, y = 98.727, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 415003, monster_id = 20010802, pos = { x = 1092.471, y = 285.924, z = -446.188 }, rot = { x = 0.000, y = 350.429, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 415004, monster_id = 20010802, pos = { x = 1083.731, y = 285.924, z = -419.136 }, rot = { x = 0.000, y = 189.364, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 415005, monster_id = 20010802, pos = { x = 1102.338, y = 285.924, z = -439.498 }, rot = { x = 0.000, y = 288.639, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 415007, gadget_id = 70360106, pos = { x = 1080.630, y = 285.861, z = -439.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 10 },
	{ config_id = 415012, gadget_id = 70950017, pos = { x = 1076.287, y = 285.873, z = -452.220 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 32, area_id = 10 },
	{ config_id = 415013, gadget_id = 70950017, pos = { x = 1094.365, y = 285.867, z = -439.415 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 32, area_id = 10 },
	{ config_id = 415014, gadget_id = 70950017, pos = { x = 1074.391, y = 285.881, z = -427.158 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 32, area_id = 10 },
	{ config_id = 415015, gadget_id = 70360105, pos = { x = 1080.630, y = 285.861, z = -439.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 10 },
	{ config_id = 415016, gadget_id = 70360108, pos = { x = 1088.960, y = 286.281, z = -440.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 10 },
	{ config_id = 415017, gadget_id = 70310017, pos = { x = 1069.869, y = 285.861, z = -418.213 }, rot = { x = 0.000, y = 340.558, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 415018, gadget_id = 70310017, pos = { x = 1095.955, y = 285.861, z = -456.778 }, rot = { x = 0.000, y = 340.558, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 415019, gadget_id = 70310017, pos = { x = 1056.739, y = 285.861, z = -442.230 }, rot = { x = 0.000, y = 320.803, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 415020, gadget_id = 70310017, pos = { x = 1094.445, y = 285.861, z = -420.525 }, rot = { x = 0.000, y = 328.709, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 415021, gadget_id = 70900201, pos = { x = 1088.960, y = 286.281, z = -440.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 10 },
	{ config_id = 415022, gadget_id = 70310017, pos = { x = 1069.869, y = 285.861, z = -418.213 }, rot = { x = 0.000, y = 340.558, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 415024, gadget_id = 70310017, pos = { x = 1095.939, y = 285.861, z = -456.766 }, rot = { x = 0.000, y = 340.558, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 415037, gadget_id = 70710220, pos = { x = 1080.630, y = 285.861, z = -439.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 10 },
	{ config_id = 415038, gadget_id = 70310017, pos = { x = 1069.869, y = 285.861, z = -418.213 }, rot = { x = 0.000, y = 340.558, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 415039, gadget_id = 70310017, pos = { x = 1056.739, y = 285.861, z = -442.230 }, rot = { x = 0.000, y = 320.803, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 415040, gadget_id = 70310017, pos = { x = 1094.445, y = 285.861, z = -420.525 }, rot = { x = 0.000, y = 328.709, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 415041, gadget_id = 70270004, pos = { x = 1080.630, y = 285.861, z = -439.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 冰立方创生位置标记1
	{ config_id = 415042, gadget_id = 70360001, pos = { x = 1093.829, y = 285.861, z = -454.008 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 冰立方创生位置标记3
	{ config_id = 415043, gadget_id = 70360001, pos = { x = 1060.794, y = 285.861, z = -441.781 }, rot = { x = 0.000, y = 99.173, z = 0.000 }, level = 35, area_id = 10 },
	-- 冰立方创生位置标记2
	{ config_id = 415044, gadget_id = 70360001, pos = { x = 1090.602, y = 285.861, z = -422.169 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 415045, gadget_id = 70360109, pos = { x = 1075.921, y = 285.861, z = -442.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 415046, gadget_id = 70360127, pos = { x = 1089.061, y = 285.861, z = -454.060 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 415047, gadget_id = 70360127, pos = { x = 1092.064, y = 285.861, z = -450.745 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 415048, gadget_id = 70360127, pos = { x = 1087.613, y = 285.861, z = -451.548 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 415049, gadget_id = 70360127, pos = { x = 1090.279, y = 285.861, z = -446.334 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 415050, gadget_id = 70360127, pos = { x = 1093.944, y = 285.861, z = -446.638 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 415051, gadget_id = 70360127, pos = { x = 1095.977, y = 285.861, z = -448.859 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 415052, gadget_id = 70360127, pos = { x = 1085.146, y = 285.861, z = -455.343 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 415053, gadget_id = 70360127, pos = { x = 1092.620, y = 285.861, z = -425.792 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 415054, gadget_id = 70360127, pos = { x = 1087.821, y = 285.861, z = -425.761 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 415055, gadget_id = 70360127, pos = { x = 1087.154, y = 285.861, z = -422.656 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 415056, gadget_id = 70360127, pos = { x = 1092.244, y = 285.861, z = -428.842 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 415057, gadget_id = 70360127, pos = { x = 1096.338, y = 285.861, z = -425.545 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 415058, gadget_id = 70360127, pos = { x = 1084.306, y = 285.861, z = -423.478 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 415059, gadget_id = 70360127, pos = { x = 1095.889, y = 285.861, z = -429.868 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 415060, gadget_id = 70360127, pos = { x = 1064.249, y = 285.861, z = -445.712 }, rot = { x = 0.000, y = 99.173, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 415061, gadget_id = 70360127, pos = { x = 1065.761, y = 285.861, z = -438.573 }, rot = { x = 0.000, y = 99.173, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 415062, gadget_id = 70360127, pos = { x = 1066.728, y = 285.861, z = -447.191 }, rot = { x = 0.000, y = 99.173, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 415063, gadget_id = 70360127, pos = { x = 1060.417, y = 285.861, z = -436.172 }, rot = { x = 0.000, y = 99.173, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 415064, gadget_id = 70360127, pos = { x = 1062.918, y = 285.861, z = -434.656 }, rot = { x = 0.000, y = 99.173, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 415065, gadget_id = 70360127, pos = { x = 1068.087, y = 285.861, z = -441.547 }, rot = { x = 0.000, y = 99.173, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 415066, gadget_id = 70360127, pos = { x = 1064.852, y = 285.861, z = -441.490 }, rot = { x = 0.000, y = 99.173, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 415067, gadget_id = 70310017, pos = { x = 1095.939, y = 285.861, z = -456.766 }, rot = { x = 0.000, y = 340.558, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 415068, gadget_id = 70310017, pos = { x = 1056.739, y = 285.861, z = -442.230 }, rot = { x = 0.000, y = 320.803, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 415069, gadget_id = 70310017, pos = { x = 1094.445, y = 285.861, z = -420.525 }, rot = { x = 0.000, y = 328.709, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 415008, shape = RegionShape.SPHERE, radius = 35, pos = { x = 1080.630, y = 285.861, z = -439.310 }, area_id = 10 },
	{ config_id = 415023, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1080.317, y = 285.861, z = -439.423 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1415006, name = "ANY_MONSTER_DIE_415006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_415006", action = "action_EVENT_ANY_MONSTER_DIE_415006", tag = "800" },
	{ config_id = 1415008, name = "LEAVE_REGION_415008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_415008", action = "action_EVENT_LEAVE_REGION_415008", tag = "800" },
	{ config_id = 1415009, name = "TIMER_EVENT_415009", event = EventType.EVENT_TIMER_EVENT, source = "41212777", condition = "", action = "action_EVENT_TIMER_EVENT_415009" },
	{ config_id = 1415010, name = "ANY_MONSTER_LIVE_415010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_415010", action = "action_EVENT_ANY_MONSTER_LIVE_415010", tag = "800" },
	{ config_id = 1415023, name = "ENTER_REGION_415023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_415023", action = "action_EVENT_ENTER_REGION_415023" },
	{ config_id = 1415025, name = "MONSTER_TIDE_DIE_415025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_415025", action = "action_EVENT_MONSTER_TIDE_DIE_415025" },
	{ config_id = 1415030, name = "CHALLENGE_FAIL_415030", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_415030", trigger_count = 0 },
	{ config_id = 1415035, name = "CHALLENGE_SUCCESS_415035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_415035" },
	{ config_id = 1415070, name = "ANY_MONSTER_LIVE_415070", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_415070", action = "action_EVENT_ANY_MONSTER_LIVE_415070" },
	{ config_id = 1415071, name = "TIMER_EVENT_415071", event = EventType.EVENT_TIMER_EVENT, source = "41212666", condition = "", action = "action_EVENT_TIMER_EVENT_415071" }
}

-- 变量
variables = {
	{ config_id = 1, name = "killedIcePillar", value = 0, no_refresh = false },
	{ config_id = 2, name = "MonsterTideCheck", value = 0, no_refresh = false },
	{ config_id = 3, name = "positionIdx", value = -1, no_refresh = true },
	{ config_id = 4, name = "iceCubeAlive", value = 0, no_refresh = true },
	{ config_id = 5, name = "notCreateIceShieldActivated", value = 0, no_refresh = true },
	{ config_id = 6, name = "415012_Hit_Uid", value = 0, no_refresh = true },
	{ config_id = 7, name = "415013_Hit_Uid", value = 0, no_refresh = true },
	{ config_id = 8, name = "415014_Hit_Uid", value = 0, no_refresh = true },
	{ config_id = 9, name = "phasetwocheckvalue", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 5,
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
		monsters = { 415001 },
		gadgets = { 415038, 415042, 415043, 415044, 415067, 415068, 415069 },
		regions = { 415008, 415023 },
		triggers = { "ANY_MONSTER_DIE_415006", "LEAVE_REGION_415008", "TIMER_EVENT_415009", "ENTER_REGION_415023", "CHALLENGE_FAIL_415030", "CHALLENGE_SUCCESS_415035", "ANY_MONSTER_LIVE_415070", "TIMER_EVENT_415071" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 415002, 415003, 415004, 415005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 415015 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_415010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 415017, 415018, 415019, 415020, 415037 },
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
		-- description = ,
		monsters = { },
		gadgets = { 415022, 415024, 415039, 415040 },
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
		-- description = 废弃Gadgets,
		monsters = { },
		gadgets = { 415007, 415012, 415013, 415014, 415041 },
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_415025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_415006(context, evt)
	if 415001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_415006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121313") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_415008(context, evt)
	if evt.param1 ~= 415008 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_415008(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_415009(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1080,y=285,z=-439}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400010, pos, 50) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_415010(context, evt)
	if 415001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_415010(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_415023(context, evt)
	if evt.param1 ~= 415023 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_415023(context, evt)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002415, 4)
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121312") then
	  return -1
	end
	
	
	-- 创建编号为666（该挑战的识别id),挑战内容为213的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 220, 600, 1, 800, 1) then
		return -1
	end
	
	-- 创建编号为415（该怪物潮的识别id)的怪物潮，创建怪物总数为999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 415, 133002415, {415002,415003,415004,415005}, 999, 1, 1) then
		return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_415025(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_415025(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 133002415, {24008,24009}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_415030(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121399") then
	  return -1
	end
	
	-- 将configid为 415015 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 415015, GadgetState.GearStop) then
			return -1
		end 
	
	-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 415015 }) then
		    return -1
		end
	
	--销毁编号为415（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, 133002415, 415) then
		return -1
	end
		
	
	-- 杀死指定group内的gadget和monster,移除其它东西
	ScriptLib.KillExtraGroupSuite(context, 133002415, 3)
	
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_415035(context, evt)
	-- 将configid为 415015 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 415015, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	--销毁编号为415（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, 133002415, 415) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_tide")
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002415, monsters = {415002,415003,415004,415005,415001}, gadgets = {415015} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002415, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_415070(context, evt)
	if 415001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_415070(context, evt)
	-- 延迟1秒后,向groupId为：133002415的对象,请求一次调用,并将string参数："41212666" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133002415, "41212666", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "MonsterTideCheck" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "MonsterTideCheck", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：133002415的对象,请求一次调用,并将string参数："41212777" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133002415, "41212777", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_415071(context, evt)
	--怪物转阶段
	ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {415001}, "_SERVER_REGISVINE_ICE_ACTIVITY_FLAG_PHASE02", 2)
	
	--怪物状态Check
	ScriptLib.CreateGroupTimerEvent(context, defs.groupId, "phasetwocheck", 1)
	
	
	--冰立方生成条件重置
	ScriptLib.SetGroupVariableValue(context, "iceCubeAlive", 0)
	
	return 0
end

require "IceFlowerBossBattle"