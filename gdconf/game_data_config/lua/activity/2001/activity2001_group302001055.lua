-- 基础信息
local base_info = {
	group_id = 302001055
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 55001, monster_id = 20010801, pos = { x = 1790.991, y = 243.441, z = -716.074 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55002, monster_id = 20010801, pos = { x = 1801.325, y = 243.099, z = -725.655 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55003, monster_id = 20010801, pos = { x = 1790.991, y = 243.441, z = -716.074 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55004, monster_id = 20010801, pos = { x = 1799.664, y = 245.249, z = -711.795 }, rot = { x = 0.000, y = 190.200, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55005, monster_id = 20010801, pos = { x = 1804.568, y = 244.719, z = -715.855 }, rot = { x = 0.000, y = 259.984, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55006, monster_id = 20010801, pos = { x = 1791.026, y = 242.832, z = -722.114 }, rot = { x = 0.000, y = 48.758, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55007, monster_id = 21010901, pos = { x = 1806.060, y = 243.682, z = -725.900 }, rot = { x = 0.000, y = 307.280, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55008, monster_id = 21011001, pos = { x = 1807.577, y = 244.832, z = -715.378 }, rot = { x = 0.000, y = 248.083, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55009, monster_id = 20010901, pos = { x = 1797.932, y = 242.551, z = -727.052 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 55010, monster_id = 20010901, pos = { x = 1792.881, y = 242.488, z = -725.532 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 55011, monster_id = 22010201, pos = { x = 1794.848, y = 244.341, z = -712.693 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 55012, monster_id = 20010801, pos = { x = 1799.664, y = 245.249, z = -711.795 }, rot = { x = 0.000, y = 190.200, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55013, monster_id = 20010801, pos = { x = 1804.568, y = 244.719, z = -715.855 }, rot = { x = 0.000, y = 259.984, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55014, monster_id = 20010801, pos = { x = 1791.026, y = 242.832, z = -722.114 }, rot = { x = 0.000, y = 48.758, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55015, monster_id = 21010901, pos = { x = 1806.060, y = 243.682, z = -725.900 }, rot = { x = 0.000, y = 307.280, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55016, monster_id = 21011001, pos = { x = 1807.577, y = 244.832, z = -715.378 }, rot = { x = 0.000, y = 248.083, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 55017, monster_id = 20010901, pos = { x = 1797.932, y = 242.551, z = -727.052 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 55018, monster_id = 20010901, pos = { x = 1792.881, y = 242.488, z = -725.532 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 55019, monster_id = 22010201, pos = { x = 1794.848, y = 244.341, z = -712.693 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 55020, monster_id = 20010801, pos = { x = 1801.325, y = 243.099, z = -725.655 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 }
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
	{ config_id = 1055023, name = "ANY_MONSTER_LIVE_55023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_55023", action = "action_EVENT_ANY_MONSTER_LIVE_55023", trigger_count = 0 },
	{ config_id = 1055024, name = "MONSTER_TIDE_DIE_55024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_55024", action = "action_EVENT_MONSTER_TIDE_DIE_55024", trigger_count = 0 },
	{ config_id = 1055025, name = "MONSTER_TIDE_DIE_55025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_55025", action = "action_EVENT_MONSTER_TIDE_DIE_55025", trigger_count = 0 },
	{ config_id = 1055026, name = "MONSTER_TIDE_DIE_55026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_55026", action = "action_EVENT_MONSTER_TIDE_DIE_55026", trigger_count = 0 },
	{ config_id = 1055027, name = "MONSTER_TIDE_DIE_55027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_55027", action = "action_EVENT_MONSTER_TIDE_DIE_55027", trigger_count = 0 },
	{ config_id = 1055028, name = "MONSTER_TIDE_DIE_55028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_55028", action = "action_EVENT_MONSTER_TIDE_DIE_55028", trigger_count = 0 },
	{ config_id = 1055029, name = "MONSTER_TIDE_DIE_55029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_55029", action = "action_EVENT_MONSTER_TIDE_DIE_55029", trigger_count = 0 },
	{ config_id = 1055032, name = "ANY_MONSTER_LIVE_55032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_55032", action = "action_EVENT_ANY_MONSTER_LIVE_55032", trigger_count = 0 },
	{ config_id = 1055033, name = "MONSTER_TIDE_DIE_55033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_55033", action = "action_EVENT_MONSTER_TIDE_DIE_55033", trigger_count = 0 },
	{ config_id = 1055034, name = "MONSTER_TIDE_DIE_55034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_55034", action = "action_EVENT_MONSTER_TIDE_DIE_55034", trigger_count = 0 },
	{ config_id = 1055035, name = "MONSTER_TIDE_DIE_55035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_55035", action = "action_EVENT_MONSTER_TIDE_DIE_55035", trigger_count = 0 },
	{ config_id = 1055036, name = "MONSTER_TIDE_DIE_55036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_55036", action = "action_EVENT_MONSTER_TIDE_DIE_55036", trigger_count = 0 },
	{ config_id = 1055037, name = "MONSTER_TIDE_DIE_55037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_55037", action = "action_EVENT_MONSTER_TIDE_DIE_55037", trigger_count = 0 },
	{ config_id = 1055038, name = "MONSTER_TIDE_DIE_55038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_55038", action = "action_EVENT_MONSTER_TIDE_DIE_55038", trigger_count = 0 }
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
		monsters = { 55002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_55023", "MONSTER_TIDE_DIE_55024", "MONSTER_TIDE_DIE_55025", "MONSTER_TIDE_DIE_55026", "MONSTER_TIDE_DIE_55027", "MONSTER_TIDE_DIE_55028", "MONSTER_TIDE_DIE_55029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 55003, 55004, 55005, 55006, 55007, 55008, 55009, 55010, 55011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 55020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_55032", "MONSTER_TIDE_DIE_55033", "MONSTER_TIDE_DIE_55034", "MONSTER_TIDE_DIE_55035", "MONSTER_TIDE_DIE_55036", "MONSTER_TIDE_DIE_55037", "MONSTER_TIDE_DIE_55038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 55001, 55012, 55013, 55014, 55015, 55016, 55017, 55018, 55019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_55023(context, evt)
	if 55002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_55023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001055, {55003,55004}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001055, {55005,55006}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001055, {55007,55008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55024(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001055, {55009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55025(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001055, {55010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001055, {55011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001055, {55003,55004}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001055, {55005,55006}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001055, {55007,55008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_55032(context, evt)
	if 55020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_55032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001055, {55001,55012}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001055, {55013,55014}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001055, {55015,55016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001055, {55017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55034(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001055, {55018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001055, {55019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001055, {55001,55012}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001055, {55013,55014}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_55038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_55038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001055, {55015,55016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end