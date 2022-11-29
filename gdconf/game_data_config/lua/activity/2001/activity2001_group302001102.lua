-- 基础信息
local base_info = {
	group_id = 302001102
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 102001, monster_id = 23010301, pos = { x = 1678.884, y = 239.312, z = 785.571 }, rot = { x = 0.000, y = 39.106, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 102002, monster_id = 23010301, pos = { x = 1686.574, y = 239.027, z = 785.610 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 102003, monster_id = 23010301, pos = { x = 1678.884, y = 239.312, z = 785.571 }, rot = { x = 0.000, y = 39.106, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 102004, monster_id = 23010501, pos = { x = 1685.894, y = 239.444, z = 794.594 }, rot = { x = 0.000, y = 211.515, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 102005, monster_id = 23010601, pos = { x = 1687.846, y = 238.599, z = 780.686 }, rot = { x = 0.000, y = 345.316, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 102006, monster_id = 23010201, pos = { x = 1677.533, y = 239.063, z = 799.001 }, rot = { x = 0.000, y = 135.969, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 102007, monster_id = 23010501, pos = { x = 1680.290, y = 239.180, z = 794.379 }, rot = { x = 0.000, y = 119.781, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 102008, monster_id = 23010301, pos = { x = 1676.961, y = 239.419, z = 789.529 }, rot = { x = 0.000, y = 82.975, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 102009, monster_id = 21020101, pos = { x = 1685.838, y = 238.899, z = 777.765 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 102010, monster_id = 21020201, pos = { x = 1666.561, y = 239.247, z = 782.998 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 102011, monster_id = 22010201, pos = { x = 1676.398, y = 237.230, z = 804.215 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 5 },
	{ config_id = 102012, monster_id = 23010501, pos = { x = 1685.894, y = 239.444, z = 794.594 }, rot = { x = 0.000, y = 211.515, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 102013, monster_id = 23010601, pos = { x = 1687.846, y = 238.599, z = 780.686 }, rot = { x = 0.000, y = 345.316, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 102014, monster_id = 23010201, pos = { x = 1677.533, y = 239.063, z = 799.001 }, rot = { x = 0.000, y = 135.969, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 102015, monster_id = 23010501, pos = { x = 1680.290, y = 239.180, z = 794.379 }, rot = { x = 0.000, y = 160.302, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 102016, monster_id = 23010301, pos = { x = 1676.961, y = 239.419, z = 789.529 }, rot = { x = 0.000, y = 82.975, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 102017, monster_id = 21020101, pos = { x = 1685.838, y = 238.899, z = 777.765 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 102018, monster_id = 21020202, pos = { x = 1666.561, y = 239.247, z = 782.998 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 102019, monster_id = 22010202, pos = { x = 1676.398, y = 237.230, z = 804.215 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 5 },
	{ config_id = 102020, monster_id = 23010301, pos = { x = 1686.574, y = 239.027, z = 785.610 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 5 }
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
	{ config_id = 1102021, name = "ANY_MONSTER_DIE_102021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102021", action = "action_EVENT_ANY_MONSTER_DIE_102021", trigger_count = 0 },
	{ config_id = 1102022, name = "ANY_MONSTER_DIE_102022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102022", action = "action_EVENT_ANY_MONSTER_DIE_102022", trigger_count = 0 }
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
		monsters = { 102002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_102021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 102003, 102004, 102005, 102006, 102007, 102008, 102009, 102010, 102011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 102020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_102022" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 102001, 102012, 102013, 102014, 102015, 102016, 102017, 102018, 102019 },
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
function condition_EVENT_ANY_MONSTER_DIE_102021(context, evt)
	if 102002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_102021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001102, {102003,102004,102007,102008}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001102, {102005,102006}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_102022(context, evt)
	if 102020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_102022(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001102, {102001,102012,102015,102016}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001102, {102013,102014}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end