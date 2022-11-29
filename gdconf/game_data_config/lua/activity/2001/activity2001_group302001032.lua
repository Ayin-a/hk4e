-- 基础信息
local base_info = {
	group_id = 302001032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 25010201, pos = { x = 2068.638, y = 199.078, z = -1138.901 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32002, monster_id = 25010201, pos = { x = 2077.006, y = 200.059, z = -1147.047 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32003, monster_id = 25010201, pos = { x = 2067.665, y = 198.938, z = -1139.411 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32004, monster_id = 25010201, pos = { x = 2075.251, y = 199.835, z = -1137.153 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32005, monster_id = 25010201, pos = { x = 2079.212, y = 200.179, z = -1141.275 }, rot = { x = 0.000, y = 257.740, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32006, monster_id = 25010201, pos = { x = 2069.930, y = 199.577, z = -1148.142 }, rot = { x = 0.000, y = 41.340, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32007, monster_id = 25010601, pos = { x = 2084.519, y = 200.520, z = -1145.721 }, rot = { x = 0.000, y = 283.195, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32008, monster_id = 25010401, pos = { x = 2072.340, y = 199.704, z = -1133.929 }, rot = { x = 0.000, y = 173.916, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32009, monster_id = 25060101, pos = { x = 2072.815, y = 199.673, z = -1149.371 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 2 },
	{ config_id = 32010, monster_id = 25070101, pos = { x = 2068.341, y = 199.105, z = -1142.213 }, rot = { x = 0.000, y = 93.964, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 2 },
	{ config_id = 32011, monster_id = 25030201, pos = { x = 2077.770, y = 200.132, z = -1138.590 }, rot = { x = 0.000, y = 222.656, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 2 },
	{ config_id = 32012, monster_id = 25010201, pos = { x = 2071.775, y = 199.526, z = -1137.116 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32013, monster_id = 25010201, pos = { x = 2078.885, y = 200.181, z = -1139.588 }, rot = { x = 0.000, y = 244.749, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32014, monster_id = 25010201, pos = { x = 2068.507, y = 199.316, z = -1145.771 }, rot = { x = 0.000, y = 63.498, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32015, monster_id = 25010401, pos = { x = 2076.950, y = 200.072, z = -1134.236 }, rot = { x = 0.000, y = 202.026, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32016, monster_id = 25010601, pos = { x = 2081.702, y = 200.240, z = -1150.636 }, rot = { x = 0.000, y = 323.146, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 },
	{ config_id = 32017, monster_id = 25070101, pos = { x = 2074.164, y = 199.801, z = -1149.340 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 2 },
	{ config_id = 32018, monster_id = 25060101, pos = { x = 2077.606, y = 200.060, z = -1136.733 }, rot = { x = 0.000, y = 219.694, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 2 },
	{ config_id = 32019, monster_id = 25030201, pos = { x = 2067.794, y = 199.133, z = -1143.842 }, rot = { x = 0.000, y = 75.630, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 50, area_id = 2 },
	{ config_id = 32020, monster_id = 25010201, pos = { x = 2075.945, y = 199.975, z = -1147.964 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4109, 4108, 4107 }, kill_score = 20, area_id = 2 }
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
	{ config_id = 1032023, name = "ANY_MONSTER_LIVE_32023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_32023", action = "action_EVENT_ANY_MONSTER_LIVE_32023", trigger_count = 0 },
	{ config_id = 1032024, name = "MONSTER_TIDE_DIE_32024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_32024", action = "action_EVENT_MONSTER_TIDE_DIE_32024", trigger_count = 0 },
	{ config_id = 1032025, name = "MONSTER_TIDE_DIE_32025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_32025", action = "action_EVENT_MONSTER_TIDE_DIE_32025", trigger_count = 0 },
	{ config_id = 1032026, name = "MONSTER_TIDE_DIE_32026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_32026", action = "action_EVENT_MONSTER_TIDE_DIE_32026", trigger_count = 0 },
	{ config_id = 1032027, name = "MONSTER_TIDE_DIE_32027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_32027", action = "action_EVENT_MONSTER_TIDE_DIE_32027", trigger_count = 0 },
	{ config_id = 1032028, name = "MONSTER_TIDE_DIE_32028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_32028", action = "action_EVENT_MONSTER_TIDE_DIE_32028", trigger_count = 0 },
	{ config_id = 1032029, name = "MONSTER_TIDE_DIE_32029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_32029", action = "action_EVENT_MONSTER_TIDE_DIE_32029", trigger_count = 0 },
	{ config_id = 1032032, name = "ANY_MONSTER_LIVE_32032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_32032", action = "action_EVENT_ANY_MONSTER_LIVE_32032", trigger_count = 0 },
	{ config_id = 1032033, name = "MONSTER_TIDE_DIE_32033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_32033", action = "action_EVENT_MONSTER_TIDE_DIE_32033", trigger_count = 0 },
	{ config_id = 1032034, name = "MONSTER_TIDE_DIE_32034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_32034", action = "action_EVENT_MONSTER_TIDE_DIE_32034", trigger_count = 0 },
	{ config_id = 1032035, name = "MONSTER_TIDE_DIE_32035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_32035", action = "action_EVENT_MONSTER_TIDE_DIE_32035", trigger_count = 0 },
	{ config_id = 1032036, name = "MONSTER_TIDE_DIE_32036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_32036", action = "action_EVENT_MONSTER_TIDE_DIE_32036", trigger_count = 0 },
	{ config_id = 1032037, name = "MONSTER_TIDE_DIE_32037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_32037", action = "action_EVENT_MONSTER_TIDE_DIE_32037", trigger_count = 0 },
	{ config_id = 1032038, name = "MONSTER_TIDE_DIE_32038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_32038", action = "action_EVENT_MONSTER_TIDE_DIE_32038", trigger_count = 0 }
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
		monsters = { 32002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_32023", "MONSTER_TIDE_DIE_32024", "MONSTER_TIDE_DIE_32025", "MONSTER_TIDE_DIE_32026", "MONSTER_TIDE_DIE_32027", "MONSTER_TIDE_DIE_32028", "MONSTER_TIDE_DIE_32029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 32003, 32004, 32005, 32006, 32007, 32008, 32009, 32010, 32011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 32020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_32032", "MONSTER_TIDE_DIE_32033", "MONSTER_TIDE_DIE_32034", "MONSTER_TIDE_DIE_32035", "MONSTER_TIDE_DIE_32036", "MONSTER_TIDE_DIE_32037", "MONSTER_TIDE_DIE_32038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 32001, 32012, 32013, 32014, 32015, 32016, 32017, 32018, 32019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_32023(context, evt)
	if 32002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_32023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001032, {32003,32004}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001032, {32005,32006}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001032, {32007,32008}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32024(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001032, {32009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32025(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001032, {32010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32026(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001032, {32011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001032, {32003,32004}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001032, {32005,32006}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001032, {32007,32008}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_32032(context, evt)
	if 32020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_32032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001032, {32001,32012}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001032, {32013,32014}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001032, {32015,32016}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32033(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001032, {32017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32034(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001032, {32018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32035(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001032, {32019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001032, {32001,32012}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001032, {32013,32014}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_32038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_32038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001032, {32015,32016}, 2, 1, 2) then
		return -1
	end
	
	return 0
end