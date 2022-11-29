-- 基础信息
local base_info = {
	group_id = 302001035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 25010201, pos = { x = 2540.745, y = 218.887, z = -1432.914 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35002, monster_id = 25010201, pos = { x = 2548.990, y = 217.948, z = -1441.712 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35003, monster_id = 25010201, pos = { x = 2540.745, y = 218.887, z = -1432.914 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35004, monster_id = 25010201, pos = { x = 2546.773, y = 218.510, z = -1431.625 }, rot = { x = 0.000, y = 199.621, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35005, monster_id = 25060101, pos = { x = 2549.406, y = 218.262, z = -1433.663 }, rot = { x = 0.000, y = 233.468, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35006, monster_id = 25060101, pos = { x = 2540.237, y = 219.054, z = -1439.168 }, rot = { x = 0.000, y = 54.754, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35007, monster_id = 25010301, pos = { x = 2553.138, y = 217.632, z = -1434.817 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35008, monster_id = 25010501, pos = { x = 2537.080, y = 219.249, z = -1434.145 }, rot = { x = 0.000, y = 102.013, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35009, monster_id = 25010701, pos = { x = 2545.857, y = 218.512, z = -1442.683 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 35010, monster_id = 25030301, pos = { x = 2544.075, y = 218.338, z = -1431.575 }, rot = { x = 0.000, y = 131.317, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 35011, monster_id = 25070101, pos = { x = 2550.352, y = 217.813, z = -1438.717 }, rot = { x = 0.000, y = 287.248, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 1 },
	{ config_id = 35012, monster_id = 25010201, pos = { x = 2546.773, y = 218.510, z = -1431.625 }, rot = { x = 0.000, y = 199.621, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35013, monster_id = 25060101, pos = { x = 2549.406, y = 218.262, z = -1433.663 }, rot = { x = 0.000, y = 233.468, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35014, monster_id = 25060101, pos = { x = 2540.237, y = 219.054, z = -1439.168 }, rot = { x = 0.000, y = 54.754, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35015, monster_id = 25010301, pos = { x = 2553.138, y = 217.632, z = -1434.817 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35016, monster_id = 25010501, pos = { x = 2537.080, y = 219.249, z = -1434.145 }, rot = { x = 0.000, y = 102.013, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 35017, monster_id = 25010701, pos = { x = 2545.857, y = 218.512, z = -1442.683 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 35018, monster_id = 25030301, pos = { x = 2544.075, y = 218.338, z = -1431.575 }, rot = { x = 0.000, y = 131.317, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 35019, monster_id = 25070101, pos = { x = 2550.352, y = 217.813, z = -1438.717 }, rot = { x = 0.000, y = 287.248, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 1 },
	{ config_id = 35020, monster_id = 25010201, pos = { x = 2548.990, y = 217.948, z = -1441.712 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 }
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
	{ config_id = 1035023, name = "ANY_MONSTER_LIVE_35023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_35023", action = "action_EVENT_ANY_MONSTER_LIVE_35023", trigger_count = 0 },
	{ config_id = 1035024, name = "MONSTER_TIDE_DIE_35024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_35024", action = "action_EVENT_MONSTER_TIDE_DIE_35024", trigger_count = 0 },
	{ config_id = 1035025, name = "MONSTER_TIDE_DIE_35025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_35025", action = "action_EVENT_MONSTER_TIDE_DIE_35025", trigger_count = 0 },
	{ config_id = 1035026, name = "MONSTER_TIDE_DIE_35026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_35026", action = "action_EVENT_MONSTER_TIDE_DIE_35026", trigger_count = 0 },
	{ config_id = 1035027, name = "MONSTER_TIDE_DIE_35027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_35027", action = "action_EVENT_MONSTER_TIDE_DIE_35027", trigger_count = 0 },
	{ config_id = 1035028, name = "MONSTER_TIDE_DIE_35028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_35028", action = "action_EVENT_MONSTER_TIDE_DIE_35028", trigger_count = 0 },
	{ config_id = 1035029, name = "MONSTER_TIDE_DIE_35029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_35029", action = "action_EVENT_MONSTER_TIDE_DIE_35029", trigger_count = 0 },
	{ config_id = 1035032, name = "ANY_MONSTER_LIVE_35032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_35032", action = "action_EVENT_ANY_MONSTER_LIVE_35032", trigger_count = 0 },
	{ config_id = 1035033, name = "MONSTER_TIDE_DIE_35033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_35033", action = "action_EVENT_MONSTER_TIDE_DIE_35033", trigger_count = 0 },
	{ config_id = 1035034, name = "MONSTER_TIDE_DIE_35034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_35034", action = "action_EVENT_MONSTER_TIDE_DIE_35034", trigger_count = 0 },
	{ config_id = 1035035, name = "MONSTER_TIDE_DIE_35035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_35035", action = "action_EVENT_MONSTER_TIDE_DIE_35035", trigger_count = 0 },
	{ config_id = 1035036, name = "MONSTER_TIDE_DIE_35036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_35036", action = "action_EVENT_MONSTER_TIDE_DIE_35036", trigger_count = 0 },
	{ config_id = 1035037, name = "MONSTER_TIDE_DIE_35037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_35037", action = "action_EVENT_MONSTER_TIDE_DIE_35037", trigger_count = 0 },
	{ config_id = 1035038, name = "MONSTER_TIDE_DIE_35038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_35038", action = "action_EVENT_MONSTER_TIDE_DIE_35038", trigger_count = 0 }
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
		monsters = { 35002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_35023", "MONSTER_TIDE_DIE_35024", "MONSTER_TIDE_DIE_35025", "MONSTER_TIDE_DIE_35026", "MONSTER_TIDE_DIE_35027", "MONSTER_TIDE_DIE_35028", "MONSTER_TIDE_DIE_35029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 35003, 35004, 35005, 35006, 35007, 35008, 35009, 35010, 35011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 35020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_35032", "MONSTER_TIDE_DIE_35033", "MONSTER_TIDE_DIE_35034", "MONSTER_TIDE_DIE_35035", "MONSTER_TIDE_DIE_35036", "MONSTER_TIDE_DIE_35037", "MONSTER_TIDE_DIE_35038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 35001, 35012, 35013, 35014, 35015, 35016, 35017, 35018, 35019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_35023(context, evt)
	if 35002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_35023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001035, {35003,35004}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001035, {35005,35006}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001035, {35007,35008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35024(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001035, {35009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35025(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001035, {35010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001035, {35011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001035, {35003,35004}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001035, {35005,35006}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001035, {35007,35008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_35032(context, evt)
	if 35020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_35032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001035, {35001,35012}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001035, {35013,35014}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001035, {35015,35016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001035, {35017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35034(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001035, {35018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001035, {35019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001035, {35001,35012}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001035, {35013,35014}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_35038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_35038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001035, {35015,35016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end