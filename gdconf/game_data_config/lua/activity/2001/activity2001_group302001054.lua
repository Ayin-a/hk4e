-- 基础信息
local base_info = {
	group_id = 302001054
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 54001, monster_id = 25010201, pos = { x = 1963.596, y = 222.802, z = -709.056 }, rot = { x = 0.000, y = 342.937, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54002, monster_id = 25010201, pos = { x = 1967.552, y = 221.903, z = -707.869 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54003, monster_id = 25010201, pos = { x = 1963.596, y = 222.802, z = -709.056 }, rot = { x = 0.000, y = 342.937, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54004, monster_id = 25010201, pos = { x = 1969.516, y = 221.619, z = -705.000 }, rot = { x = 0.000, y = 301.138, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54005, monster_id = 25060101, pos = { x = 1968.375, y = 221.694, z = -699.285 }, rot = { x = 0.000, y = 232.604, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54006, monster_id = 25060101, pos = { x = 1969.589, y = 221.840, z = -701.678 }, rot = { x = 0.000, y = 253.463, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54007, monster_id = 25070101, pos = { x = 1958.369, y = 222.917, z = -701.576 }, rot = { x = 0.000, y = 93.488, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54008, monster_id = 25070101, pos = { x = 1961.553, y = 221.839, z = -697.631 }, rot = { x = 0.000, y = 134.428, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54009, monster_id = 25010701, pos = { x = 1959.632, y = 223.273, z = -707.128 }, rot = { x = 0.000, y = 30.815, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 54010, monster_id = 25010701, pos = { x = 1965.783, y = 221.662, z = -696.505 }, rot = { x = 0.000, y = 163.431, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 54011, monster_id = 25030201, pos = { x = 1971.233, y = 222.126, z = -702.095 }, rot = { x = 0.000, y = 245.552, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 54012, monster_id = 25010201, pos = { x = 1969.516, y = 221.619, z = -705.000 }, rot = { x = 0.000, y = 301.138, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54013, monster_id = 25060101, pos = { x = 1968.375, y = 221.694, z = -699.285 }, rot = { x = 0.000, y = 232.604, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54014, monster_id = 25060101, pos = { x = 1969.589, y = 221.840, z = -701.678 }, rot = { x = 0.000, y = 253.463, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54015, monster_id = 25070101, pos = { x = 1958.369, y = 222.917, z = -701.576 }, rot = { x = 0.000, y = 93.488, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54016, monster_id = 25070101, pos = { x = 1961.553, y = 221.839, z = -697.631 }, rot = { x = 0.000, y = 134.428, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 54017, monster_id = 25010701, pos = { x = 1959.632, y = 223.273, z = -707.128 }, rot = { x = 0.000, y = 30.815, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 54018, monster_id = 25010701, pos = { x = 1965.783, y = 221.662, z = -696.505 }, rot = { x = 0.000, y = 163.431, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 54019, monster_id = 25030201, pos = { x = 1971.233, y = 222.126, z = -702.095 }, rot = { x = 0.000, y = 245.552, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 54020, monster_id = 25010201, pos = { x = 1967.552, y = 221.903, z = -707.869 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 }
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
	{ config_id = 1054023, name = "ANY_MONSTER_LIVE_54023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_54023", action = "action_EVENT_ANY_MONSTER_LIVE_54023", trigger_count = 0 },
	{ config_id = 1054024, name = "MONSTER_TIDE_DIE_54024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_54024", action = "action_EVENT_MONSTER_TIDE_DIE_54024", trigger_count = 0 },
	{ config_id = 1054025, name = "MONSTER_TIDE_DIE_54025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_54025", action = "action_EVENT_MONSTER_TIDE_DIE_54025", trigger_count = 0 },
	{ config_id = 1054026, name = "MONSTER_TIDE_DIE_54026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_54026", action = "action_EVENT_MONSTER_TIDE_DIE_54026", trigger_count = 0 },
	{ config_id = 1054027, name = "MONSTER_TIDE_DIE_54027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_54027", action = "action_EVENT_MONSTER_TIDE_DIE_54027", trigger_count = 0 },
	{ config_id = 1054028, name = "MONSTER_TIDE_DIE_54028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_54028", action = "action_EVENT_MONSTER_TIDE_DIE_54028", trigger_count = 0 },
	{ config_id = 1054029, name = "MONSTER_TIDE_DIE_54029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_54029", action = "action_EVENT_MONSTER_TIDE_DIE_54029", trigger_count = 0 },
	{ config_id = 1054032, name = "ANY_MONSTER_LIVE_54032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_54032", action = "action_EVENT_ANY_MONSTER_LIVE_54032", trigger_count = 0 },
	{ config_id = 1054033, name = "MONSTER_TIDE_DIE_54033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_54033", action = "action_EVENT_MONSTER_TIDE_DIE_54033", trigger_count = 0 },
	{ config_id = 1054034, name = "MONSTER_TIDE_DIE_54034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_54034", action = "action_EVENT_MONSTER_TIDE_DIE_54034", trigger_count = 0 },
	{ config_id = 1054035, name = "MONSTER_TIDE_DIE_54035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_54035", action = "action_EVENT_MONSTER_TIDE_DIE_54035", trigger_count = 0 },
	{ config_id = 1054036, name = "MONSTER_TIDE_DIE_54036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_54036", action = "action_EVENT_MONSTER_TIDE_DIE_54036", trigger_count = 0 },
	{ config_id = 1054037, name = "MONSTER_TIDE_DIE_54037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_54037", action = "action_EVENT_MONSTER_TIDE_DIE_54037", trigger_count = 0 },
	{ config_id = 1054038, name = "MONSTER_TIDE_DIE_54038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_54038", action = "action_EVENT_MONSTER_TIDE_DIE_54038", trigger_count = 0 }
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
		monsters = { 54002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_54023", "MONSTER_TIDE_DIE_54024", "MONSTER_TIDE_DIE_54025", "MONSTER_TIDE_DIE_54026", "MONSTER_TIDE_DIE_54027", "MONSTER_TIDE_DIE_54028", "MONSTER_TIDE_DIE_54029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 54003, 54004, 54005, 54006, 54007, 54008, 54009, 54010, 54011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 54020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_54032", "MONSTER_TIDE_DIE_54033", "MONSTER_TIDE_DIE_54034", "MONSTER_TIDE_DIE_54035", "MONSTER_TIDE_DIE_54036", "MONSTER_TIDE_DIE_54037", "MONSTER_TIDE_DIE_54038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 54001, 54012, 54013, 54014, 54015, 54016, 54017, 54018, 54019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_54023(context, evt)
	if 54002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_54023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001054, {54003,54004}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001054, {54005,54006}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001054, {54007,54008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54024(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001054, {54009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54025(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001054, {54010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001054, {54011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001054, {54003,54004}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001054, {54005,54006}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001054, {54007,54008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_54032(context, evt)
	if 54020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_54032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001054, {54001,54012}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001054, {54013,54014}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 133005001, {54015,54016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001054, {54017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54034(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001054, {54018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001054, {54019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001054, {54001,54012}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001054, {54013,54014}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_54038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_54038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001054, {54015,54016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end