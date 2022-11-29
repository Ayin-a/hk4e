-- 基础信息
local base_info = {
	group_id = 247101001
}

-- Trigger变量
local defs = {
	awardball_configid = 1011,
	fungus_group = 247101002,
	call_entity = 1010,
	start_gear = 1012,
	reborn_gear = 1013,
	camGadget = 1039,
	start_awardball = {1049,1050,1053}
}

-- DEFS_MISCS
require "V3_2/Activity_BattleMushroomMonster_MonsterConfig"

awardBallGeneratePosition={
{x=223.165558,y=91,z=219.46814},
{x=224.664261,y=91,z=213.649673},
{x=220.464478,y=91,z=212.570374},
{x=215.6979,y=91,z=211.345734},
{x=218.521729,y=91,z=212.770859},
{x=218.559219,y=91,z=208.424622},
{x=215.4301,y=91,z=220.481964},
{x=211.324722,y=91,z=214.836609},
{x=219.884338,y=91,z=207.2337},
{x=226.620392,y=91,z=211.032684},
}

local custom_level={
[81033]={max_count=9},
[81012]={max_count=4},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1013, monster_id = 21020401, pos = { x = 214.547, y = 90.183, z = 218.938 }, rot = { x = 0.000, y = 144.764, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 1007, 1008, 1021 } },
	{ config_id = 1016, monster_id = 22010301, pos = { x = 210.952, y = 90.188, z = 218.522 }, rot = { x = 0.000, y = 103.574, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 1007, 1008 } },
	{ config_id = 1017, monster_id = 22010301, pos = { x = 215.779, y = 90.184, z = 221.872 }, rot = { x = 0.000, y = 183.449, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 1007, 1008 } },
	{ config_id = 1020, monster_id = 22010401, pos = { x = 210.874, y = 90.188, z = 218.438 }, rot = { x = 0.000, y = 97.110, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 1007, 1008 } },
	{ config_id = 1021, monster_id = 22010401, pos = { x = 215.821, y = 90.184, z = 221.598 }, rot = { x = 0.000, y = 178.227, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 1007, 1008 } },
	{ config_id = 1024, monster_id = 21020601, pos = { x = 214.591, y = 90.183, z = 218.896 }, rot = { x = 0.000, y = 153.116, z = 0.000 }, level = 1, affix = { 1033, 6110, 1007, 1008 } },
	{ config_id = 1026, monster_id = 21011401, pos = { x = 211.572, y = 90.184, z = 222.640 }, rot = { x = 0.000, y = 141.765, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111, 1007, 1008 } },
	{ config_id = 1027, monster_id = 21010902, pos = { x = 210.284, y = 90.185, z = 219.691 }, rot = { x = 0.000, y = 94.467, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111, 1007, 1008 } },
	{ config_id = 1028, monster_id = 21010902, pos = { x = 215.459, y = 90.184, z = 223.415 }, rot = { x = 0.000, y = 173.712, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111, 1007, 1008 } },
	{ config_id = 1033, monster_id = 21020301, pos = { x = 214.192, y = 90.183, z = 218.992 }, rot = { x = 0.000, y = 145.524, z = 0.000 }, level = 1, disableWander = true, affix = { 4037, 1007, 1008 } },
	{ config_id = 1034, monster_id = 21030101, pos = { x = 206.705, y = 90.164, z = 218.951 }, rot = { x = 0.000, y = 104.710, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1008, 1033 } },
	{ config_id = 1035, monster_id = 21010201, pos = { x = 211.232, y = 90.184, z = 219.877 }, rot = { x = 0.000, y = 113.093, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1008, 1033 } },
	{ config_id = 1036, monster_id = 21010201, pos = { x = 214.340, y = 90.184, z = 222.713 }, rot = { x = 0.000, y = 149.995, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1008, 1033 } },
	{ config_id = 1043, monster_id = 21011302, pos = { x = 211.572, y = 90.184, z = 222.640 }, rot = { x = 0.000, y = 141.765, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111, 1007, 1008 } },
	{ config_id = 1044, monster_id = 21011302, pos = { x = 210.284, y = 90.185, z = 219.691 }, rot = { x = 0.000, y = 94.467, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111, 1007, 1008 } },
	{ config_id = 1045, monster_id = 21011302, pos = { x = 215.459, y = 90.184, z = 223.415 }, rot = { x = 0.000, y = 173.712, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111, 1007, 1008 } },
	{ config_id = 1046, monster_id = 21011401, pos = { x = 214.634, y = 90.184, z = 223.409 }, rot = { x = 0.000, y = 141.765, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111, 1007, 1008 } },
	{ config_id = 1047, monster_id = 21011401, pos = { x = 211.382, y = 90.185, z = 220.988 }, rot = { x = 0.000, y = 94.467, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111, 1007, 1008 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1010, gadget_id = 70290650, pos = { x = 219.868, y = 90.182, z = 212.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70290663, pos = { x = 226.620, y = 90.183, z = 211.033 }, rot = { x = 0.000, y = 75.606, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70290661, pos = { x = 219.554, y = 90.183, z = 212.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1039, gadget_id = 70290731, pos = { x = 218.677, y = 90.180, z = 213.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1049, gadget_id = 70290663, pos = { x = 216.362, y = 91.000, z = 211.739 }, rot = { x = 0.000, y = 75.606, z = 0.000 }, level = 1 },
	{ config_id = 1050, gadget_id = 70290663, pos = { x = 218.576, y = 91.000, z = 213.912 }, rot = { x = 0.000, y = 75.606, z = 0.000 }, level = 1 },
	{ config_id = 1053, gadget_id = 70290663, pos = { x = 220.789, y = 91.000, z = 215.713 }, rot = { x = 0.000, y = 75.606, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 关卡2房间3
	{ config_id = 1001014, name = "VARIABLE_CHANGE_1014", event = EventType.EVENT_VARIABLE_CHANGE, source = "81023", condition = "", action = "action_EVENT_VARIABLE_CHANGE_1014", trigger_count = 0 },
	-- 关卡3房间3
	{ config_id = 1001029, name = "VARIABLE_CHANGE_1029", event = EventType.EVENT_VARIABLE_CHANGE, source = "81033", condition = "", action = "action_EVENT_VARIABLE_CHANGE_1029", trigger_count = 0 },
	-- 关卡1房间2
	{ config_id = 1001037, name = "VARIABLE_CHANGE_1037", event = EventType.EVENT_VARIABLE_CHANGE, source = "81012", condition = "", action = "action_EVENT_VARIABLE_CHANGE_1037", trigger_count = 0 },
	{ config_id = 1001038, name = "VARIABLE_CHANGE_1038", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1038", action = "action_EVENT_VARIABLE_CHANGE_1038", trigger_count = 0 },
	-- 血量低于60 -- 召suite6
	{ config_id = 1001054, name = "SPECIFIC_MONSTER_HP_CHANGE_1054", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1024", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1054", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1054" },
	-- 血量低于30 -- 召suite9
	{ config_id = 1001055, name = "SPECIFIC_MONSTER_HP_CHANGE_1055", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1024", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1055", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1055" }
}

-- 点位
points = {
	-- 1
	{ config_id = 1001, pos = { x = 215.060, y = 90.183, z = 218.566 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 2 },
	-- 2
	{ config_id = 1002, pos = { x = 216.999, y = 90.184, z = 221.709 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 4 },
	-- 2
	{ config_id = 1003, pos = { x = 211.755, y = 90.187, z = 217.703 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 4 },
	-- 3
	{ config_id = 1004, pos = { x = 215.617, y = 90.184, z = 223.313 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1005, pos = { x = 212.900, y = 90.184, z = 221.421 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1006, pos = { x = 210.538, y = 90.184, z = 219.485 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 4
	{ config_id = 1007, pos = { x = 220.598, y = 90.183, z = 225.305 }, rot = { x = 0.000, y = 168.269, z = 0.000 }, tag = 16 },
	-- 4
	{ config_id = 1008, pos = { x = 210.078, y = 90.187, z = 225.260 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 16 },
	-- 4
	{ config_id = 1009, pos = { x = 205.907, y = 90.183, z = 216.949 }, rot = { x = 0.000, y = 99.359, z = 0.000 }, tag = 16 },
	-- 3
	{ config_id = 1040, pos = { x = 210.623, y = 90.184, z = 221.958 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1041, pos = { x = 213.308, y = 90.188, z = 223.751 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1071, pos = { x = 215.133, y = 90.184, z = 222.967 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1072, pos = { x = 212.415, y = 90.184, z = 221.074 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1073, pos = { x = 210.053, y = 90.184, z = 219.139 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1074, pos = { x = 210.139, y = 90.184, z = 221.611 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1075, pos = { x = 212.823, y = 90.188, z = 223.405 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1076, pos = { x = 210.833, y = 90.184, z = 221.338 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1077, pos = { x = 213.517, y = 90.188, z = 223.131 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1078, pos = { x = 211.665, y = 90.184, z = 222.096 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1079, pos = { x = 212.150, y = 90.184, z = 222.443 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 8 },
	-- 1
	{ config_id = 1080, pos = { x = 215.740, y = 90.183, z = 219.041 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 2 },
	-- 1
	{ config_id = 1081, pos = { x = 214.389, y = 90.183, z = 218.097 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 2 },
	-- 2
	{ config_id = 1082, pos = { x = 216.159, y = 90.184, z = 221.122 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 4 },
	-- 2
	{ config_id = 1083, pos = { x = 212.300, y = 90.187, z = 218.084 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 4 },
	-- 2
	{ config_id = 1084, pos = { x = 215.587, y = 90.184, z = 220.722 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 4 },
	-- 2
	{ config_id = 1085, pos = { x = 212.816, y = 90.187, z = 218.445 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 4 },
	-- 4
	{ config_id = 1086, pos = { x = 219.700, y = 90.183, z = 225.118 }, rot = { x = 0.000, y = 168.269, z = 0.000 }, tag = 16 },
	-- 4
	{ config_id = 1087, pos = { x = 210.658, y = 90.187, z = 225.665 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, tag = 16 },
	-- 4
	{ config_id = 1088, pos = { x = 206.012, y = 90.183, z = 217.586 }, rot = { x = 0.000, y = 99.359, z = 0.000 }, tag = 16 }
}

-- 变量
variables = {
	{ config_id = 1, name = "level2_room3", value = 0, no_refresh = false },
	{ config_id = 2, name = "level3_room3", value = 0, no_refresh = false },
	{ config_id = 3, name = "level1_room2", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 1025, monster_id = 26010301, pos = { x = 211.906, y = 90.192, z = 215.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1033 } },
		{ config_id = 1057, monster_id = 21011302, pos = { x = 211.572, y = 90.184, z = 222.640 }, rot = { x = 0.000, y = 141.765, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 1007, 1008 } },
		{ config_id = 1058, monster_id = 21011302, pos = { x = 214.634, y = 90.184, z = 223.409 }, rot = { x = 0.000, y = 141.765, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 1007, 1008 } },
		{ config_id = 1059, monster_id = 21011302, pos = { x = 211.382, y = 90.185, z = 220.988 }, rot = { x = 0.000, y = 94.467, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 1007, 1008 } },
		{ config_id = 1062, monster_id = 21010902, pos = { x = 210.284, y = 90.185, z = 219.691 }, rot = { x = 0.000, y = 94.467, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111, 1007, 1008 } },
		{ config_id = 1063, monster_id = 21010902, pos = { x = 215.459, y = 90.184, z = 223.415 }, rot = { x = 0.000, y = 173.712, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111, 1007, 1008 } },
		{ config_id = 1065, monster_id = 21011302, pos = { x = 211.572, y = 90.184, z = 222.640 }, rot = { x = 0.000, y = 141.765, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 1007, 1008 } },
		{ config_id = 1066, monster_id = 21011302, pos = { x = 214.634, y = 90.184, z = 223.409 }, rot = { x = 0.000, y = 141.765, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 1007, 1008 } },
		{ config_id = 1067, monster_id = 21011302, pos = { x = 211.382, y = 90.185, z = 220.988 }, rot = { x = 0.000, y = 94.467, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 1007, 1008 } }
	},
	triggers = {
		{ config_id = 1001015, name = "TIME_AXIS_PASS_1015", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1015", action = "action_EVENT_TIME_AXIS_PASS_1015", trigger_count = 0 },
		{ config_id = 1001018, name = "SPECIFIC_MONSTER_HP_CHANGE_1018", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1013", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1018", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1018" },
		{ config_id = 1001019, name = "TIME_AXIS_PASS_1019", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1019", action = "action_EVENT_TIME_AXIS_PASS_1019", trigger_count = 0 },
		{ config_id = 1001022, name = "VARIABLE_CHANGE_1022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1022", action = "action_EVENT_VARIABLE_CHANGE_1022", trigger_count = 0 },
		{ config_id = 1001023, name = "VARIABLE_CHANGE_1023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1023", action = "action_EVENT_VARIABLE_CHANGE_1023" },
		{ config_id = 1001030, name = "VARIABLE_CHANGE_1030", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1030", action = "action_EVENT_VARIABLE_CHANGE_1030", trigger_count = 0 },
		{ config_id = 1001031, name = "ANY_MONSTER_DIE_1031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1031", action = "action_EVENT_ANY_MONSTER_DIE_1031" },
		{ config_id = 1001032, name = "ANY_MONSTER_DIE_1032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1032", action = "action_EVENT_ANY_MONSTER_DIE_1032", trigger_count = 0 },
		{ config_id = 1001042, name = "ANY_MONSTER_DIE_1042", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1042", action = "action_EVENT_ANY_MONSTER_DIE_1042", trigger_count = 0 },
		{ config_id = 1001051, name = "ANY_MONSTER_LIVE_1051", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1051", action = "action_EVENT_ANY_MONSTER_LIVE_1051", trigger_count = 0 },
		{ config_id = 1001052, name = "TIME_AXIS_PASS_1052", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1052", action = "action_EVENT_TIME_AXIS_PASS_1052", trigger_count = 0 },
		{ config_id = 1001056, name = "ANY_MONSTER_DIE_1056", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1056", action = "action_EVENT_ANY_MONSTER_DIE_1056" },
		{ config_id = 1001060, name = "ANY_MONSTER_DIE_1060", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1060", action = "action_EVENT_ANY_MONSTER_DIE_1060" },
		{ config_id = 1001061, name = "ANY_MONSTER_DIE_1061", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1061", action = "action_EVENT_ANY_MONSTER_DIE_1061" },
		{ config_id = 1001064, name = "ANY_MONSTER_DIE_1064", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1064", action = "action_EVENT_ANY_MONSTER_DIE_1064" },
		{ config_id = 1001068, name = "ANY_MONSTER_DIE_1068", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1068", action = "action_EVENT_ANY_MONSTER_DIE_1068" },
		{ config_id = 1001069, name = "ANY_MONSTER_DIE_1069", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1069", action = "action_EVENT_ANY_MONSTER_DIE_1069" },
		{ config_id = 1001070, name = "SPECIFIC_MONSTER_HP_CHANGE_1070", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1013", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1070", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1070" }
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
		monsters = { },
		gadgets = { 1010, 1012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_1014", "VARIABLE_CHANGE_1029", "VARIABLE_CHANGE_1037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 关卡2房间3,
		monsters = { 1013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1016, 1017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1020, 1021 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 关卡3房间3,
		monsters = { 1024, 1026, 1046, 1047 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_1054" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 1027, 1028 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_1055" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 关卡1房间2,
		monsters = { 1033, 1035, 1036 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_1038" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 1034 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 1043, 1044, 1045 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
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

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1014(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247101001, 2)
	
	-- 将本组内变量名为 "level2_room3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "level2_room3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1029(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247101001, 5)
	
	-- 将本组内变量名为 "level3_room3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "level3_room3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1037(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247101001, 7)
	
	-- 将本组内变量名为 "level1_room2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "level1_room2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"level1_room2"为1
	if ScriptLib.GetGroupVariableValue(context, "level1_room2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1038(context, evt)
	-- 将本组内变量名为 "level1_room2" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "level1_room2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟20秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1034, delay_time = 20 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1054(context, evt)
	--[[判断指定configid的怪物的血量小于%60时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 60 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1054(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247101001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1055(context, evt)
	--[[判断指定configid的怪物的血量小于%30时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 30 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1055(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247101001, 9)
	
	return 0
end

require "V3_2/Activity_BattleMushroomMonster_BattleGroup"