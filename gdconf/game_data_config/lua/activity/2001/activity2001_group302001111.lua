-- 基础信息
local base_info = {
	group_id = 302001111
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 111001, monster_id = 23010301, pos = { x = 1059.493, y = 200.683, z = 215.649 }, rot = { x = 0.000, y = 201.572, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 111002, monster_id = 23010301, pos = { x = 1065.031, y = 200.762, z = 204.714 }, rot = { x = 0.000, y = 336.909, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 111003, monster_id = 23010301, pos = { x = 1059.068, y = 200.671, z = 215.382 }, rot = { x = 0.000, y = 214.733, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 111004, monster_id = 23010301, pos = { x = 1062.816, y = 200.438, z = 214.514 }, rot = { x = 0.000, y = 191.398, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 111005, monster_id = 23010201, pos = { x = 1058.034, y = 200.706, z = 201.851 }, rot = { x = 0.000, y = 358.596, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 111006, monster_id = 23010401, pos = { x = 1055.980, y = 200.437, z = 205.579 }, rot = { x = 0.000, y = 25.970, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 111007, monster_id = 23010301, pos = { x = 1066.318, y = 200.654, z = 209.309 }, rot = { x = 0.000, y = 254.239, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 111008, monster_id = 23010301, pos = { x = 1055.471, y = 200.331, z = 209.340 }, rot = { x = 0.000, y = 51.160, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 111009, monster_id = 21020101, pos = { x = 1062.019, y = 200.783, z = 189.913 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 111010, monster_id = 21020201, pos = { x = 1042.742, y = 200.499, z = 195.141 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 111011, monster_id = 22010201, pos = { x = 1052.576, y = 200.655, z = 216.350 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 5 },
	{ config_id = 111012, monster_id = 23010301, pos = { x = 1062.816, y = 200.438, z = 214.514 }, rot = { x = 0.000, y = 191.398, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 111013, monster_id = 23010201, pos = { x = 1058.499, y = 200.724, z = 201.725 }, rot = { x = 0.000, y = 359.140, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 111014, monster_id = 23010401, pos = { x = 1056.071, y = 200.444, z = 205.554 }, rot = { x = 0.000, y = 0.112, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 111015, monster_id = 23010301, pos = { x = 1066.163, y = 200.633, z = 209.603 }, rot = { x = 0.000, y = 252.738, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 111016, monster_id = 23010301, pos = { x = 1055.088, y = 200.313, z = 209.354 }, rot = { x = 0.000, y = 51.160, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 5 },
	{ config_id = 111017, monster_id = 21020101, pos = { x = 1062.019, y = 200.783, z = 189.913 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 111018, monster_id = 21020202, pos = { x = 1042.742, y = 200.499, z = 195.141 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 111019, monster_id = 22010202, pos = { x = 1052.576, y = 200.655, z = 216.350 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 5 },
	{ config_id = 111020, monster_id = 23010301, pos = { x = 1065.031, y = 200.762, z = 204.714 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 5 }
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
	{ config_id = 1111021, name = "ANY_MONSTER_DIE_111021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_111021", action = "action_EVENT_ANY_MONSTER_DIE_111021", trigger_count = 0 },
	{ config_id = 1111022, name = "ANY_MONSTER_DIE_111022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_111022", action = "action_EVENT_ANY_MONSTER_DIE_111022", trigger_count = 0 }
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
		monsters = { 111002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_111021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 111003, 111004, 111005, 111006, 111007, 111008, 111009, 111010, 111011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 111020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_111022" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 111001, 111012, 111013, 111014, 111015, 111016, 111017, 111018, 111019 },
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
function condition_EVENT_ANY_MONSTER_DIE_111021(context, evt)
	if 111002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_111021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001111, {111003,111004,111007,111008}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001111, {111005,111006}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_111022(context, evt)
	if 111020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_111022(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001111, {111001,111012,111015,111016}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001111, {111013,111014}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end