-- 基础信息
local base_info = {
	group_id = 302001034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 21010101, pos = { x = 2607.050, y = 227.310, z = -1114.188 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 34002, monster_id = 21010101, pos = { x = 2617.108, y = 227.395, z = -1123.882 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 1 },
	{ config_id = 34003, monster_id = 21010101, pos = { x = 2607.050, y = 227.310, z = -1114.188 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 1 },
	{ config_id = 34004, monster_id = 21010101, pos = { x = 2615.137, y = 227.334, z = -1111.472 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 1 },
	{ config_id = 34005, monster_id = 21010201, pos = { x = 2619.689, y = 227.069, z = -1115.618 }, rot = { x = 0.000, y = 229.288, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 1 },
	{ config_id = 34006, monster_id = 21010201, pos = { x = 2607.069, y = 226.183, z = -1122.734 }, rot = { x = 0.000, y = 72.399, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 1 },
	{ config_id = 34007, monster_id = 21010601, pos = { x = 2621.535, y = 227.117, z = -1119.672 }, rot = { x = 0.000, y = 278.916, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 1 },
	{ config_id = 34008, monster_id = 21010601, pos = { x = 2605.166, y = 226.254, z = -1124.023 }, rot = { x = 0.000, y = 33.433, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 10, area_id = 1 },
	{ config_id = 34009, monster_id = 21020201, pos = { x = 2617.627, y = 227.692, z = -1124.832 }, rot = { x = 0.000, y = 325.617, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 30, area_id = 1 },
	{ config_id = 34010, monster_id = 21020201, pos = { x = 2609.314, y = 226.031, z = -1124.763 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 30, area_id = 1 },
	{ config_id = 34011, monster_id = 20011301, pos = { x = 2618.300, y = 227.193, z = -1112.807 }, rot = { x = 0.000, y = 226.231, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 30, area_id = 1 },
	{ config_id = 34012, monster_id = 21010101, pos = { x = 2615.137, y = 227.334, z = -1111.472 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 34013, monster_id = 21010201, pos = { x = 2619.689, y = 227.069, z = -1115.618 }, rot = { x = 0.000, y = 229.288, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 34014, monster_id = 21010201, pos = { x = 2607.069, y = 226.183, z = -1122.734 }, rot = { x = 0.000, y = 72.399, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 34015, monster_id = 21010601, pos = { x = 2621.535, y = 227.117, z = -1119.672 }, rot = { x = 0.000, y = 278.916, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 34016, monster_id = 21010601, pos = { x = 2605.166, y = 226.254, z = -1124.023 }, rot = { x = 0.000, y = 33.433, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 34017, monster_id = 21020201, pos = { x = 2617.627, y = 227.692, z = -1124.832 }, rot = { x = 0.000, y = 325.617, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 34018, monster_id = 21020201, pos = { x = 2609.314, y = 226.031, z = -1124.763 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 34019, monster_id = 20011301, pos = { x = 2618.300, y = 227.193, z = -1112.807 }, rot = { x = 0.000, y = 226.231, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 1 },
	{ config_id = 34020, monster_id = 21010101, pos = { x = 2617.108, y = 227.395, z = -1123.882 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 }
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
	{ config_id = 1034023, name = "ANY_MONSTER_LIVE_34023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_34023", action = "action_EVENT_ANY_MONSTER_LIVE_34023", trigger_count = 0 },
	{ config_id = 1034024, name = "MONSTER_TIDE_DIE_34024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_34024", action = "action_EVENT_MONSTER_TIDE_DIE_34024", trigger_count = 0 },
	{ config_id = 1034025, name = "MONSTER_TIDE_DIE_34025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_34025", action = "action_EVENT_MONSTER_TIDE_DIE_34025", trigger_count = 0 },
	{ config_id = 1034026, name = "MONSTER_TIDE_DIE_34026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_34026", action = "action_EVENT_MONSTER_TIDE_DIE_34026", trigger_count = 0 },
	{ config_id = 1034027, name = "MONSTER_TIDE_DIE_34027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_34027", action = "action_EVENT_MONSTER_TIDE_DIE_34027", trigger_count = 0 },
	{ config_id = 1034028, name = "MONSTER_TIDE_DIE_34028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_34028", action = "action_EVENT_MONSTER_TIDE_DIE_34028", trigger_count = 0 },
	{ config_id = 1034029, name = "MONSTER_TIDE_DIE_34029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_34029", action = "action_EVENT_MONSTER_TIDE_DIE_34029", trigger_count = 0 },
	{ config_id = 1034032, name = "ANY_MONSTER_LIVE_34032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_34032", action = "action_EVENT_ANY_MONSTER_LIVE_34032", trigger_count = 0 },
	{ config_id = 1034033, name = "MONSTER_TIDE_DIE_34033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_34033", action = "action_EVENT_MONSTER_TIDE_DIE_34033", trigger_count = 0 },
	{ config_id = 1034034, name = "MONSTER_TIDE_DIE_34034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_34034", action = "action_EVENT_MONSTER_TIDE_DIE_34034", trigger_count = 0 },
	{ config_id = 1034035, name = "MONSTER_TIDE_DIE_34035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_34035", action = "action_EVENT_MONSTER_TIDE_DIE_34035", trigger_count = 0 },
	{ config_id = 1034036, name = "MONSTER_TIDE_DIE_34036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_34036", action = "action_EVENT_MONSTER_TIDE_DIE_34036", trigger_count = 0 },
	{ config_id = 1034037, name = "MONSTER_TIDE_DIE_34037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_34037", action = "action_EVENT_MONSTER_TIDE_DIE_34037", trigger_count = 0 },
	{ config_id = 1034038, name = "MONSTER_TIDE_DIE_34038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_34038", action = "action_EVENT_MONSTER_TIDE_DIE_34038", trigger_count = 0 }
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
		monsters = { 34002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_34023", "MONSTER_TIDE_DIE_34024", "MONSTER_TIDE_DIE_34025", "MONSTER_TIDE_DIE_34026", "MONSTER_TIDE_DIE_34027", "MONSTER_TIDE_DIE_34028", "MONSTER_TIDE_DIE_34029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 34003, 34004, 34005, 34006, 34007, 34008, 34009, 34010, 34011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 34020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_34032", "MONSTER_TIDE_DIE_34033", "MONSTER_TIDE_DIE_34034", "MONSTER_TIDE_DIE_34035", "MONSTER_TIDE_DIE_34036", "MONSTER_TIDE_DIE_34037", "MONSTER_TIDE_DIE_34038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 34001, 34012, 34013, 34014, 34015, 34016, 34017, 34018, 34019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_34023(context, evt)
	if 34002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_34023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001034, {34003,34004}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001034, {34005,34006}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001034, {34007,34008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34024(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001034, {34009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34025(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001034, {34010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001034, {34011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001034, {34003,34004}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001034, {34005,34006}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001034, {34007,34008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_34032(context, evt)
	if 34020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_34032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001034, {34001,34012}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001034, {34013,34014}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001034, {34015,34016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001034, {34017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34034(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001034, {34018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001034, {34019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001034, {34001,34012}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001034, {34013,34014}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_34038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_34038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001034, {34015,34016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end