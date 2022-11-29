-- 基础信息
local base_info = {
	group_id = 302001023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23001, monster_id = 25030201, pos = { x = 1403.762, y = 283.541, z = -1398.220 }, rot = { x = 0.000, y = 108.999, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23002, monster_id = 25010701, pos = { x = 1412.252, y = 284.876, z = -1403.420 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23003, monster_id = 25030201, pos = { x = 1404.421, y = 283.357, z = -1396.421 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23004, monster_id = 25030301, pos = { x = 1413.852, y = 283.108, z = -1395.225 }, rot = { x = 0.000, y = 224.039, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23005, monster_id = 25010701, pos = { x = 1407.532, y = 284.795, z = -1403.883 }, rot = { x = 0.000, y = 17.305, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23006, monster_id = 25010701, pos = { x = 1404.304, y = 284.006, z = -1400.323 }, rot = { x = 0.000, y = 58.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23009, monster_id = 25030301, pos = { x = 1413.848, y = 284.264, z = -1401.844 }, rot = { x = 0.000, y = 297.969, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23010, monster_id = 25030201, pos = { x = 1405.645, y = 283.093, z = -1394.244 }, rot = { x = 0.000, y = 150.587, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23012, monster_id = 25030301, pos = { x = 1408.261, y = 282.958, z = -1393.034 }, rot = { x = 0.000, y = 179.564, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23013, monster_id = 25010701, pos = { x = 1411.734, y = 283.084, z = -1393.593 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23014, monster_id = 25010701, pos = { x = 1405.547, y = 284.486, z = -1402.469 }, rot = { x = 0.000, y = 46.542, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23015, monster_id = 25030301, pos = { x = 1415.068, y = 283.698, z = -1399.739 }, rot = { x = 0.000, y = 272.713, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23016, monster_id = 25030201, pos = { x = 1409.667, y = 284.859, z = -1403.942 }, rot = { x = 0.000, y = 338.883, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 23020, monster_id = 25010701, pos = { x = 1414.665, y = 283.336, z = -1397.304 }, rot = { x = 0.000, y = 241.487, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 }
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
	{ config_id = 1023023, name = "ANY_MONSTER_LIVE_23023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_23023", action = "action_EVENT_ANY_MONSTER_LIVE_23023", trigger_count = 0 },
	{ config_id = 1023024, name = "MONSTER_TIDE_DIE_23024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_23024", action = "action_EVENT_MONSTER_TIDE_DIE_23024", trigger_count = 0 },
	{ config_id = 1023025, name = "MONSTER_TIDE_DIE_23025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_23025", action = "action_EVENT_MONSTER_TIDE_DIE_23025", trigger_count = 0 },
	{ config_id = 1023026, name = "MONSTER_TIDE_DIE_23026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_23026", action = "action_EVENT_MONSTER_TIDE_DIE_23026", trigger_count = 0 },
	{ config_id = 1023032, name = "ANY_MONSTER_LIVE_23032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_23032", action = "action_EVENT_ANY_MONSTER_LIVE_23032", trigger_count = 0 },
	{ config_id = 1023033, name = "MONSTER_TIDE_DIE_23033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "7", condition = "condition_EVENT_MONSTER_TIDE_DIE_23033", action = "action_EVENT_MONSTER_TIDE_DIE_23033", trigger_count = 0 },
	{ config_id = 1023034, name = "MONSTER_TIDE_DIE_23034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "8", condition = "condition_EVENT_MONSTER_TIDE_DIE_23034", action = "action_EVENT_MONSTER_TIDE_DIE_23034", trigger_count = 0 },
	{ config_id = 1023035, name = "MONSTER_TIDE_DIE_23035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "9", condition = "condition_EVENT_MONSTER_TIDE_DIE_23035", action = "action_EVENT_MONSTER_TIDE_DIE_23035", trigger_count = 0 }
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
		monsters = { 23002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_23023", "MONSTER_TIDE_DIE_23024", "MONSTER_TIDE_DIE_23025", "MONSTER_TIDE_DIE_23026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 23003, 23004, 23005, 23006, 23009, 23010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 23020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_23032", "MONSTER_TIDE_DIE_23033", "MONSTER_TIDE_DIE_23034", "MONSTER_TIDE_DIE_23035" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 23001, 23012, 23013, 23014, 23015, 23016 },
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
function condition_EVENT_ANY_MONSTER_LIVE_23023(context, evt)
	if 23002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_23023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001023, {23003,23004}, 3, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_23024(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_23024(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001023, {23005,23009,23003}, 3, 1, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_23025(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_23025(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001023, {23010,23009,23005}, 3, 3, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_23026(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_23026(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001023, {23003,23004,23005}, 3, 3, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_23032(context, evt)
	if 23020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_23032(context, evt)
	-- 创建编号为7（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 7, 302001023, {23001,23012}, 3, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_23033(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_23033(context, evt)
	-- 创建编号为8（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 8, 302001023, {23013,23015,23001}, 3, 1, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_23034(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_23034(context, evt)
	-- 创建编号为9（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 9, 302001023, {23001,23012,23014}, 3, 3, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_23035(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_23035(context, evt)
	-- 创建编号为7（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 7, 302001023, {23001,23012,23013}, 3, 3, 3) then
		return -1
	end
	
	return 0
end