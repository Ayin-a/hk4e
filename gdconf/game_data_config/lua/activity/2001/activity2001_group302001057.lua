-- 基础信息
local base_info = {
	group_id = 302001057
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 57001, monster_id = 21010201, pos = { x = 419.024, y = 200.934, z = -285.079 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57002, monster_id = 21010201, pos = { x = 428.487, y = 201.175, z = -294.071 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57003, monster_id = 21010201, pos = { x = 419.024, y = 200.934, z = -285.079 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57004, monster_id = 21010201, pos = { x = 426.294, y = 200.822, z = -281.081 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57005, monster_id = 21010301, pos = { x = 432.145, y = 201.069, z = -284.574 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57006, monster_id = 21010301, pos = { x = 418.510, y = 201.137, z = -291.621 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57007, monster_id = 21010501, pos = { x = 432.637, y = 201.115, z = -287.483 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57008, monster_id = 21011001, pos = { x = 432.648, y = 201.040, z = -293.033 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57009, monster_id = 21020101, pos = { x = 422.405, y = 200.598, z = -299.141 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 57010, monster_id = 21020301, pos = { x = 418.511, y = 200.821, z = -296.618 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 57011, monster_id = 22010201, pos = { x = 422.797, y = 200.897, z = -283.267 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 57012, monster_id = 21010201, pos = { x = 426.294, y = 200.822, z = -281.081 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57013, monster_id = 21010301, pos = { x = 432.145, y = 201.069, z = -284.574 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57014, monster_id = 21011201, pos = { x = 418.510, y = 201.137, z = -291.621 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57015, monster_id = 21010502, pos = { x = 432.637, y = 201.115, z = -287.483 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57016, monster_id = 21011002, pos = { x = 432.648, y = 201.040, z = -293.033 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 57017, monster_id = 21020101, pos = { x = 422.405, y = 200.598, z = -299.141 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 57018, monster_id = 21020301, pos = { x = 418.511, y = 200.821, z = -296.618 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 57019, monster_id = 22010202, pos = { x = 422.797, y = 200.897, z = -283.267 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 57020, monster_id = 21010201, pos = { x = 428.487, y = 201.175, z = -294.071 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 }
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
	{ config_id = 1057023, name = "ANY_MONSTER_LIVE_57023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_57023", action = "action_EVENT_ANY_MONSTER_LIVE_57023", trigger_count = 0 },
	{ config_id = 1057024, name = "MONSTER_TIDE_DIE_57024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_57024", action = "action_EVENT_MONSTER_TIDE_DIE_57024", trigger_count = 0 },
	{ config_id = 1057025, name = "MONSTER_TIDE_DIE_57025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_57025", action = "action_EVENT_MONSTER_TIDE_DIE_57025", trigger_count = 0 },
	{ config_id = 1057026, name = "MONSTER_TIDE_DIE_57026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_57026", action = "action_EVENT_MONSTER_TIDE_DIE_57026", trigger_count = 0 },
	{ config_id = 1057027, name = "MONSTER_TIDE_DIE_57027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_57027", action = "action_EVENT_MONSTER_TIDE_DIE_57027", trigger_count = 0 },
	{ config_id = 1057028, name = "MONSTER_TIDE_DIE_57028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_57028", action = "action_EVENT_MONSTER_TIDE_DIE_57028", trigger_count = 0 },
	{ config_id = 1057029, name = "MONSTER_TIDE_DIE_57029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_57029", action = "action_EVENT_MONSTER_TIDE_DIE_57029", trigger_count = 0 },
	{ config_id = 1057032, name = "ANY_MONSTER_LIVE_57032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_57032", action = "action_EVENT_ANY_MONSTER_LIVE_57032", trigger_count = 0 },
	{ config_id = 1057033, name = "MONSTER_TIDE_DIE_57033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_57033", action = "action_EVENT_MONSTER_TIDE_DIE_57033", trigger_count = 0 },
	{ config_id = 1057034, name = "MONSTER_TIDE_DIE_57034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_57034", action = "action_EVENT_MONSTER_TIDE_DIE_57034", trigger_count = 0 },
	{ config_id = 1057035, name = "MONSTER_TIDE_DIE_57035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_57035", action = "action_EVENT_MONSTER_TIDE_DIE_57035", trigger_count = 0 },
	{ config_id = 1057036, name = "MONSTER_TIDE_DIE_57036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_57036", action = "action_EVENT_MONSTER_TIDE_DIE_57036", trigger_count = 0 },
	{ config_id = 1057037, name = "MONSTER_TIDE_DIE_57037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_57037", action = "action_EVENT_MONSTER_TIDE_DIE_57037", trigger_count = 0 },
	{ config_id = 1057038, name = "MONSTER_TIDE_DIE_57038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_57038", action = "action_EVENT_MONSTER_TIDE_DIE_57038", trigger_count = 0 }
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
		monsters = { 57002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_57023", "MONSTER_TIDE_DIE_57024", "MONSTER_TIDE_DIE_57025", "MONSTER_TIDE_DIE_57026", "MONSTER_TIDE_DIE_57027", "MONSTER_TIDE_DIE_57028", "MONSTER_TIDE_DIE_57029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 57003, 57004, 57005, 57006, 57007, 57008, 57009, 57010, 57011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 57020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_57032", "MONSTER_TIDE_DIE_57033", "MONSTER_TIDE_DIE_57034", "MONSTER_TIDE_DIE_57035", "MONSTER_TIDE_DIE_57036", "MONSTER_TIDE_DIE_57037", "MONSTER_TIDE_DIE_57038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 57001, 57012, 57013, 57014, 57015, 57016, 57017, 57018, 57019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_57023(context, evt)
	if 57002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_57023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001057, {57003,57004}, 4, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001057, {57005,57006}, 4, 1, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001057, {57007,57008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57024(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001057, {57009}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57025(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001057, {57010}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001057, {57011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57027(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001057, {57003,57004}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57028(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001057, {57005,57006}, 4, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001057, {57007,57008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_57032(context, evt)
	if 57020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_57032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001057, {57001,57012}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001057, {57013,57014}, 4, 1, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001057, {57015,57016}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57033(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001057, {57017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57034(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001057, {57018}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001057, {57019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001057, {57001,57012}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57037(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001057, {57013,57014}, 4, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_57038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_57038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001057, {57015,57016}, 6, 2, 2) then
		return -1
	end
	
	return 0
end