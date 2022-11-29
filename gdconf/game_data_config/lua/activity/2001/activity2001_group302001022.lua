-- 基础信息
local base_info = {
	group_id = 302001022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22001, monster_id = 21010201, pos = { x = 1447.951, y = 269.774, z = -1650.400 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22002, monster_id = 21010201, pos = { x = 1457.681, y = 269.613, z = -1659.272 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22003, monster_id = 21010201, pos = { x = 1448.017, y = 269.613, z = -1648.021 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22004, monster_id = 21010201, pos = { x = 1451.464, y = 269.877, z = -1648.248 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22005, monster_id = 21010201, pos = { x = 1460.639, y = 269.891, z = -1653.569 }, rot = { x = 0.000, y = 276.008, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22006, monster_id = 21010201, pos = { x = 1447.197, y = 269.592, z = -1656.146 }, rot = { x = 0.000, y = 65.566, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22007, monster_id = 21010601, pos = { x = 1459.970, y = 269.569, z = -1658.589 }, rot = { x = 0.000, y = 301.332, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22008, monster_id = 21010601, pos = { x = 1445.608, y = 269.556, z = -1652.050 }, rot = { x = 0.000, y = 94.574, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22009, monster_id = 21020201, pos = { x = 1453.558, y = 269.441, z = -1661.548 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 2 },
	{ config_id = 22010, monster_id = 21030301, pos = { x = 1448.870, y = 269.574, z = -1658.142 }, rot = { x = 0.000, y = 47.639, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22011, monster_id = 21020201, pos = { x = 1459.564, y = 269.708, z = -1646.866 }, rot = { x = 0.000, y = 202.349, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 2 },
	{ config_id = 22012, monster_id = 21010201, pos = { x = 1455.182, y = 269.798, z = -1646.350 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22013, monster_id = 21010201, pos = { x = 1457.209, y = 269.759, z = -1646.092 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22014, monster_id = 21010201, pos = { x = 1447.256, y = 269.707, z = -1654.370 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22015, monster_id = 21010603, pos = { x = 1453.648, y = 269.748, z = -1646.246 }, rot = { x = 0.000, y = 171.118, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22016, monster_id = 21010603, pos = { x = 1449.968, y = 269.447, z = -1659.797 }, rot = { x = 0.000, y = 32.783, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22017, monster_id = 21020202, pos = { x = 1457.001, y = 269.419, z = -1660.922 }, rot = { x = 0.000, y = 327.930, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 2 },
	{ config_id = 22018, monster_id = 21030304, pos = { x = 1451.488, y = 269.539, z = -1660.151 }, rot = { x = 0.000, y = 26.269, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22019, monster_id = 21020202, pos = { x = 1450.631, y = 269.321, z = -1644.497 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 2 },
	{ config_id = 22020, monster_id = 21010201, pos = { x = 1459.283, y = 269.728, z = -1657.553 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 22040, monster_id = 21030303, pos = { x = 1460.524, y = 269.870, z = -1650.809 }, rot = { x = 0.000, y = 252.134, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 }
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
	{ config_id = 1022023, name = "ANY_MONSTER_LIVE_22023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_22023", action = "action_EVENT_ANY_MONSTER_LIVE_22023", trigger_count = 0 },
	{ config_id = 1022024, name = "MONSTER_TIDE_DIE_22024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_22024", action = "action_EVENT_MONSTER_TIDE_DIE_22024", trigger_count = 0 },
	{ config_id = 1022025, name = "MONSTER_TIDE_DIE_22025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_22025", action = "action_EVENT_MONSTER_TIDE_DIE_22025", trigger_count = 0 },
	{ config_id = 1022026, name = "MONSTER_TIDE_DIE_22026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_22026", action = "action_EVENT_MONSTER_TIDE_DIE_22026", trigger_count = 0 },
	{ config_id = 1022027, name = "MONSTER_TIDE_DIE_22027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_22027", action = "action_EVENT_MONSTER_TIDE_DIE_22027", trigger_count = 0 },
	{ config_id = 1022028, name = "MONSTER_TIDE_DIE_22028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_22028", action = "action_EVENT_MONSTER_TIDE_DIE_22028", trigger_count = 0 },
	{ config_id = 1022029, name = "MONSTER_TIDE_DIE_22029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_22029", action = "action_EVENT_MONSTER_TIDE_DIE_22029", trigger_count = 0 },
	{ config_id = 1022032, name = "ANY_MONSTER_LIVE_22032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_22032", action = "action_EVENT_ANY_MONSTER_LIVE_22032", trigger_count = 0 },
	{ config_id = 1022033, name = "MONSTER_TIDE_DIE_22033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_22033", action = "action_EVENT_MONSTER_TIDE_DIE_22033", trigger_count = 0 },
	{ config_id = 1022034, name = "MONSTER_TIDE_DIE_22034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_22034", action = "action_EVENT_MONSTER_TIDE_DIE_22034", trigger_count = 0 },
	{ config_id = 1022035, name = "MONSTER_TIDE_DIE_22035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_22035", action = "action_EVENT_MONSTER_TIDE_DIE_22035", trigger_count = 0 },
	{ config_id = 1022036, name = "MONSTER_TIDE_DIE_22036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_22036", action = "action_EVENT_MONSTER_TIDE_DIE_22036", trigger_count = 0 },
	{ config_id = 1022037, name = "MONSTER_TIDE_DIE_22037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_22037", action = "action_EVENT_MONSTER_TIDE_DIE_22037", trigger_count = 0 },
	{ config_id = 1022038, name = "MONSTER_TIDE_DIE_22038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_22038", action = "action_EVENT_MONSTER_TIDE_DIE_22038", trigger_count = 0 }
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
		monsters = { 22002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_22023", "MONSTER_TIDE_DIE_22024", "MONSTER_TIDE_DIE_22025", "MONSTER_TIDE_DIE_22026", "MONSTER_TIDE_DIE_22027", "MONSTER_TIDE_DIE_22028", "MONSTER_TIDE_DIE_22029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 22003, 22004, 22005, 22006, 22007, 22008, 22009, 22010, 22011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 22020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_22032", "MONSTER_TIDE_DIE_22033", "MONSTER_TIDE_DIE_22034", "MONSTER_TIDE_DIE_22035", "MONSTER_TIDE_DIE_22036", "MONSTER_TIDE_DIE_22037", "MONSTER_TIDE_DIE_22038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 22001, 22012, 22013, 22014, 22015, 22016, 22017, 22018, 22019, 22040 },
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
function condition_EVENT_ANY_MONSTER_LIVE_22023(context, evt)
	if 22002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_22023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001022, {22003,22004}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001022, {22005,22006}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001022, {22007,22008}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22024(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001022, {22009,22011}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22025(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001022, {22010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22026(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001022, {22007,22008}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001022, {22003,22004}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001022, {22005,22006}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22029(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001022, {22007,22008}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_22032(context, evt)
	if 22020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_22032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001022, {22001,22012}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001022, {22013,22014}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001022, {22015,22016}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22033(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001022, {22017,22019}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22034(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001022, {22018,22040}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22035(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001022, {22015,22016}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001022, {22001,22012}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001022, {22013,22014}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_22038(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_22038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001022, {22015,22016}, 2, 2, 2) then
		return -1
	end
	
	return 0
end