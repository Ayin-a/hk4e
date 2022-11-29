-- 基础信息
local base_info = {
	group_id = 302001098
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 98001, monster_id = 25060101, pos = { x = 1737.625, y = 256.887, z = 188.956 }, rot = { x = 0.000, y = 100.807, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 5 },
	{ config_id = 98002, monster_id = 25060101, pos = { x = 1737.982, y = 257.735, z = 183.428 }, rot = { x = 0.000, y = 60.983, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 98003, monster_id = 25060101, pos = { x = 1737.625, y = 256.887, z = 188.956 }, rot = { x = 0.000, y = 100.807, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 98004, monster_id = 25070101, pos = { x = 1741.298, y = 256.505, z = 191.811 }, rot = { x = 0.000, y = 158.270, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 98005, monster_id = 25070101, pos = { x = 1745.258, y = 257.332, z = 191.640 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 98006, monster_id = 25020201, pos = { x = 1738.844, y = 258.333, z = 179.058 }, rot = { x = 0.000, y = 21.052, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 98007, monster_id = 25010201, pos = { x = 1746.082, y = 257.641, z = 184.055 }, rot = { x = 0.000, y = 302.728, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 98008, monster_id = 25010201, pos = { x = 1746.985, y = 258.006, z = 188.646 }, rot = { x = 0.000, y = 246.537, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 98009, monster_id = 25010301, pos = { x = 1743.728, y = 258.577, z = 177.117 }, rot = { x = 0.000, y = 339.078, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 98010, monster_id = 25010301, pos = { x = 1747.371, y = 258.136, z = 180.201 }, rot = { x = 0.000, y = 308.521, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 98011, monster_id = 25010501, pos = { x = 1737.021, y = 258.015, z = 181.456 }, rot = { x = 0.000, y = 57.700, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 98012, monster_id = 25070101, pos = { x = 1741.298, y = 256.505, z = 191.811 }, rot = { x = 0.000, y = 158.270, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 5 },
	{ config_id = 98013, monster_id = 25070101, pos = { x = 1745.258, y = 257.332, z = 191.640 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 5 },
	{ config_id = 98014, monster_id = 25020201, pos = { x = 1738.844, y = 258.333, z = 179.058 }, rot = { x = 0.000, y = 21.052, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 20, area_id = 5 },
	{ config_id = 98015, monster_id = 25010201, pos = { x = 1746.082, y = 257.641, z = 184.055 }, rot = { x = 0.000, y = 302.728, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 20, area_id = 5 },
	{ config_id = 98016, monster_id = 25010201, pos = { x = 1746.985, y = 258.006, z = 188.646 }, rot = { x = 0.000, y = 246.537, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 20, area_id = 5 },
	{ config_id = 98017, monster_id = 25010301, pos = { x = 1743.725, y = 258.568, z = 177.201 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 20, area_id = 5 },
	{ config_id = 98018, monster_id = 25010301, pos = { x = 1747.371, y = 258.136, z = 180.201 }, rot = { x = 0.000, y = 308.521, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 20, area_id = 5 },
	{ config_id = 98019, monster_id = 25010501, pos = { x = 1737.021, y = 258.015, z = 181.456 }, rot = { x = 0.000, y = 57.700, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 20, area_id = 5 },
	{ config_id = 98020, monster_id = 25060101, pos = { x = 1737.982, y = 257.735, z = 183.428 }, rot = { x = 0.000, y = 60.983, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 5 }
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
	{ config_id = 1098021, name = "ANY_MONSTER_LIVE_98021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_98021", action = "action_EVENT_ANY_MONSTER_LIVE_98021", trigger_count = 0 },
	{ config_id = 1098022, name = "ANY_MONSTER_LIVE_98022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_98022", action = "action_EVENT_ANY_MONSTER_LIVE_98022", trigger_count = 0 }
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
		monsters = { 98002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_98021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 98003, 98004, 98005, 98006, 98007, 98008, 98009, 98010, 98011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 98020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_98022" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 98001, 98012, 98013, 98014, 98015, 98016, 98017, 98018, 98019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_98021(context, evt)
	if 98002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_98021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001098, {98003,98004,98005}, 99999, 1, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001098, {98006,98007,98008}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001098, {98009,98010,98011}, 99999, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_98022(context, evt)
	if 98020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_98022(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001098, {98001,98012,98013}, 99999, 1, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001098, {98014,98015,98016}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001098, {98017,98018,98019}, 99999, 1, 2) then
		return -1
	end
	
	return 0
end