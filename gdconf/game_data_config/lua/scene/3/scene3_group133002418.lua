-- 基础信息
local base_info = {
	group_id = 133002418
}

-- Trigger变量
local defs = {
	randomPositions = {418014,418021,418022},
	groupId = 133002418,
	specialice1 = 418009,
	specialice2 = 418010,
	specialice3 = 418011,
	bossId = 418001,
	iceSquareId = 418015,
	targetId = 418019,
	iceShieldId = 418013,
	monsterOne = 418004,
	monsterTwo = 418005,
	iceStormId = 418012,
	inteeGadget = 418006,
	monsterThree = 418002,
	monsterFour = 418003,
	rewardGadget = 418008,
	bloodOrePositions = {{418040,418041,418042,418043,418044},{418047,418048,418049,418050,418051},{418054,418055,418056,418057,418058}},
	monsterTideOne = {418023,418024,418025,418028,418032,418034},
	monsterTideTwo = {418002,418005,418003,418065,418004,418066},
	region = 418067
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 418001, monster_id = 26020102, pos = { x = 1080.630, y = 285.861, z = -439.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_id = 1000100, pose_id = 2, title_id = 10008, special_name_id = 10024, climate_area_id = 1, area_id = 10 },
	{ config_id = 418002, monster_id = 20010902, pos = { x = 1074.807, y = 285.861, z = -455.620 }, rot = { x = 0.000, y = 314.980, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 418003, monster_id = 20010902, pos = { x = 1098.649, y = 285.861, z = -438.908 }, rot = { x = 0.000, y = 288.639, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 418004, monster_id = 20010902, pos = { x = 1065.256, y = 285.861, z = -441.791 }, rot = { x = 0.000, y = 84.905, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 418005, monster_id = 26010102, pos = { x = 1072.732, y = 285.861, z = -423.661 }, rot = { x = 0.000, y = 350.429, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 418023, monster_id = 20010802, pos = { x = 1074.807, y = 285.861, z = -455.620 }, rot = { x = 0.000, y = 314.980, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 418024, monster_id = 20010802, pos = { x = 1072.732, y = 285.861, z = -423.661 }, rot = { x = 0.000, y = 350.429, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 418025, monster_id = 20010802, pos = { x = 1098.649, y = 285.861, z = -438.908 }, rot = { x = 0.000, y = 288.639, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 418028, monster_id = 20010802, pos = { x = 1089.769, y = 285.861, z = -453.157 }, rot = { x = 0.000, y = 332.897, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 418032, monster_id = 20010802, pos = { x = 1065.256, y = 285.861, z = -441.791 }, rot = { x = 0.000, y = 84.905, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 418034, monster_id = 20010802, pos = { x = 1089.076, y = 285.861, z = -424.863 }, rot = { x = 0.000, y = 207.336, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 418065, monster_id = 26010102, pos = { x = 1089.769, y = 285.861, z = -453.157 }, rot = { x = 0.000, y = 332.897, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 418066, monster_id = 26010102, pos = { x = 1089.076, y = 285.861, z = -424.863 }, rot = { x = 0.000, y = 207.336, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021, 1030, 8024 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 418006, gadget_id = 70360125, pos = { x = 1096.319, y = 285.861, z = -439.310 }, rot = { x = 0.000, y = 90.822, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 418007, gadget_id = 70360106, pos = { x = 1080.630, y = 285.861, z = -439.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 418008, gadget_id = 70210114, pos = { x = 1120.884, y = 286.413, z = -430.138 }, rot = { x = 0.000, y = 241.540, z = 0.000 }, level = 35, drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 418009, gadget_id = 70360114, pos = { x = 1076.887, y = 285.861, z = -448.486 }, rot = { x = 0.000, y = 189.193, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 418010, gadget_id = 70360114, pos = { x = 1090.550, y = 285.861, z = -439.305 }, rot = { x = 0.000, y = 76.795, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 418011, gadget_id = 70360114, pos = { x = 1076.122, y = 285.861, z = -430.335 }, rot = { x = 0.000, y = 325.015, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 418012, gadget_id = 70360105, pos = { x = 1080.630, y = 285.861, z = -439.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 418013, gadget_id = 70360109, pos = { x = 1075.921, y = 285.861, z = -442.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 10 },
	-- 冰立方创生位置标记1
	{ config_id = 418014, gadget_id = 70360001, pos = { x = 1093.829, y = 285.861, z = -454.008 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 418015, gadget_id = 70360108, pos = { x = 1088.960, y = 285.861, z = -440.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 418016, gadget_id = 70310017, pos = { x = 1092.485, y = 285.861, z = -419.031 }, rot = { x = 0.000, y = 295.001, z = 0.000 }, level = 35, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 418017, gadget_id = 70310017, pos = { x = 1095.855, y = 285.861, z = -456.749 }, rot = { x = 0.000, y = 316.771, z = 0.000 }, level = 35, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 418018, gadget_id = 70310017, pos = { x = 1056.844, y = 285.861, z = -442.171 }, rot = { x = 0.000, y = 320.803, z = 0.000 }, level = 35, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 418019, gadget_id = 70350085, pos = { x = 1088.960, y = 285.861, z = -440.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 418020, gadget_id = 70270004, pos = { x = 1080.630, y = 285.861, z = -439.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, area_id = 10 },
	-- 冰立方创生位置标记2
	{ config_id = 418021, gadget_id = 70360001, pos = { x = 1090.602, y = 285.861, z = -422.169 }, rot = { x = 0.000, y = 201.193, z = 0.000 }, level = 35, area_id = 10 },
	-- 冰立方创生位置标记3
	{ config_id = 418022, gadget_id = 70360001, pos = { x = 1060.794, y = 285.861, z = -441.781 }, rot = { x = 0.000, y = 99.173, z = 0.000 }, level = 35, area_id = 10 },
	-- 传送点标记特效
	{ config_id = 418026, gadget_id = 70300203, pos = { x = 1113.028, y = 286.787, z = -436.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 418040, gadget_id = 70360127, pos = { x = 1079.893, y = 285.861, z = -443.627 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 418041, gadget_id = 70360127, pos = { x = 1082.788, y = 285.861, z = -443.353 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 418042, gadget_id = 70360127, pos = { x = 1076.613, y = 285.861, z = -440.732 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 418043, gadget_id = 70360127, pos = { x = 1076.834, y = 285.861, z = -436.629 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 418044, gadget_id = 70360127, pos = { x = 1084.332, y = 285.861, z = -439.972 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 418045, gadget_id = 70360127, pos = { x = 1082.908, y = 285.861, z = -436.262 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记A
	{ config_id = 418046, gadget_id = 70360127, pos = { x = 1079.516, y = 285.861, z = -435.219 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 418047, gadget_id = 70360127, pos = { x = 1079.893, y = 285.861, z = -443.627 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 418048, gadget_id = 70360127, pos = { x = 1082.788, y = 285.861, z = -443.353 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 418049, gadget_id = 70360127, pos = { x = 1076.613, y = 285.861, z = -440.732 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 418050, gadget_id = 70360127, pos = { x = 1076.834, y = 285.861, z = -436.629 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 418051, gadget_id = 70360127, pos = { x = 1084.332, y = 285.861, z = -439.972 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 418052, gadget_id = 70360127, pos = { x = 1082.908, y = 285.861, z = -436.262 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记B
	{ config_id = 418053, gadget_id = 70360127, pos = { x = 1079.516, y = 285.861, z = -435.219 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 418054, gadget_id = 70360127, pos = { x = 1079.893, y = 285.861, z = -443.627 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 418055, gadget_id = 70360127, pos = { x = 1082.788, y = 285.861, z = -443.353 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 418056, gadget_id = 70360127, pos = { x = 1076.613, y = 285.861, z = -440.732 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 418057, gadget_id = 70360127, pos = { x = 1076.834, y = 285.861, z = -436.629 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 418058, gadget_id = 70360127, pos = { x = 1084.332, y = 285.861, z = -439.972 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 418059, gadget_id = 70360127, pos = { x = 1082.908, y = 285.861, z = -436.262 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 龙血结晶创生器位置标记C
	{ config_id = 418060, gadget_id = 70360127, pos = { x = 1079.516, y = 285.861, z = -435.219 }, rot = { x = 0.000, y = 317.149, z = 0.000 }, level = 35, area_id = 10 },
	-- 传送点
	{ config_id = 418062, gadget_id = 70360001, pos = { x = 1113.028, y = 286.787, z = -436.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 418036, shape = RegionShape.SPHERE, radius = 35, pos = { x = 1080.630, y = 285.861, z = -439.310 }, area_id = 10 },
	{ config_id = 418067, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1080.630, y = 285.861, z = -439.310 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1418029, name = "ANY_GADGET_DIE_418029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_418029", action = "action_EVENT_ANY_GADGET_DIE_418029" },
	{ config_id = 1418030, name = "ANY_GADGET_DIE_418030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_418030", action = "action_EVENT_ANY_GADGET_DIE_418030" },
	{ config_id = 1418031, name = "ANY_GADGET_DIE_418031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_418031", action = "action_EVENT_ANY_GADGET_DIE_418031" },
	{ config_id = 1418033, name = "VARIABLE_CHANGE_418033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_418033", action = "action_EVENT_VARIABLE_CHANGE_418033" },
	{ config_id = 1418035, name = "GADGET_CREATE_418035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_418035", action = "action_EVENT_GADGET_CREATE_418035", trigger_count = 0 },
	{ config_id = 1418063, name = "GADGET_CREATE_418063", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_418063", action = "action_EVENT_GADGET_CREATE_418063" },
	{ config_id = 1418064, name = "SELECT_OPTION_418064", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_418064", action = "action_EVENT_SELECT_OPTION_418064", trigger_count = 0, forbid_guest = false }
}

-- 点位
points = {
	-- 复活点
	{ config_id = 418037, pos = { x = 1120.652, y = 287.846, z = -425.942 }, rot = { x = 0.000, y = 195.459, z = 0.000 }, area_id = 10 },
	-- 出生点
	{ config_id = 418038, pos = { x = 1097.705, y = 285.861, z = -438.728 }, rot = { x = 0.000, y = 269.461, z = 0.000 }, area_id = 10 }
}

-- 变量
variables = {
	{ config_id = 1, name = "killedIcePillar", value = 0, no_refresh = false },
	{ config_id = 2, name = "MonsterTideCheck", value = 0, no_refresh = true },
	{ config_id = 3, name = "positionIdx", value = -1, no_refresh = true },
	{ config_id = 4, name = "iceCubeAlive", value = 0, no_refresh = true },
	{ config_id = 5, name = "notCreateIceShieldActivated", value = 0, no_refresh = true },
	{ config_id = 6, name = "418009_Hit_Uid", value = 0, no_refresh = true },
	{ config_id = 7, name = "418010_Hit_Uid", value = 0, no_refresh = true },
	{ config_id = 8, name = "418011_Hit_Uid", value = 0, no_refresh = true },
	{ config_id = 9, name = "isStarted", value = 0, no_refresh = false },
	{ config_id = 10, name = "phaseonecheckvalue", value = 0, no_refresh = false },
	{ config_id = 11, name = "phasetwocheckvalue", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1418027, name = "VARIABLE_CHANGE_418027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_418027", action = "action_EVENT_VARIABLE_CHANGE_418027" }
	}
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
		monsters = { 418001 },
		gadgets = { 418006, 418007, 418009, 418010, 418011, 418014, 418016, 418017, 418018, 418021, 418022 },
		regions = { 418036 },
		triggers = { "GADGET_CREATE_418035", "GADGET_CREATE_418063", "SELECT_OPTION_418064" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 418020, 418026, 418062 },
		regions = { 418067 },
		triggers = { "ANY_GADGET_DIE_418029", "ANY_GADGET_DIE_418030", "ANY_GADGET_DIE_418031", "VARIABLE_CHANGE_418033", "GADGET_CREATE_418063", "SELECT_OPTION_418064" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 418002, 418003, 418004, 418005, 418023, 418024, 418025, 418028, 418032, 418034, 418065, 418066 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 418012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
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
		-- description = 废弃-原Suite1,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_GADGET_DIE_418029(context, evt)
	if 418009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_418029(context, evt)
	-- 针对当前group内变量名为 "killedIcePillar" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killedIcePillar", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_418030(context, evt)
	if 418010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_418030(context, evt)
	-- 针对当前group内变量名为 "killedIcePillar" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killedIcePillar", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_418031(context, evt)
	if 418011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_418031(context, evt)
	-- 针对当前group内变量名为 "killedIcePillar" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killedIcePillar", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_418033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedIcePillar"为3
	if ScriptLib.GetGroupVariableValue(context, "killedIcePillar") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_418033(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 418007 }) then
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002418, 4)
	
	--怪物转阶段
	    ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {418001}, "_SERVER_REGISVINE_ICE_ACTIVITY_FLAG_PHASE02", 1)
	ScriptLib.CreateGroupTimerEvent(context, defs.groupId, "phasetwocheck", 1)
	--冰理方生成条件重置
	ScriptLib.SetGroupVariableValue(context, "iceCubeAlive", 0)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_418035(context, evt)
	if 418012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_418035(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1080,y=285,z=-439}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400010, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_418063(context, evt)
	if 418062 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_418063(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133002418, 418062, {2905}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_418064(context, evt)
	-- 判断是gadgetid 418062 option_id 2905
	if 418062 ~= evt.param1 then
		return false	
	end
	
	if 2905 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_418064(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=1097.705, y= 285.8612, z=-438.728}, radius = 2, rot = {x=0, y=269.461, z=0}}) 
	
	return 0
end

require "IceFlowerBossBattle"
require "TD_Lib"