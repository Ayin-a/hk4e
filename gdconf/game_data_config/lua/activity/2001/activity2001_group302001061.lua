-- 基础信息
local base_info = {
	group_id = 302001061
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61001, monster_id = 20010501, pos = { x = 2500.942, y = 247.007, z = -388.146 }, rot = { x = 341.808, y = 162.920, z = 356.028 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61002, monster_id = 20010501, pos = { x = 2510.848, y = 248.131, z = -398.504 }, rot = { x = 18.412, y = 321.803, z = 357.272 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61003, monster_id = 20010501, pos = { x = 2500.942, y = 247.007, z = -388.146 }, rot = { x = 341.808, y = 162.920, z = 356.028 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61004, monster_id = 20010501, pos = { x = 2506.540, y = 247.576, z = -384.617 }, rot = { x = 342.874, y = 174.141, z = 352.614 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61005, monster_id = 20010501, pos = { x = 2510.013, y = 247.850, z = -385.787 }, rot = { x = 348.648, y = 203.773, z = 345.160 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61006, monster_id = 20010501, pos = { x = 2499.539, y = 246.855, z = -392.658 }, rot = { x = 353.818, y = 79.151, z = 17.584 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61007, monster_id = 21010601, pos = { x = 2514.324, y = 248.491, z = -390.958 }, rot = { x = 3.759, y = 251.636, z = 341.764 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61008, monster_id = 21010601, pos = { x = 2502.802, y = 247.304, z = -397.920 }, rot = { x = 8.414, y = 34.318, z = 16.656 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61009, monster_id = 20010601, pos = { x = 2507.394, y = 247.823, z = -399.924 }, rot = { x = 16.233, y = 0.520, z = 9.218 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 30, area_id = 4 },
	{ config_id = 61010, monster_id = 20010601, pos = { x = 2500.778, y = 247.048, z = -395.671 }, rot = { x = 358.244, y = 65.607, z = 18.526 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 30, area_id = 4 },
	{ config_id = 61011, monster_id = 20010701, pos = { x = 2503.212, y = 247.268, z = -386.270 }, rot = { x = 341.395, y = 151.067, z = 359.781 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 4 },
	{ config_id = 61012, monster_id = 20010501, pos = { x = 2506.540, y = 247.576, z = -384.617 }, rot = { x = 342.874, y = 174.141, z = 352.614 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61013, monster_id = 20010501, pos = { x = 2510.013, y = 247.850, z = -385.787 }, rot = { x = 348.648, y = 203.773, z = 345.160 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61014, monster_id = 20010501, pos = { x = 2499.539, y = 246.855, z = -392.658 }, rot = { x = 353.818, y = 79.151, z = 17.584 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61015, monster_id = 21010601, pos = { x = 2514.324, y = 248.491, z = -390.958 }, rot = { x = 3.759, y = 251.636, z = 341.764 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61016, monster_id = 21010601, pos = { x = 2502.802, y = 247.304, z = -397.920 }, rot = { x = 8.414, y = 34.318, z = 16.656 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 },
	{ config_id = 61017, monster_id = 20010601, pos = { x = 2507.394, y = 247.823, z = -399.924 }, rot = { x = 16.233, y = 0.520, z = 9.218 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 30, area_id = 4 },
	{ config_id = 61018, monster_id = 20010601, pos = { x = 2500.778, y = 247.048, z = -395.671 }, rot = { x = 358.244, y = 65.607, z = 18.526 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 30, area_id = 4 },
	{ config_id = 61019, monster_id = 20010701, pos = { x = 2503.212, y = 247.268, z = -386.270 }, rot = { x = 341.395, y = 151.067, z = 359.781 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 4 },
	{ config_id = 61020, monster_id = 20010501, pos = { x = 2510.848, y = 248.131, z = -398.504 }, rot = { x = 18.412, y = 321.803, z = 357.272 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 4 }
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
	{ config_id = 1061023, name = "ANY_MONSTER_LIVE_61023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_61023", action = "action_EVENT_ANY_MONSTER_LIVE_61023", trigger_count = 0 },
	{ config_id = 1061024, name = "MONSTER_TIDE_DIE_61024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_61024", action = "action_EVENT_MONSTER_TIDE_DIE_61024", trigger_count = 0 },
	{ config_id = 1061025, name = "MONSTER_TIDE_DIE_61025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_61025", action = "action_EVENT_MONSTER_TIDE_DIE_61025", trigger_count = 0 },
	{ config_id = 1061026, name = "MONSTER_TIDE_DIE_61026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_61026", action = "action_EVENT_MONSTER_TIDE_DIE_61026", trigger_count = 0 },
	{ config_id = 1061027, name = "MONSTER_TIDE_DIE_61027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_61027", action = "action_EVENT_MONSTER_TIDE_DIE_61027", trigger_count = 0 },
	{ config_id = 1061028, name = "MONSTER_TIDE_DIE_61028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_61028", action = "action_EVENT_MONSTER_TIDE_DIE_61028", trigger_count = 0 },
	{ config_id = 1061029, name = "MONSTER_TIDE_DIE_61029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_61029", action = "action_EVENT_MONSTER_TIDE_DIE_61029", trigger_count = 0 },
	{ config_id = 1061032, name = "ANY_MONSTER_LIVE_61032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_61032", action = "action_EVENT_ANY_MONSTER_LIVE_61032", trigger_count = 0 },
	{ config_id = 1061033, name = "MONSTER_TIDE_DIE_61033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_61033", action = "action_EVENT_MONSTER_TIDE_DIE_61033", trigger_count = 0 },
	{ config_id = 1061034, name = "MONSTER_TIDE_DIE_61034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_61034", action = "action_EVENT_MONSTER_TIDE_DIE_61034", trigger_count = 0 },
	{ config_id = 1061035, name = "MONSTER_TIDE_DIE_61035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_61035", action = "action_EVENT_MONSTER_TIDE_DIE_61035", trigger_count = 0 },
	{ config_id = 1061036, name = "MONSTER_TIDE_DIE_61036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_61036", action = "action_EVENT_MONSTER_TIDE_DIE_61036", trigger_count = 0 },
	{ config_id = 1061037, name = "MONSTER_TIDE_DIE_61037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_61037", action = "action_EVENT_MONSTER_TIDE_DIE_61037", trigger_count = 0 },
	{ config_id = 1061038, name = "MONSTER_TIDE_DIE_61038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_61038", action = "action_EVENT_MONSTER_TIDE_DIE_61038", trigger_count = 0 }
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
		monsters = { 61002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_61023", "MONSTER_TIDE_DIE_61024", "MONSTER_TIDE_DIE_61025", "MONSTER_TIDE_DIE_61026", "MONSTER_TIDE_DIE_61027", "MONSTER_TIDE_DIE_61028", "MONSTER_TIDE_DIE_61029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 61003, 61004, 61005, 61006, 61007, 61008, 61009, 61010, 61011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 61020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_61032", "MONSTER_TIDE_DIE_61033", "MONSTER_TIDE_DIE_61034", "MONSTER_TIDE_DIE_61035", "MONSTER_TIDE_DIE_61036", "MONSTER_TIDE_DIE_61037", "MONSTER_TIDE_DIE_61038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 61001, 61012, 61013, 61014, 61015, 61016, 61017, 61018, 61019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_61023(context, evt)
	if 61002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_61023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001061, {61003,61004}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001061, {61005,61006}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001061, {61007,61008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61024(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001061, {61009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61025(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001061, {61010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001061, {61011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001061, {61003,61004}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001061, {61005,61006}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001061, {61007,61008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_61032(context, evt)
	if 61020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_61032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001061, {61001,61012}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001061, {61013,61014}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001061, {61015,61016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001061, {61017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61034(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001061, {61018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001061, {61019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001061, {61001,61012}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001061, {61013,61014}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_61038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_61038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001061, {61015,61016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end