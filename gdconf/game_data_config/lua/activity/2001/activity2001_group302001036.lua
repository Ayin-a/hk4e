-- 基础信息
local base_info = {
	group_id = 302001036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36001, monster_id = 23020101, pos = { x = 1605.070, y = 225.647, z = 1269.952 }, rot = { x = 0.000, y = 63.547, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 36002, monster_id = 23020101, pos = { x = 1615.821, y = 226.589, z = 1284.219 }, rot = { x = 0.000, y = 191.985, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 36003, monster_id = 23020101, pos = { x = 1605.070, y = 225.647, z = 1269.952 }, rot = { x = 0.000, y = 54.739, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 36004, monster_id = 23020101, pos = { x = 1625.204, y = 224.610, z = 1273.282 }, rot = { x = 0.000, y = 268.441, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 36005, monster_id = 23020101, pos = { x = 1606.209, y = 226.758, z = 1279.254 }, rot = { x = 0.000, y = 91.983, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 36006, monster_id = 23020101, pos = { x = 1622.597, y = 225.658, z = 1281.375 }, rot = { x = 0.000, y = 246.248, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 36007, monster_id = 23020101, pos = { x = 1606.209, y = 226.758, z = 1279.254 }, rot = { x = 0.000, y = 91.983, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1006, 4103, 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 36008, monster_id = 23020101, pos = { x = 1622.597, y = 225.658, z = 1281.375 }, rot = { x = 0.000, y = 246.248, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1006, 4103, 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 36012, monster_id = 23020101, pos = { x = 1625.204, y = 224.610, z = 1273.282 }, rot = { x = 0.000, y = 256.040, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 36020, monster_id = 23020101, pos = { x = 1615.821, y = 226.589, z = 1284.219 }, rot = { x = 0.000, y = 195.216, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 150, area_id = 5 }
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
	{ config_id = 1036023, name = "ANY_MONSTER_DIE_36023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36023", action = "action_EVENT_ANY_MONSTER_DIE_36023", trigger_count = 0 },
	{ config_id = 1036032, name = "ANY_MONSTER_DIE_36032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36032", action = "action_EVENT_ANY_MONSTER_DIE_36032", trigger_count = 0 }
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
		monsters = { 36002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_36023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 36003, 36004, 36005, 36006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 36020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_36032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 36001, 36007, 36008, 36012 },
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
function condition_EVENT_ANY_MONSTER_DIE_36023(context, evt)
	if 36002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001036, {36003,36004,36005,36006}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36032(context, evt)
	if 36020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001036, {36001,36012,36007,36008}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

require "AsterMiddle"