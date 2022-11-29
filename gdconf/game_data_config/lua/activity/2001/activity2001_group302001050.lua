-- 基础信息
local base_info = {
	group_id = 302001050
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 50001, monster_id = 20011301, pos = { x = 131.664, y = 238.137, z = 281.065 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50002, monster_id = 21011001, pos = { x = 134.031, y = 238.111, z = 269.722 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 },
	{ config_id = 50003, monster_id = 20011301, pos = { x = 131.664, y = 238.137, z = 281.065 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50004, monster_id = 20011301, pos = { x = 131.494, y = 238.307, z = 272.898 }, rot = { x = 0.000, y = 70.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50005, monster_id = 20011301, pos = { x = 141.258, y = 236.934, z = 281.328 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50006, monster_id = 20011301, pos = { x = 144.839, y = 236.514, z = 279.555 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50007, monster_id = 20011301, pos = { x = 138.493, y = 237.726, z = 269.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50008, monster_id = 20011301, pos = { x = 146.526, y = 236.300, z = 275.837 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50009, monster_id = 20011301, pos = { x = 130.728, y = 238.324, z = 277.095 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50010, monster_id = 20011301, pos = { x = 137.692, y = 237.509, z = 284.007 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50011, monster_id = 20011304, pos = { x = 143.828, y = 237.071, z = 271.185 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50012, monster_id = 20011301, pos = { x = 131.494, y = 238.307, z = 272.898 }, rot = { x = 0.000, y = 70.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50013, monster_id = 20011301, pos = { x = 141.258, y = 236.934, z = 281.328 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50014, monster_id = 20011301, pos = { x = 144.839, y = 236.514, z = 279.555 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50015, monster_id = 20011301, pos = { x = 138.493, y = 237.726, z = 269.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50016, monster_id = 20011301, pos = { x = 146.526, y = 236.300, z = 275.837 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50017, monster_id = 20011301, pos = { x = 130.728, y = 238.324, z = 277.095 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50018, monster_id = 20011301, pos = { x = 137.692, y = 237.509, z = 284.007 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50019, monster_id = 20011304, pos = { x = 143.828, y = 237.071, z = 271.185 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 40, area_id = 9 },
	{ config_id = 50020, monster_id = 21011002, pos = { x = 134.031, y = 238.111, z = 269.722 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 9 }
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
	{ config_id = 1050023, name = "ANY_MONSTER_LIVE_50023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_50023", action = "action_EVENT_ANY_MONSTER_LIVE_50023", trigger_count = 0 },
	{ config_id = 1050024, name = "MONSTER_TIDE_DIE_50024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_50024", action = "action_EVENT_MONSTER_TIDE_DIE_50024", trigger_count = 0 },
	{ config_id = 1050025, name = "MONSTER_TIDE_DIE_50025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_50025", action = "action_EVENT_MONSTER_TIDE_DIE_50025", trigger_count = 0 },
	{ config_id = 1050026, name = "MONSTER_TIDE_DIE_50026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_50026", action = "action_EVENT_MONSTER_TIDE_DIE_50026", trigger_count = 0 },
	{ config_id = 1050027, name = "MONSTER_TIDE_DIE_50027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_50027", action = "action_EVENT_MONSTER_TIDE_DIE_50027", trigger_count = 0 },
	{ config_id = 1050028, name = "MONSTER_TIDE_DIE_50028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_50028", action = "action_EVENT_MONSTER_TIDE_DIE_50028", trigger_count = 0 },
	{ config_id = 1050029, name = "MONSTER_TIDE_DIE_50029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_50029", action = "action_EVENT_MONSTER_TIDE_DIE_50029", trigger_count = 0 },
	{ config_id = 1050032, name = "ANY_MONSTER_LIVE_50032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_50032", action = "action_EVENT_ANY_MONSTER_LIVE_50032", trigger_count = 0 },
	{ config_id = 1050033, name = "MONSTER_TIDE_DIE_50033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_50033", action = "action_EVENT_MONSTER_TIDE_DIE_50033", trigger_count = 0 },
	{ config_id = 1050034, name = "MONSTER_TIDE_DIE_50034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_50034", action = "action_EVENT_MONSTER_TIDE_DIE_50034", trigger_count = 0 },
	{ config_id = 1050035, name = "MONSTER_TIDE_DIE_50035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_50035", action = "action_EVENT_MONSTER_TIDE_DIE_50035", trigger_count = 0 },
	{ config_id = 1050036, name = "MONSTER_TIDE_DIE_50036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_50036", action = "action_EVENT_MONSTER_TIDE_DIE_50036", trigger_count = 0 },
	{ config_id = 1050037, name = "MONSTER_TIDE_DIE_50037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_50037", action = "action_EVENT_MONSTER_TIDE_DIE_50037", trigger_count = 0 },
	{ config_id = 1050038, name = "MONSTER_TIDE_DIE_50038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_50038", action = "action_EVENT_MONSTER_TIDE_DIE_50038", trigger_count = 0 }
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
		monsters = { 50002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_50023", "MONSTER_TIDE_DIE_50024", "MONSTER_TIDE_DIE_50025", "MONSTER_TIDE_DIE_50026", "MONSTER_TIDE_DIE_50027", "MONSTER_TIDE_DIE_50028", "MONSTER_TIDE_DIE_50029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 50003, 50004, 50005, 50006, 50007, 50008, 50009, 50010, 50011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 50020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_50032", "MONSTER_TIDE_DIE_50033", "MONSTER_TIDE_DIE_50034", "MONSTER_TIDE_DIE_50035", "MONSTER_TIDE_DIE_50036", "MONSTER_TIDE_DIE_50037", "MONSTER_TIDE_DIE_50038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 50001, 50012, 50013, 50014, 50015, 50016, 50017, 50018, 50019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_50023(context, evt)
	if 50002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_50023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001050, {50003,50004}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001050, {50005,50006}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001050, {50007,50008}, 4, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50024(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001050, {50009}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50025(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001050, {50010}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50026(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001050, {50011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50027(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001050, {50003,50004}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50028(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001050, {50005,50006}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001050, {50007,50008}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_50032(context, evt)
	if 50020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_50032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001050, {50001,50012}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001050, {50013,50014}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001050, {50015,50016}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50033(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001050, {50017}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50034(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001050, {50018}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50035(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001050, {50019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50036(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001050, {50001,50012}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50037(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001050, {50013,50014}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_50038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_50038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001050, {50015,50016}, 2, 1, 1) then
		return -1
	end
	
	return 0
end