-- 基础信息
local base_info = {
	group_id = 302001040
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40001, monster_id = 23010301, pos = { x = 1072.929, y = 200.708, z = 767.771 }, rot = { x = 0.000, y = 39.106, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 6 },
	{ config_id = 40002, monster_id = 23010301, pos = { x = 1080.000, y = 200.992, z = 765.775 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 6 },
	{ config_id = 40003, monster_id = 23010301, pos = { x = 1072.929, y = 200.708, z = 767.771 }, rot = { x = 0.000, y = 39.106, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 6 },
	{ config_id = 40004, monster_id = 23010301, pos = { x = 1079.136, y = 200.623, z = 775.704 }, rot = { x = 0.000, y = 211.515, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 6 },
	{ config_id = 40005, monster_id = 23010101, pos = { x = 1084.351, y = 201.052, z = 765.577 }, rot = { x = 0.000, y = 315.902, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 40006, monster_id = 23010101, pos = { x = 1077.391, y = 201.199, z = 762.804 }, rot = { x = 0.000, y = 0.112, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 40007, monster_id = 23010301, pos = { x = 1081.995, y = 200.578, z = 770.185 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 6 },
	{ config_id = 40008, monster_id = 23010301, pos = { x = 1075.721, y = 200.802, z = 766.432 }, rot = { x = 0.000, y = 2.115, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 80, area_id = 6 },
	{ config_id = 40009, monster_id = 21020101, pos = { x = 1080.784, y = 200.182, z = 743.896 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 6 },
	{ config_id = 40010, monster_id = 21020201, pos = { x = 1061.507, y = 200.833, z = 749.125 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 6 },
	{ config_id = 40011, monster_id = 22010201, pos = { x = 1071.348, y = 200.788, z = 770.340 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 6 },
	{ config_id = 40012, monster_id = 23010301, pos = { x = 1079.136, y = 200.623, z = 775.704 }, rot = { x = 0.000, y = 211.515, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 6 },
	{ config_id = 40013, monster_id = 23010101, pos = { x = 1084.351, y = 201.052, z = 765.577 }, rot = { x = 0.000, y = 315.902, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 40014, monster_id = 23010101, pos = { x = 1077.391, y = 201.199, z = 762.804 }, rot = { x = 0.000, y = 0.112, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 40015, monster_id = 23010301, pos = { x = 1081.995, y = 200.578, z = 770.185 }, rot = { x = 0.000, y = 292.760, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 6 },
	{ config_id = 40016, monster_id = 23010301, pos = { x = 1075.721, y = 200.802, z = 766.432 }, rot = { x = 0.000, y = 2.115, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 6 },
	{ config_id = 40017, monster_id = 21020101, pos = { x = 1080.784, y = 200.182, z = 743.896 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 6 },
	{ config_id = 40018, monster_id = 21020202, pos = { x = 1061.507, y = 200.833, z = 749.125 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 6 },
	{ config_id = 40019, monster_id = 22010202, pos = { x = 1071.348, y = 200.788, z = 770.340 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 6 },
	{ config_id = 40020, monster_id = 23010301, pos = { x = 1080.000, y = 200.992, z = 765.775 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 80, area_id = 6 }
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
	{ config_id = 1040023, name = "ANY_MONSTER_DIE_40023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40023", action = "action_EVENT_ANY_MONSTER_DIE_40023", trigger_count = 0 },
	{ config_id = 1040032, name = "ANY_MONSTER_DIE_40032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40032", action = "action_EVENT_ANY_MONSTER_DIE_40032", trigger_count = 0 }
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
		monsters = { 40002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_40023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 40003, 40004, 40005, 40006, 40007, 40008, 40009, 40010, 40011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 40020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_40032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 40001, 40012, 40013, 40014, 40015, 40016, 40017, 40018, 40019 },
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
function condition_EVENT_ANY_MONSTER_DIE_40023(context, evt)
	if 40002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001040, {40003,40004,40007,40008}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001040, {40005,40006}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40032(context, evt)
	if 40020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001040, {40001,40012,40015,40016}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001040, {40013,40014}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

require "AsterMiddle"