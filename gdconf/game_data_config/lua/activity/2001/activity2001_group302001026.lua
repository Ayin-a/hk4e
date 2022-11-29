-- 基础信息
local base_info = {
	group_id = 302001026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26001, monster_id = 20010901, pos = { x = -101.322, y = 200.178, z = -738.379 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26002, monster_id = 20010801, pos = { x = -93.943, y = 200.368, z = -729.010 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 26003, monster_id = 20010901, pos = { x = -101.322, y = 200.178, z = -738.379 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26004, monster_id = 20010901, pos = { x = -100.194, y = 200.291, z = -731.666 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26005, monster_id = 20010801, pos = { x = -89.851, y = 200.306, z = -738.501 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 26006, monster_id = 20010801, pos = { x = -89.636, y = 200.154, z = -731.524 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 26007, monster_id = 20010901, pos = { x = -91.933, y = 200.419, z = -742.417 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26008, monster_id = 20010901, pos = { x = -97.286, y = 200.205, z = -742.479 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26009, monster_id = 20010901, pos = { x = -92.291, y = 200.271, z = -726.426 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26010, monster_id = 20010901, pos = { x = -94.365, y = 200.291, z = -743.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26011, monster_id = 20010901, pos = { x = -95.336, y = 200.330, z = -726.039 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26012, monster_id = 20010901, pos = { x = -100.194, y = 200.291, z = -731.666 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26013, monster_id = 20010901, pos = { x = -89.851, y = 200.306, z = -738.501 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26014, monster_id = 20010901, pos = { x = -89.636, y = 200.154, z = -731.524 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26015, monster_id = 20010901, pos = { x = -91.933, y = 200.419, z = -742.417 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26016, monster_id = 20010901, pos = { x = -97.286, y = 200.205, z = -742.479 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26017, monster_id = 20010904, pos = { x = -92.291, y = 200.271, z = -726.426 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26018, monster_id = 20010904, pos = { x = -94.365, y = 200.291, z = -743.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26019, monster_id = 20010904, pos = { x = -95.336, y = 200.330, z = -726.039 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 7 },
	{ config_id = 26020, monster_id = 20010801, pos = { x = -93.943, y = 200.368, z = -729.010 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 }
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
	{ config_id = 1026023, name = "ANY_MONSTER_LIVE_26023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_26023", action = "action_EVENT_ANY_MONSTER_LIVE_26023", trigger_count = 0 },
	{ config_id = 1026024, name = "MONSTER_TIDE_DIE_26024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_26024", action = "action_EVENT_MONSTER_TIDE_DIE_26024", trigger_count = 0 },
	{ config_id = 1026025, name = "MONSTER_TIDE_DIE_26025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_26025", action = "action_EVENT_MONSTER_TIDE_DIE_26025", trigger_count = 0 },
	{ config_id = 1026026, name = "MONSTER_TIDE_DIE_26026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_26026", action = "action_EVENT_MONSTER_TIDE_DIE_26026", trigger_count = 0 },
	{ config_id = 1026027, name = "MONSTER_TIDE_DIE_26027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_26027", action = "action_EVENT_MONSTER_TIDE_DIE_26027", trigger_count = 0 },
	{ config_id = 1026028, name = "MONSTER_TIDE_DIE_26028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_26028", action = "action_EVENT_MONSTER_TIDE_DIE_26028", trigger_count = 0 },
	{ config_id = 1026029, name = "MONSTER_TIDE_DIE_26029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_26029", action = "action_EVENT_MONSTER_TIDE_DIE_26029", trigger_count = 0 },
	{ config_id = 1026032, name = "ANY_MONSTER_LIVE_26032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_26032", action = "action_EVENT_ANY_MONSTER_LIVE_26032", trigger_count = 0 },
	{ config_id = 1026033, name = "MONSTER_TIDE_DIE_26033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_26033", action = "action_EVENT_MONSTER_TIDE_DIE_26033", trigger_count = 0 },
	{ config_id = 1026034, name = "MONSTER_TIDE_DIE_26034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_26034", action = "action_EVENT_MONSTER_TIDE_DIE_26034", trigger_count = 0 },
	{ config_id = 1026035, name = "MONSTER_TIDE_DIE_26035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_26035", action = "action_EVENT_MONSTER_TIDE_DIE_26035", trigger_count = 0 },
	{ config_id = 1026036, name = "MONSTER_TIDE_DIE_26036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_26036", action = "action_EVENT_MONSTER_TIDE_DIE_26036", trigger_count = 0 },
	{ config_id = 1026037, name = "MONSTER_TIDE_DIE_26037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_26037", action = "action_EVENT_MONSTER_TIDE_DIE_26037", trigger_count = 0 },
	{ config_id = 1026038, name = "MONSTER_TIDE_DIE_26038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_26038", action = "action_EVENT_MONSTER_TIDE_DIE_26038", trigger_count = 0 }
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
		monsters = { 26002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_26023", "MONSTER_TIDE_DIE_26024", "MONSTER_TIDE_DIE_26025", "MONSTER_TIDE_DIE_26026", "MONSTER_TIDE_DIE_26027", "MONSTER_TIDE_DIE_26028", "MONSTER_TIDE_DIE_26029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 26003, 26004, 26005, 26006, 26007, 26008, 26009, 26010, 26011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 26020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_26032", "MONSTER_TIDE_DIE_26033", "MONSTER_TIDE_DIE_26034", "MONSTER_TIDE_DIE_26035", "MONSTER_TIDE_DIE_26036", "MONSTER_TIDE_DIE_26037", "MONSTER_TIDE_DIE_26038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 26001, 26012, 26013, 26014, 26015, 26016, 26017, 26018, 26019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_26023(context, evt)
	if 26002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_26023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001026, {26003,26004}, 4, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为8，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001026, {26005,26006}, 8, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001026, {26007,26008}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26024(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001026, {26009}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26025(context, evt)
	if 8 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001026, {26010}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26026(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001026, {26011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26027(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001026, {26003,26004}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26028(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为8，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001026, {26005,26006}, 8, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001026, {26007,26008}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_26032(context, evt)
	if 26020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_26032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001026, {26001,26012}, 4, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001026, {26013,26014}, 4, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001026, {26015,26016}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26033(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001026, {26017}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26034(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001026, {26018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26035(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001026, {26019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26036(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001026, {26001,26012}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001026, {26013,26014}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_26038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_26038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001026, {26015,26016}, 4, 1, 1) then
		return -1
	end
	
	return 0
end