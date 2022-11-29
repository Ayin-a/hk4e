-- 基础信息
local base_info = {
	group_id = 302001048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48001, monster_id = 23010401, pos = { x = 1119.631, y = 201.480, z = -13.658 }, rot = { x = 0.000, y = 134.819, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 9 },
	{ config_id = 48002, monster_id = 23010301, pos = { x = 1115.862, y = 201.971, z = -23.869 }, rot = { x = 0.000, y = 75.465, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48003, monster_id = 23010401, pos = { x = 1119.631, y = 201.480, z = -13.658 }, rot = { x = 0.000, y = 134.819, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 9 },
	{ config_id = 48004, monster_id = 23010401, pos = { x = 1119.661, y = 201.674, z = -20.692 }, rot = { x = 0.000, y = 90.986, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 9 },
	{ config_id = 48005, monster_id = 23010301, pos = { x = 1125.262, y = 200.509, z = -10.235 }, rot = { x = 0.000, y = 156.261, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48006, monster_id = 23010301, pos = { x = 1120.030, y = 201.584, z = -17.403 }, rot = { x = 0.000, y = 76.048, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48007, monster_id = 23010301, pos = { x = 1125.856, y = 201.159, z = -24.253 }, rot = { x = 0.000, y = 35.187, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48008, monster_id = 23010301, pos = { x = 1121.221, y = 201.210, z = -12.543 }, rot = { x = 0.000, y = 124.880, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48009, monster_id = 23010301, pos = { x = 1121.395, y = 201.502, z = -21.674 }, rot = { x = 0.000, y = 42.506, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48010, monster_id = 23010301, pos = { x = 1118.222, y = 201.682, z = -14.206 }, rot = { x = 0.000, y = 98.919, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48011, monster_id = 22010201, pos = { x = 1116.010, y = 201.430, z = -4.564 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 9 },
	{ config_id = 48012, monster_id = 23010401, pos = { x = 1119.661, y = 201.674, z = -20.692 }, rot = { x = 0.000, y = 90.986, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 9 },
	{ config_id = 48013, monster_id = 23010301, pos = { x = 1125.262, y = 200.509, z = -10.235 }, rot = { x = 0.000, y = 156.261, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48014, monster_id = 23010301, pos = { x = 1120.030, y = 201.584, z = -17.403 }, rot = { x = 0.000, y = 76.048, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48015, monster_id = 23010301, pos = { x = 1125.856, y = 201.159, z = -24.253 }, rot = { x = 0.000, y = 35.187, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48016, monster_id = 23010301, pos = { x = 1121.221, y = 201.210, z = -12.543 }, rot = { x = 0.000, y = 124.880, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48017, monster_id = 23010301, pos = { x = 1121.395, y = 201.502, z = -21.674 }, rot = { x = 0.000, y = 42.506, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48018, monster_id = 23010301, pos = { x = 1118.222, y = 201.682, z = -14.206 }, rot = { x = 0.000, y = 98.919, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 },
	{ config_id = 48019, monster_id = 22010202, pos = { x = 1116.010, y = 201.430, z = -4.564 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 9 },
	{ config_id = 48020, monster_id = 23010301, pos = { x = 1115.862, y = 201.971, z = -23.869 }, rot = { x = 0.000, y = 75.465, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 80, area_id = 9 }
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
	{ config_id = 1048023, name = "ANY_MONSTER_DIE_48023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48023", action = "action_EVENT_ANY_MONSTER_DIE_48023", trigger_count = 0 },
	{ config_id = 1048032, name = "ANY_MONSTER_DIE_48032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48032", action = "action_EVENT_ANY_MONSTER_DIE_48032", trigger_count = 0 }
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
		monsters = { 48002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_48023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 48003, 48004, 48005, 48006, 48007, 48008, 48009, 48010, 48011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 48020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_48032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 48001, 48012, 48013, 48014, 48015, 48016, 48017, 48018, 48019 },
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
function condition_EVENT_ANY_MONSTER_DIE_48023(context, evt)
	if 48002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001048, {48003,48004}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001048, {48005,48006,48007,48008,48009,48010}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48032(context, evt)
	if 48020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001048, {48001,48012}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001048, {48013,48014,48015,48016,48017,48018}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end