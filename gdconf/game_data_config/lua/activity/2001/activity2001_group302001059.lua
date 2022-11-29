-- 基础信息
local base_info = {
	group_id = 302001059
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 59001, monster_id = 25010701, pos = { x = 306.189, y = 200.904, z = 39.437 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59002, monster_id = 25010201, pos = { x = 312.721, y = 200.951, z = 39.713 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 59003, monster_id = 25010701, pos = { x = 306.189, y = 200.904, z = 39.437 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59004, monster_id = 25010701, pos = { x = 309.538, y = 200.956, z = 40.198 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59005, monster_id = 25060101, pos = { x = 304.361, y = 200.828, z = 34.722 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59006, monster_id = 25060101, pos = { x = 304.839, y = 200.751, z = 31.542 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59007, monster_id = 25010301, pos = { x = 316.154, y = 200.975, z = 31.455 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 59008, monster_id = 25010501, pos = { x = 317.509, y = 201.274, z = 34.729 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 59009, monster_id = 25030301, pos = { x = 308.012, y = 200.713, z = 28.683 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59010, monster_id = 25070101, pos = { x = 310.729, y = 200.678, z = 28.389 }, rot = { x = 0.000, y = 350.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59011, monster_id = 25030201, pos = { x = 314.210, y = 200.757, z = 29.656 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59012, monster_id = 25010701, pos = { x = 309.538, y = 200.956, z = 40.198 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59013, monster_id = 25060101, pos = { x = 304.361, y = 200.828, z = 34.722 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59014, monster_id = 25060101, pos = { x = 304.839, y = 200.751, z = 31.542 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59015, monster_id = 25010301, pos = { x = 316.154, y = 200.975, z = 31.455 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 59016, monster_id = 25010501, pos = { x = 317.509, y = 201.274, z = 34.729 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 59017, monster_id = 25030301, pos = { x = 308.012, y = 200.713, z = 28.683 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59018, monster_id = 25070101, pos = { x = 310.729, y = 200.678, z = 28.389 }, rot = { x = 0.000, y = 350.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59019, monster_id = 25030201, pos = { x = 314.210, y = 200.757, z = 29.656 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 },
	{ config_id = 59020, monster_id = 25010201, pos = { x = 312.721, y = 200.951, z = 39.713 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 59040, monster_id = 25030301, pos = { x = 308.076, y = 200.961, z = 41.131 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 9 }
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
	{ config_id = 1059023, name = "ANY_MONSTER_LIVE_59023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_59023", action = "action_EVENT_ANY_MONSTER_LIVE_59023", trigger_count = 0 },
	{ config_id = 1059024, name = "MONSTER_TIDE_DIE_59024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_59024", action = "action_EVENT_MONSTER_TIDE_DIE_59024", trigger_count = 0 },
	{ config_id = 1059025, name = "MONSTER_TIDE_DIE_59025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_59025", action = "action_EVENT_MONSTER_TIDE_DIE_59025", trigger_count = 0 },
	{ config_id = 1059026, name = "MONSTER_TIDE_DIE_59026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_59026", action = "action_EVENT_MONSTER_TIDE_DIE_59026", trigger_count = 0 },
	{ config_id = 1059027, name = "MONSTER_TIDE_DIE_59027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_59027", action = "action_EVENT_MONSTER_TIDE_DIE_59027", trigger_count = 0 },
	{ config_id = 1059028, name = "MONSTER_TIDE_DIE_59028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_59028", action = "action_EVENT_MONSTER_TIDE_DIE_59028", trigger_count = 0 },
	{ config_id = 1059029, name = "MONSTER_TIDE_DIE_59029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_59029", action = "action_EVENT_MONSTER_TIDE_DIE_59029", trigger_count = 0 },
	{ config_id = 1059032, name = "ANY_MONSTER_LIVE_59032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_59032", action = "action_EVENT_ANY_MONSTER_LIVE_59032", trigger_count = 0 },
	{ config_id = 1059033, name = "MONSTER_TIDE_DIE_59033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_59033", action = "action_EVENT_MONSTER_TIDE_DIE_59033", trigger_count = 0 },
	{ config_id = 1059034, name = "MONSTER_TIDE_DIE_59034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_59034", action = "action_EVENT_MONSTER_TIDE_DIE_59034", trigger_count = 0 },
	{ config_id = 1059035, name = "MONSTER_TIDE_DIE_59035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_59035", action = "action_EVENT_MONSTER_TIDE_DIE_59035", trigger_count = 0 },
	{ config_id = 1059036, name = "MONSTER_TIDE_DIE_59036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_59036", action = "action_EVENT_MONSTER_TIDE_DIE_59036", trigger_count = 0 },
	{ config_id = 1059037, name = "MONSTER_TIDE_DIE_59037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_59037", action = "action_EVENT_MONSTER_TIDE_DIE_59037", trigger_count = 0 },
	{ config_id = 1059038, name = "MONSTER_TIDE_DIE_59038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_59038", action = "action_EVENT_MONSTER_TIDE_DIE_59038", trigger_count = 0 }
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
		monsters = { 59002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_59023", "MONSTER_TIDE_DIE_59024", "MONSTER_TIDE_DIE_59025", "MONSTER_TIDE_DIE_59026", "MONSTER_TIDE_DIE_59027", "MONSTER_TIDE_DIE_59028", "MONSTER_TIDE_DIE_59029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 59003, 59004, 59005, 59006, 59007, 59008, 59009, 59010, 59011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 59020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_59032", "MONSTER_TIDE_DIE_59033", "MONSTER_TIDE_DIE_59034", "MONSTER_TIDE_DIE_59035", "MONSTER_TIDE_DIE_59036", "MONSTER_TIDE_DIE_59037", "MONSTER_TIDE_DIE_59038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 59001, 59012, 59013, 59014, 59015, 59016, 59017, 59018, 59019, 59040 },
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
function condition_EVENT_ANY_MONSTER_LIVE_59023(context, evt)
	if 59002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_59023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001059, {59003,59004}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001059, {59005,59006}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001059, {59007,59008}, 4, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59024(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001059, {59009}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59025(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001059, {59010}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59026(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001059, {59011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59027(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001059, {59003,59004}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59028(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001059, {59005,59006}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001059, {59007,59008}, 4, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_59032(context, evt)
	if 59020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_59032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001059, {59001,59012}, 4, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001059, {59013,59014}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001059, {59015,59016}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59033(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001059, {59017,59040}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59034(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001059, {59018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59035(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001059, {59019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001059, {59001,59012}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001059, {59013,59014}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_59038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_59038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001059, {59015,59016}, 4, 2, 2) then
		return -1
	end
	
	return 0
end