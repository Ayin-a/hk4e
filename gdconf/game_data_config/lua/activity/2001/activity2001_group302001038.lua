-- 基础信息
local base_info = {
	group_id = 302001038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38001, monster_id = 21011201, pos = { x = 1426.050, y = 212.856, z = 1107.484 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38002, monster_id = 21011201, pos = { x = 1434.075, y = 213.670, z = 1099.998 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38003, monster_id = 21011201, pos = { x = 1426.050, y = 212.856, z = 1107.484 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38004, monster_id = 21011201, pos = { x = 1433.642, y = 213.792, z = 1107.103 }, rot = { x = 0.000, y = 207.264, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38005, monster_id = 21011001, pos = { x = 1432.871, y = 214.255, z = 1112.523 }, rot = { x = 0.000, y = 180.836, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38006, monster_id = 21010501, pos = { x = 1436.900, y = 214.505, z = 1110.182 }, rot = { x = 0.000, y = 233.732, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38007, monster_id = 21010501, pos = { x = 1427.221, y = 213.055, z = 1099.034 }, rot = { x = 0.000, y = 42.829, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38008, monster_id = 21011001, pos = { x = 1436.431, y = 213.587, z = 1097.970 }, rot = { x = 0.000, y = 301.673, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38009, monster_id = 21011201, pos = { x = 1435.857, y = 213.953, z = 1104.155 }, rot = { x = 0.000, y = 249.992, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38010, monster_id = 21011201, pos = { x = 1429.539, y = 213.195, z = 1097.823 }, rot = { x = 0.000, y = 14.289, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38011, monster_id = 21020301, pos = { x = 1425.253, y = 212.753, z = 1102.139 }, rot = { x = 0.000, y = 76.711, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 38012, monster_id = 21011201, pos = { x = 1433.642, y = 213.792, z = 1107.103 }, rot = { x = 0.000, y = 207.264, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38013, monster_id = 21011002, pos = { x = 1432.871, y = 214.255, z = 1112.523 }, rot = { x = 0.000, y = 180.836, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38014, monster_id = 21010502, pos = { x = 1436.900, y = 214.505, z = 1110.182 }, rot = { x = 0.000, y = 171.191, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38015, monster_id = 21010502, pos = { x = 1427.221, y = 213.055, z = 1099.034 }, rot = { x = 0.000, y = 42.907, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38016, monster_id = 21011002, pos = { x = 1436.431, y = 213.587, z = 1097.970 }, rot = { x = 0.000, y = 236.476, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38017, monster_id = 21011201, pos = { x = 1435.856, y = 213.953, z = 1104.155 }, rot = { x = 0.000, y = 277.523, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38018, monster_id = 21011201, pos = { x = 1429.539, y = 213.195, z = 1097.823 }, rot = { x = 0.000, y = 14.289, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38019, monster_id = 21020301, pos = { x = 1423.520, y = 212.561, z = 1103.035 }, rot = { x = 0.000, y = 96.656, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 38020, monster_id = 21011201, pos = { x = 1434.075, y = 213.670, z = 1099.998 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 38024, monster_id = 21020301, pos = { x = 1437.840, y = 213.957, z = 1103.460 }, rot = { x = 0.000, y = 262.160, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 38025, monster_id = 21020301, pos = { x = 1437.752, y = 213.937, z = 1103.272 }, rot = { x = 0.000, y = 259.682, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 50, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1038023, name = "ANY_MONSTER_LIVE_38023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_38023", action = "action_EVENT_ANY_MONSTER_LIVE_38023", trigger_count = 0 },
	{ config_id = 1038032, name = "ANY_MONSTER_LIVE_38032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_38032", action = "action_EVENT_ANY_MONSTER_LIVE_38032", trigger_count = 0 }
}

-- 变量
variables = {
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 38002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_38023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 38003, 38004, 38005, 38006, 38007, 38008, 38009, 38010, 38011, 38024 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 38020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_38032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 38001, 38012, 38013, 38014, 38015, 38016, 38017, 38018, 38019, 38025 },
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
function condition_EVENT_ANY_MONSTER_LIVE_38023(context, evt)
	if 38002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_38023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001038, {38003,38004,38009,38010}, 99999, 1, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001038, {38005,38006,38007,38008}, 99999, 1, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001038, {38011,38024}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_38032(context, evt)
	if 38020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_38032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少2只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001038, {38001,38012,38017,38018}, 99999, 2, 3) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001038, {38013,38014,38015,38016}, 99999, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001038, {38019,38025}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

require "AsterMiddle"