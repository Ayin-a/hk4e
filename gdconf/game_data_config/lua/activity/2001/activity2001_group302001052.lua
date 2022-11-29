-- 基础信息
local base_info = {
	group_id = 302001052
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 52001, monster_id = 20010901, pos = { x = 388.620, y = 200.509, z = -361.712 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52002, monster_id = 20010801, pos = { x = 401.219, y = 200.632, z = -372.325 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 52003, monster_id = 20010901, pos = { x = 388.620, y = 200.509, z = -361.712 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52004, monster_id = 20010901, pos = { x = 389.338, y = 200.504, z = -369.566 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52005, monster_id = 20010901, pos = { x = 405.501, y = 201.036, z = -366.038 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52006, monster_id = 20010901, pos = { x = 395.995, y = 200.506, z = -372.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52007, monster_id = 20010801, pos = { x = 404.492, y = 200.941, z = -370.303 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 52008, monster_id = 20010801, pos = { x = 403.447, y = 200.983, z = -361.446 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 52009, monster_id = 20010901, pos = { x = 387.457, y = 200.493, z = -366.561 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52010, monster_id = 20010901, pos = { x = 398.541, y = 201.056, z = -356.761 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52011, monster_id = 20010901, pos = { x = 393.540, y = 200.559, z = -358.654 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52012, monster_id = 20010901, pos = { x = 389.338, y = 200.504, z = -369.566 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52013, monster_id = 20010901, pos = { x = 405.501, y = 201.036, z = -366.038 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52014, monster_id = 20010901, pos = { x = 395.995, y = 200.506, z = -372.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52015, monster_id = 20010901, pos = { x = 404.492, y = 200.941, z = -370.303 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52016, monster_id = 20010901, pos = { x = 403.447, y = 200.983, z = -361.446 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52017, monster_id = 20010904, pos = { x = 393.540, y = 200.559, z = -358.654 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52018, monster_id = 20010901, pos = { x = 387.457, y = 200.493, z = -366.561 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52019, monster_id = 20010901, pos = { x = 398.541, y = 201.056, z = -356.761 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 60, area_id = 9 },
	{ config_id = 52020, monster_id = 20010801, pos = { x = 401.219, y = 200.632, z = -372.325 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 }
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
	{ config_id = 1052023, name = "ANY_MONSTER_LIVE_52023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_52023", action = "action_EVENT_ANY_MONSTER_LIVE_52023", trigger_count = 0 },
	{ config_id = 1052024, name = "MONSTER_TIDE_DIE_52024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_52024", action = "action_EVENT_MONSTER_TIDE_DIE_52024", trigger_count = 0 },
	{ config_id = 1052025, name = "MONSTER_TIDE_DIE_52025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_52025", action = "action_EVENT_MONSTER_TIDE_DIE_52025", trigger_count = 0 },
	{ config_id = 1052026, name = "MONSTER_TIDE_DIE_52026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_52026", action = "action_EVENT_MONSTER_TIDE_DIE_52026", trigger_count = 0 },
	{ config_id = 1052027, name = "MONSTER_TIDE_DIE_52027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_52027", action = "action_EVENT_MONSTER_TIDE_DIE_52027", trigger_count = 0 },
	{ config_id = 1052028, name = "MONSTER_TIDE_DIE_52028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_52028", action = "action_EVENT_MONSTER_TIDE_DIE_52028", trigger_count = 0 },
	{ config_id = 1052029, name = "MONSTER_TIDE_DIE_52029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_52029", action = "action_EVENT_MONSTER_TIDE_DIE_52029", trigger_count = 0 },
	{ config_id = 1052032, name = "ANY_MONSTER_LIVE_52032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_52032", action = "action_EVENT_ANY_MONSTER_LIVE_52032", trigger_count = 0 },
	{ config_id = 1052033, name = "MONSTER_TIDE_DIE_52033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_52033", action = "action_EVENT_MONSTER_TIDE_DIE_52033", trigger_count = 0 },
	{ config_id = 1052034, name = "MONSTER_TIDE_DIE_52034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_52034", action = "action_EVENT_MONSTER_TIDE_DIE_52034", trigger_count = 0 },
	{ config_id = 1052035, name = "MONSTER_TIDE_DIE_52035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_52035", action = "action_EVENT_MONSTER_TIDE_DIE_52035", trigger_count = 0 },
	{ config_id = 1052036, name = "MONSTER_TIDE_DIE_52036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_52036", action = "action_EVENT_MONSTER_TIDE_DIE_52036", trigger_count = 0 },
	{ config_id = 1052037, name = "MONSTER_TIDE_DIE_52037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_52037", action = "action_EVENT_MONSTER_TIDE_DIE_52037", trigger_count = 0 },
	{ config_id = 1052038, name = "MONSTER_TIDE_DIE_52038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_52038", action = "action_EVENT_MONSTER_TIDE_DIE_52038", trigger_count = 0 }
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
		monsters = { 52002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_52023", "MONSTER_TIDE_DIE_52024", "MONSTER_TIDE_DIE_52025", "MONSTER_TIDE_DIE_52026", "MONSTER_TIDE_DIE_52027", "MONSTER_TIDE_DIE_52028", "MONSTER_TIDE_DIE_52029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 52003, 52004, 52005, 52006, 52007, 52008, 52009, 52010, 52011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 52020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_52032", "MONSTER_TIDE_DIE_52033", "MONSTER_TIDE_DIE_52034", "MONSTER_TIDE_DIE_52035", "MONSTER_TIDE_DIE_52036", "MONSTER_TIDE_DIE_52037", "MONSTER_TIDE_DIE_52038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 52001, 52012, 52013, 52014, 52015, 52016, 52017, 52018, 52019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_52023(context, evt)
	if 52002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_52023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001052, {52003,52004}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001052, {52005,52006}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001052, {52007,52008}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52024(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001052, {52009}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52025(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001052, {52010}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52026(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001052, {52011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52027(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001052, {52003,52004}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52028(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001052, {52005,52006}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001052, {52007,52008}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_52032(context, evt)
	if 52020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_52032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001052, {52001,52012}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001052, {52013,52014}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001052, {52015,52016}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52033(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001052, {52017}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52034(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001052, {52018}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52035(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001052, {52019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52036(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001052, {52001,52012}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52037(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001052, {52013,52014}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_52038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_52038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001052, {52015,52016}, 2, 1, 1) then
		return -1
	end
	
	return 0
end