-- 基础信息
local base_info = {
	group_id = 302001024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24001, monster_id = 25010701, pos = { x = -262.973, y = 201.059, z = -881.499 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4109, 4108 }, kill_score = 50, area_id = 7 },
	{ config_id = 24002, monster_id = 25010201, pos = { x = -256.115, y = 201.008, z = -881.505 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 24003, monster_id = 25010701, pos = { x = -262.973, y = 201.059, z = -881.499 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 24004, monster_id = 25010701, pos = { x = -259.000, y = 200.662, z = -866.407 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 24005, monster_id = 25060101, pos = { x = -256.080, y = 200.397, z = -866.704 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 24006, monster_id = 25060101, pos = { x = -268.971, y = 200.824, z = -877.143 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 24007, monster_id = 25010301, pos = { x = -250.782, y = 200.572, z = -876.248 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 24008, monster_id = 25010501, pos = { x = -253.702, y = 200.821, z = -879.626 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 24009, monster_id = 25030301, pos = { x = -258.999, y = 201.047, z = -882.620 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 24010, monster_id = 25070101, pos = { x = -258.300, y = 200.996, z = -879.758 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 24011, monster_id = 25030201, pos = { x = -267.531, y = 200.656, z = -871.856 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 7 },
	{ config_id = 24012, monster_id = 25010701, pos = { x = -259.000, y = 200.662, z = -866.407 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4109, 4108 }, kill_score = 50, area_id = 7 },
	{ config_id = 24013, monster_id = 25060101, pos = { x = -256.080, y = 200.397, z = -866.704 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4109, 4108 }, kill_score = 50, area_id = 7 },
	{ config_id = 24014, monster_id = 25060101, pos = { x = -268.971, y = 200.824, z = -877.143 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4109, 4108 }, kill_score = 50, area_id = 7 },
	{ config_id = 24015, monster_id = 25010301, pos = { x = -250.782, y = 200.572, z = -876.248 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4109, 4108 }, kill_score = 20, area_id = 7 },
	{ config_id = 24016, monster_id = 25010501, pos = { x = -253.702, y = 200.821, z = -879.626 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4109, 4108 }, kill_score = 20, area_id = 7 },
	{ config_id = 24017, monster_id = 25030301, pos = { x = -258.999, y = 201.047, z = -882.620 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4109, 4108 }, kill_score = 50, area_id = 7 },
	{ config_id = 24018, monster_id = 25070101, pos = { x = -258.300, y = 200.996, z = -879.758 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4109, 4108 }, kill_score = 50, area_id = 7 },
	{ config_id = 24019, monster_id = 25030201, pos = { x = -267.531, y = 200.656, z = -871.856 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4109, 4108 }, kill_score = 50, area_id = 7 },
	{ config_id = 24020, monster_id = 25010201, pos = { x = -256.115, y = 201.008, z = -881.505 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 24040, monster_id = 25030301, pos = { x = -252.543, y = 200.167, z = -870.117 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4109, 4108 }, kill_score = 50, area_id = 7 }
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
	{ config_id = 1024023, name = "ANY_MONSTER_LIVE_24023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_24023", action = "action_EVENT_ANY_MONSTER_LIVE_24023", trigger_count = 0 },
	{ config_id = 1024024, name = "MONSTER_TIDE_DIE_24024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_24024", action = "action_EVENT_MONSTER_TIDE_DIE_24024", trigger_count = 0 },
	{ config_id = 1024025, name = "MONSTER_TIDE_DIE_24025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_24025", action = "action_EVENT_MONSTER_TIDE_DIE_24025", trigger_count = 0 },
	{ config_id = 1024026, name = "MONSTER_TIDE_DIE_24026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_24026", action = "action_EVENT_MONSTER_TIDE_DIE_24026", trigger_count = 0 },
	{ config_id = 1024027, name = "MONSTER_TIDE_DIE_24027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_24027", action = "action_EVENT_MONSTER_TIDE_DIE_24027", trigger_count = 0 },
	{ config_id = 1024028, name = "MONSTER_TIDE_DIE_24028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_24028", action = "action_EVENT_MONSTER_TIDE_DIE_24028", trigger_count = 0 },
	{ config_id = 1024029, name = "MONSTER_TIDE_DIE_24029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_24029", action = "action_EVENT_MONSTER_TIDE_DIE_24029", trigger_count = 0 },
	{ config_id = 1024032, name = "ANY_MONSTER_LIVE_24032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_24032", action = "action_EVENT_ANY_MONSTER_LIVE_24032", trigger_count = 0 },
	{ config_id = 1024033, name = "MONSTER_TIDE_DIE_24033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_24033", action = "action_EVENT_MONSTER_TIDE_DIE_24033", trigger_count = 0 },
	{ config_id = 1024034, name = "MONSTER_TIDE_DIE_24034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_24034", action = "action_EVENT_MONSTER_TIDE_DIE_24034", trigger_count = 0 },
	{ config_id = 1024035, name = "MONSTER_TIDE_DIE_24035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_24035", action = "action_EVENT_MONSTER_TIDE_DIE_24035", trigger_count = 0 },
	{ config_id = 1024036, name = "MONSTER_TIDE_DIE_24036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_24036", action = "action_EVENT_MONSTER_TIDE_DIE_24036", trigger_count = 0 },
	{ config_id = 1024037, name = "MONSTER_TIDE_DIE_24037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_24037", action = "action_EVENT_MONSTER_TIDE_DIE_24037", trigger_count = 0 },
	{ config_id = 1024038, name = "MONSTER_TIDE_DIE_24038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_24038", action = "action_EVENT_MONSTER_TIDE_DIE_24038", trigger_count = 0 }
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
		monsters = { 24002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_24023", "MONSTER_TIDE_DIE_24024", "MONSTER_TIDE_DIE_24025", "MONSTER_TIDE_DIE_24026", "MONSTER_TIDE_DIE_24027", "MONSTER_TIDE_DIE_24028", "MONSTER_TIDE_DIE_24029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 24003, 24004, 24005, 24006, 24007, 24008, 24009, 24010, 24011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 24020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_24032", "MONSTER_TIDE_DIE_24033", "MONSTER_TIDE_DIE_24034", "MONSTER_TIDE_DIE_24035", "MONSTER_TIDE_DIE_24036", "MONSTER_TIDE_DIE_24037", "MONSTER_TIDE_DIE_24038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 24001, 24012, 24013, 24014, 24015, 24016, 24017, 24018, 24019, 24040 },
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
function condition_EVENT_ANY_MONSTER_LIVE_24023(context, evt)
	if 24002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_24023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001024, {24003,24004}, 4, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001024, {24005,24006}, 3, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001024, {24007,24008}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24024(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001024, {24009}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24025(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001024, {24010}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24026(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001024, {24011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24027(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001024, {24003,24004}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24028(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001024, {24005,24006}, 3, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001024, {24007,24008}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_24032(context, evt)
	if 24020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_24032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001024, {24001,24012}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001024, {24013,24014}, 3, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001024, {24015,24016}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001024, {24017,24040}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24034(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001024, {24018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24035(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001024, {24019}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001024, {24001,24012}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001024, {24013,24014}, 3, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_24038(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_24038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001024, {24015,24016}, 4, 2, 2) then
		return -1
	end
	
	return 0
end