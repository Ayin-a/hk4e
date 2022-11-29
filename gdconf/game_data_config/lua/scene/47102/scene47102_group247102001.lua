-- 基础信息
local base_info = {
	group_id = 247102001
}

-- Trigger变量
local defs = {
	awardball_configid = 1011,
	defense_logicentity = 1012,
	defense_viewentity = 1013,
	fungus_group = 247102002,
	call_entity = 1014,
	start_gear = 1015,
	reborn_gear = 1016,
	camGadget = 1025,
	start_awardball = {1026,1027}
}

-- DEFS_MISCS
require "V3_2/Activity_BattleMushroomMonster_MonsterConfig"

awardBallGeneratePosition={
{x=727.2565,y=91.3,z=780.9055},
{x=722.521362,y=91.3,z=776.6251},
{x=722.521362,y=91.3,z=786.3053},
{x=712.711243,y=91.3,z=786.3053},
{x=712.711243,y=91.3,z=778.2619},
{x=717.9877,y=91.3,z=775.6591},
{x=717.9877,y=91.3,z=780.6269},
{x=727.5009,y=91.3,z=785.084839}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1016, monster_id = 21020101, pos = { x = 717.040, y = 90.184, z = 786.917 }, rot = { x = 0.000, y = 148.148, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6110, 5226 } },
	{ config_id = 1017, monster_id = 21010401, pos = { x = 710.852, y = 90.177, z = 784.987 }, rot = { x = 0.000, y = 82.306, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111 } },
	{ config_id = 1018, monster_id = 21010401, pos = { x = 713.922, y = 90.187, z = 790.761 }, rot = { x = 0.000, y = 143.971, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111 } },
	{ config_id = 1019, monster_id = 21010401, pos = { x = 720.055, y = 90.183, z = 792.272 }, rot = { x = 0.000, y = 214.609, z = 0.000 }, level = 1, disableWander = true, affix = { 1033, 6111 } },
	{ config_id = 1020, monster_id = 21010401, pos = { x = 711.118, y = 90.183, z = 785.600 }, rot = { x = 0.000, y = 100.504, z = 0.000 }, level = 1, affix = { 1033, 6111 } },
	{ config_id = 1021, monster_id = 21010401, pos = { x = 714.074, y = 90.187, z = 790.490 }, rot = { x = 0.000, y = 125.449, z = 0.000 }, level = 1, affix = { 1033, 6111 } },
	{ config_id = 1022, monster_id = 21010401, pos = { x = 719.467, y = 90.183, z = 792.996 }, rot = { x = 0.000, y = 171.726, z = 0.000 }, level = 1, affix = { 1033, 6111 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1011, gadget_id = 70290663, pos = { x = 729.489, y = 90.183, z = 788.592 }, rot = { x = 0.000, y = 91.813, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70350462, pos = { x = 720.567, y = 90.179, z = 781.084 }, rot = { x = 0.000, y = 91.813, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70350023, pos = { x = 720.567, y = 90.179, z = 781.084 }, rot = { x = 0.000, y = 91.813, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70290650, pos = { x = 719.579, y = 90.182, z = 783.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70290661, pos = { x = 722.041, y = 90.183, z = 778.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70290731, pos = { x = 720.293, y = 90.180, z = 781.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70290663, pos = { x = 721.044, y = 90.184, z = 775.778 }, rot = { x = 0.000, y = 91.813, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70290663, pos = { x = 721.431, y = 90.184, z = 787.086 }, rot = { x = 0.000, y = 91.813, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001023, name = "ANY_MONSTER_DIE_1023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1023", action = "action_EVENT_ANY_MONSTER_DIE_1023" },
	{ config_id = 1001024, name = "ANY_MONSTER_LIVE_1024", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1024", action = "action_EVENT_ANY_MONSTER_LIVE_1024" }
}

-- 点位
points = {
	-- 1
	{ config_id = 1001, pos = { x = 716.958, y = 90.184, z = 786.916 }, rot = { x = 1.033, y = 153.114, z = 359.950 }, tag = 2 },
	-- 1
	{ config_id = 1002, pos = { x = 713.148, y = 90.184, z = 786.871 }, rot = { x = 0.000, y = 131.776, z = 0.000 }, tag = 2 },
	-- 1
	{ config_id = 1003, pos = { x = 719.051, y = 90.183, z = 789.931 }, rot = { x = 0.000, y = 179.485, z = 0.000 }, tag = 2 },
	-- 2
	{ config_id = 1004, pos = { x = 715.052, y = 90.184, z = 789.612 }, rot = { x = 1.172, y = 149.369, z = 0.901 }, tag = 4 },
	-- 2
	{ config_id = 1005, pos = { x = 719.428, y = 90.141, z = 791.555 }, rot = { x = 0.808, y = 158.543, z = 1.237 }, tag = 4 },
	-- 2
	{ config_id = 1006, pos = { x = 711.191, y = 90.213, z = 786.972 }, rot = { x = 1.178, y = 138.822, z = 0.892 }, tag = 4 },
	-- 3
	{ config_id = 1007, pos = { x = 727.549, y = 90.184, z = 788.664 }, rot = { x = 0.000, y = 177.581, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1008, pos = { x = 711.231, y = 90.183, z = 778.994 }, rot = { x = 0.000, y = 108.864, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1009, pos = { x = 713.380, y = 90.188, z = 792.478 }, rot = { x = 0.000, y = 150.040, z = 0.000 }, tag = 8 },
	-- 1
	{ config_id = 1010, pos = { x = 714.826, y = 90.187, z = 790.940 }, rot = { x = 0.000, y = 154.600, z = 0.000 }, tag = 2 },
	-- 5
	{ config_id = 1028, pos = { x = 709.706, y = 90.183, z = 778.979 }, rot = { x = 0.000, y = 61.180, z = 0.000 }, tag = 32 },
	-- 5
	{ config_id = 1029, pos = { x = 711.229, y = 90.183, z = 776.094 }, rot = { x = 0.000, y = 63.997, z = 0.000 }, tag = 32 },
	-- 5
	{ config_id = 1030, pos = { x = 712.893, y = 90.183, z = 773.279 }, rot = { x = 0.000, y = 65.774, z = 0.000 }, tag = 32 },
	-- 6
	{ config_id = 1031, pos = { x = 731.360, y = 90.184, z = 784.102 }, rot = { x = 0.000, y = 240.136, z = 0.000 }, tag = 64 },
	-- 6
	{ config_id = 1032, pos = { x = 729.978, y = 90.184, z = 786.571 }, rot = { x = 0.000, y = 240.136, z = 0.000 }, tag = 64 },
	-- 6
	{ config_id = 1033, pos = { x = 728.604, y = 90.184, z = 789.172 }, rot = { x = 0.000, y = 240.136, z = 0.000 }, tag = 64 },
	-- 7
	{ config_id = 1034, pos = { x = 720.490, y = 90.184, z = 771.047 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 128 },
	-- 7
	{ config_id = 1035, pos = { x = 724.813, y = 90.188, z = 773.115 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 128 },
	-- 7
	{ config_id = 1036, pos = { x = 729.385, y = 90.186, z = 775.874 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 128 },
	-- 1
	{ config_id = 1037, pos = { x = 717.310, y = 90.184, z = 786.145 }, rot = { x = 1.033, y = 153.114, z = 359.950 }, tag = 2 },
	-- 1
	{ config_id = 1038, pos = { x = 713.501, y = 90.184, z = 786.100 }, rot = { x = 0.000, y = 131.776, z = 0.000 }, tag = 2 },
	-- 1
	{ config_id = 1039, pos = { x = 719.403, y = 90.183, z = 789.160 }, rot = { x = 0.000, y = 179.485, z = 0.000 }, tag = 2 },
	-- 1
	{ config_id = 1040, pos = { x = 715.178, y = 90.187, z = 790.169 }, rot = { x = 0.000, y = 154.600, z = 0.000 }, tag = 2 },
	-- 2
	{ config_id = 1041, pos = { x = 715.516, y = 90.184, z = 788.771 }, rot = { x = 1.172, y = 149.369, z = 0.901 }, tag = 4 },
	-- 2
	{ config_id = 1042, pos = { x = 719.893, y = 90.141, z = 790.713 }, rot = { x = 0.808, y = 158.543, z = 1.237 }, tag = 4 },
	-- 2
	{ config_id = 1043, pos = { x = 711.655, y = 90.213, z = 786.130 }, rot = { x = 1.178, y = 138.822, z = 0.892 }, tag = 4 },
	-- 3
	{ config_id = 1044, pos = { x = 727.918, y = 90.184, z = 787.850 }, rot = { x = 0.000, y = 177.581, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1045, pos = { x = 711.600, y = 90.183, z = 778.180 }, rot = { x = 0.000, y = 108.864, z = 0.000 }, tag = 8 },
	-- 3
	{ config_id = 1046, pos = { x = 713.750, y = 90.188, z = 791.664 }, rot = { x = 0.000, y = 150.040, z = 0.000 }, tag = 8 },
	-- 5
	{ config_id = 1047, pos = { x = 710.359, y = 90.183, z = 779.281 }, rot = { x = 0.000, y = 61.180, z = 0.000 }, tag = 32 },
	-- 5
	{ config_id = 1048, pos = { x = 711.882, y = 90.183, z = 776.395 }, rot = { x = 0.000, y = 63.997, z = 0.000 }, tag = 32 },
	-- 5
	{ config_id = 1049, pos = { x = 713.546, y = 90.183, z = 773.581 }, rot = { x = 0.000, y = 65.774, z = 0.000 }, tag = 32 },
	-- 6
	{ config_id = 1050, pos = { x = 731.360, y = 88.817, z = 783.464 }, rot = { x = 0.000, y = 240.136, z = 0.000 }, tag = 64 },
	-- 6
	{ config_id = 1051, pos = { x = 729.978, y = 88.817, z = 785.934 }, rot = { x = 0.000, y = 240.136, z = 0.000 }, tag = 64 },
	-- 6
	{ config_id = 1052, pos = { x = 728.604, y = 88.816, z = 788.534 }, rot = { x = 0.000, y = 240.136, z = 0.000 }, tag = 64 },
	-- 7
	{ config_id = 1053, pos = { x = 719.549, y = 90.184, z = 771.992 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 128 },
	-- 7
	{ config_id = 1054, pos = { x = 723.871, y = 90.184, z = 774.062 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 128 },
	-- 7
	{ config_id = 1055, pos = { x = 728.442, y = 90.184, z = 776.814 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 128 },
	-- 2
	{ config_id = 1056, pos = { x = 714.090, y = 90.185, z = 788.986 }, rot = { x = 1.172, y = 149.369, z = 0.901 }, tag = 4 },
	-- 2
	{ config_id = 1057, pos = { x = 718.466, y = 90.183, z = 790.932 }, rot = { x = 0.808, y = 158.543, z = 1.237 }, tag = 4 },
	-- 2
	{ config_id = 1058, pos = { x = 710.231, y = 90.183, z = 786.344 }, rot = { x = 1.178, y = 138.822, z = 0.892 }, tag = 4 },
	-- 2
	{ config_id = 1059, pos = { x = 714.554, y = 90.184, z = 788.143 }, rot = { x = 1.172, y = 149.369, z = 0.901 }, tag = 4 },
	-- 2
	{ config_id = 1060, pos = { x = 718.931, y = 90.183, z = 790.088 }, rot = { x = 0.808, y = 158.543, z = 1.237 }, tag = 4 },
	-- 2
	{ config_id = 1061, pos = { x = 710.695, y = 90.182, z = 785.504 }, rot = { x = 1.178, y = 138.822, z = 0.892 }, tag = 4 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monsterCount", value = 0, no_refresh = false }
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
		gadgets = { 1014, 1015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1016, 1017, 1018, 1019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1023", "ANY_MONSTER_LIVE_1024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1020, 1021, 1022 },
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
function condition_EVENT_ANY_MONSTER_DIE_1023(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1023(context, evt)
	-- 将本组内变量名为 "monsterCount" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1024(context, evt)
	-- 判断变量"monsterCount"为1
	if ScriptLib.GetGroupVariableValue(context, "monsterCount") ~= 1 then
			return false
	end
	
	if 1016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247102001, 3)
	
	-- 将本组内变量名为 "monsterCount" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterCount", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_2/Activity_BattleMushroomMonster_BattleGroup"