-- 基础信息
local base_info = {
	group_id = 302001053
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53001, monster_id = 21010201, pos = { x = 1903.822, y = 247.011, z = -448.302 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53002, monster_id = 21010201, pos = { x = 1922.612, y = 249.536, z = -459.054 }, rot = { x = 0.000, y = 293.861, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53003, monster_id = 21010201, pos = { x = 1903.822, y = 247.011, z = -448.302 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53004, monster_id = 21010201, pos = { x = 1914.919, y = 247.654, z = -443.710 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53005, monster_id = 20010801, pos = { x = 1923.350, y = 249.381, z = -447.925 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53006, monster_id = 20010801, pos = { x = 1905.075, y = 247.538, z = -459.036 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53007, monster_id = 21030301, pos = { x = 1920.087, y = 248.345, z = -444.207 }, rot = { x = 0.000, y = 220.561, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 3 },
	{ config_id = 53008, monster_id = 21011001, pos = { x = 1906.414, y = 247.776, z = -461.708 }, rot = { x = 0.000, y = 32.375, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53009, monster_id = 21010301, pos = { x = 1903.004, y = 247.168, z = -454.746 }, rot = { x = 0.000, y = 82.781, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53010, monster_id = 21010301, pos = { x = 1910.616, y = 249.299, z = -464.584 }, rot = { x = 0.000, y = 27.529, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53011, monster_id = 20010901, pos = { x = 1908.567, y = 247.246, z = -444.823 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 3 },
	{ config_id = 53012, monster_id = 21010201, pos = { x = 1914.919, y = 247.654, z = -443.710 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53013, monster_id = 20010801, pos = { x = 1923.350, y = 249.381, z = -447.925 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53014, monster_id = 20010801, pos = { x = 1905.075, y = 247.538, z = -459.036 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53015, monster_id = 21030301, pos = { x = 1920.087, y = 248.345, z = -444.207 }, rot = { x = 0.000, y = 220.561, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 3 },
	{ config_id = 53016, monster_id = 21011001, pos = { x = 1906.414, y = 247.776, z = -461.708 }, rot = { x = 0.000, y = 32.375, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53017, monster_id = 21010301, pos = { x = 1903.004, y = 247.168, z = -454.746 }, rot = { x = 0.000, y = 82.781, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53018, monster_id = 21010301, pos = { x = 1910.616, y = 249.299, z = -464.584 }, rot = { x = 0.000, y = 27.529, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 53019, monster_id = 20010901, pos = { x = 1908.567, y = 247.246, z = -444.823 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 3 },
	{ config_id = 53020, monster_id = 21010201, pos = { x = 1922.612, y = 249.536, z = -459.054 }, rot = { x = 0.000, y = 293.861, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 }
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
	{ config_id = 1053023, name = "ANY_MONSTER_LIVE_53023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_53023", action = "action_EVENT_ANY_MONSTER_LIVE_53023", trigger_count = 0 },
	{ config_id = 1053024, name = "MONSTER_TIDE_DIE_53024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_53024", action = "action_EVENT_MONSTER_TIDE_DIE_53024", trigger_count = 0 },
	{ config_id = 1053025, name = "MONSTER_TIDE_DIE_53025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_53025", action = "action_EVENT_MONSTER_TIDE_DIE_53025", trigger_count = 0 },
	{ config_id = 1053026, name = "MONSTER_TIDE_DIE_53026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_53026", action = "action_EVENT_MONSTER_TIDE_DIE_53026", trigger_count = 0 },
	{ config_id = 1053027, name = "MONSTER_TIDE_DIE_53027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_53027", action = "action_EVENT_MONSTER_TIDE_DIE_53027", trigger_count = 0 },
	{ config_id = 1053028, name = "MONSTER_TIDE_DIE_53028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_53028", action = "action_EVENT_MONSTER_TIDE_DIE_53028", trigger_count = 0 },
	{ config_id = 1053029, name = "MONSTER_TIDE_DIE_53029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_53029", action = "action_EVENT_MONSTER_TIDE_DIE_53029", trigger_count = 0 },
	{ config_id = 1053032, name = "ANY_MONSTER_LIVE_53032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_53032", action = "action_EVENT_ANY_MONSTER_LIVE_53032", trigger_count = 0 },
	{ config_id = 1053033, name = "MONSTER_TIDE_DIE_53033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_53033", action = "action_EVENT_MONSTER_TIDE_DIE_53033", trigger_count = 0 },
	{ config_id = 1053034, name = "MONSTER_TIDE_DIE_53034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_53034", action = "action_EVENT_MONSTER_TIDE_DIE_53034", trigger_count = 0 },
	{ config_id = 1053035, name = "MONSTER_TIDE_DIE_53035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_53035", action = "action_EVENT_MONSTER_TIDE_DIE_53035", trigger_count = 0 },
	{ config_id = 1053036, name = "MONSTER_TIDE_DIE_53036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_53036", action = "action_EVENT_MONSTER_TIDE_DIE_53036", trigger_count = 0 },
	{ config_id = 1053037, name = "MONSTER_TIDE_DIE_53037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_53037", action = "action_EVENT_MONSTER_TIDE_DIE_53037", trigger_count = 0 },
	{ config_id = 1053038, name = "MONSTER_TIDE_DIE_53038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_53038", action = "action_EVENT_MONSTER_TIDE_DIE_53038", trigger_count = 0 }
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
		monsters = { 53002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_53023", "MONSTER_TIDE_DIE_53024", "MONSTER_TIDE_DIE_53025", "MONSTER_TIDE_DIE_53026", "MONSTER_TIDE_DIE_53027", "MONSTER_TIDE_DIE_53028", "MONSTER_TIDE_DIE_53029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 53003, 53004, 53005, 53006, 53007, 53008, 53009, 53010, 53011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 53020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_53032", "MONSTER_TIDE_DIE_53033", "MONSTER_TIDE_DIE_53034", "MONSTER_TIDE_DIE_53035", "MONSTER_TIDE_DIE_53036", "MONSTER_TIDE_DIE_53037", "MONSTER_TIDE_DIE_53038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 53001, 53012, 53013, 53014, 53015, 53016, 53017, 53018, 53019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_53023(context, evt)
	if 53002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_53023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001053, {53003,53004}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001053, {53005,53006}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001053, {53007,53008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53024(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001053, {53009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53025(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001053, {53010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001053, {53011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001053, {53003,53004}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001053, {53005,53006}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001053, {53007,53008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_53032(context, evt)
	if 53020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_53032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001053, {53001,53012}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001053, {53013,53014}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001053, {53015,53016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001053, {53017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53034(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001053, {53018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001053, {53019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001053, {53001,53012}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001053, {53013,53014}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_53038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_53038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001053, {53015,53016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end