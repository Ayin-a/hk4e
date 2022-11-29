-- 基础信息
local base_info = {
	group_id = 302001058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58001, monster_id = 21010201, pos = { x = 1536.688, y = 335.521, z = -2115.045 }, rot = { x = 0.000, y = 339.216, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58009, monster_id = 21010201, pos = { x = 1527.429, y = 335.172, z = -2105.306 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58010, monster_id = 21010201, pos = { x = 1533.451, y = 335.279, z = -2102.739 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58011, monster_id = 21010201, pos = { x = 1539.676, y = 335.521, z = -2112.260 }, rot = { x = 0.000, y = 303.068, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58012, monster_id = 21010201, pos = { x = 1524.867, y = 335.158, z = -2111.211 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58013, monster_id = 21010501, pos = { x = 1540.937, y = 335.285, z = -2106.496 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58014, monster_id = 21011001, pos = { x = 1538.718, y = 335.245, z = -2103.442 }, rot = { x = 0.000, y = 226.592, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58015, monster_id = 21020201, pos = { x = 1533.693, y = 335.007, z = -2120.748 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 30, area_id = 2 },
	{ config_id = 58016, monster_id = 21020201, pos = { x = 1526.560, y = 334.917, z = -2116.070 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 30, area_id = 2 },
	{ config_id = 58017, monster_id = 22010101, pos = { x = 1530.542, y = 335.305, z = -2102.366 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 58018, monster_id = 21010201, pos = { x = 1539.249, y = 335.521, z = -2115.592 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58026, monster_id = 21010201, pos = { x = 1524.492, y = 335.172, z = -2101.565 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58027, monster_id = 21010201, pos = { x = 1535.589, y = 334.913, z = -2096.973 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58028, monster_id = 21010201, pos = { x = 1537.016, y = 335.166, z = -2101.721 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58029, monster_id = 21010201, pos = { x = 1519.810, y = 334.430, z = -2114.873 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58030, monster_id = 21010502, pos = { x = 1530.814, y = 334.953, z = -2120.390 }, rot = { x = 0.000, y = 13.077, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58031, monster_id = 21011002, pos = { x = 1525.820, y = 335.098, z = -2099.057 }, rot = { x = 0.000, y = 146.944, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 58032, monster_id = 21020202, pos = { x = 1544.365, y = 335.521, z = -2113.344 }, rot = { x = 0.000, y = 280.404, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 58033, monster_id = 21020202, pos = { x = 1526.614, y = 334.997, z = -2096.843 }, rot = { x = 0.000, y = 152.611, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 58034, monster_id = 22010102, pos = { x = 1534.454, y = 335.521, z = -2115.711 }, rot = { x = 0.000, y = 356.871, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 }
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
	{ config_id = 1058002, name = "ANY_MONSTER_LIVE_58002", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_58002", action = "action_EVENT_ANY_MONSTER_LIVE_58002", trigger_count = 0 },
	{ config_id = 1058003, name = "MONSTER_TIDE_DIE_58003", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_58003", action = "action_EVENT_MONSTER_TIDE_DIE_58003", trigger_count = 0 },
	{ config_id = 1058004, name = "MONSTER_TIDE_DIE_58004", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_58004", action = "action_EVENT_MONSTER_TIDE_DIE_58004", trigger_count = 0 },
	{ config_id = 1058005, name = "MONSTER_TIDE_DIE_58005", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_58005", action = "action_EVENT_MONSTER_TIDE_DIE_58005", trigger_count = 0 },
	{ config_id = 1058006, name = "MONSTER_TIDE_DIE_58006", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_58006", action = "action_EVENT_MONSTER_TIDE_DIE_58006", trigger_count = 0 },
	{ config_id = 1058007, name = "MONSTER_TIDE_DIE_58007", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_58007", action = "action_EVENT_MONSTER_TIDE_DIE_58007", trigger_count = 0 },
	{ config_id = 1058008, name = "MONSTER_TIDE_DIE_58008", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_58008", action = "action_EVENT_MONSTER_TIDE_DIE_58008", trigger_count = 0 },
	{ config_id = 1058019, name = "ANY_MONSTER_LIVE_58019", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_58019", action = "action_EVENT_ANY_MONSTER_LIVE_58019", trigger_count = 0 },
	{ config_id = 1058020, name = "MONSTER_TIDE_DIE_58020", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_58020", action = "action_EVENT_MONSTER_TIDE_DIE_58020", trigger_count = 0 },
	{ config_id = 1058021, name = "MONSTER_TIDE_DIE_58021", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_58021", action = "action_EVENT_MONSTER_TIDE_DIE_58021", trigger_count = 0 },
	{ config_id = 1058022, name = "MONSTER_TIDE_DIE_58022", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_58022", action = "action_EVENT_MONSTER_TIDE_DIE_58022", trigger_count = 0 },
	{ config_id = 1058023, name = "MONSTER_TIDE_DIE_58023", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_58023", action = "action_EVENT_MONSTER_TIDE_DIE_58023", trigger_count = 0 },
	{ config_id = 1058024, name = "MONSTER_TIDE_DIE_58024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_58024", action = "action_EVENT_MONSTER_TIDE_DIE_58024", trigger_count = 0 },
	{ config_id = 1058025, name = "MONSTER_TIDE_DIE_58025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_58025", action = "action_EVENT_MONSTER_TIDE_DIE_58025", trigger_count = 0 }
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
	suite = 5,
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
		monsters = { 58001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_58002", "MONSTER_TIDE_DIE_58003", "MONSTER_TIDE_DIE_58004", "MONSTER_TIDE_DIE_58005", "MONSTER_TIDE_DIE_58006", "MONSTER_TIDE_DIE_58007", "MONSTER_TIDE_DIE_58008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 58009, 58010, 58011, 58012, 58013, 58014, 58015, 58016, 58017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 58026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_58019", "MONSTER_TIDE_DIE_58020", "MONSTER_TIDE_DIE_58021", "MONSTER_TIDE_DIE_58022", "MONSTER_TIDE_DIE_58023", "MONSTER_TIDE_DIE_58024", "MONSTER_TIDE_DIE_58025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 58018, 58027, 58028, 58029, 58030, 58031, 58032, 58033, 58034 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_LIVE_58002(context, evt)
	if 58001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_58002(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001058, {58009,58010}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001058, {58011,58012}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001058, {58013,58014}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58003(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58003(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001058, {58015}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58004(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58004(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001058, {58016}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58005(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58005(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001058, {58017}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58006(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58006(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001058, {58009,58010}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58007(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58007(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001058, {58011,58012}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58008(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58008(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001058, {58013,58014}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_58019(context, evt)
	if 58026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_58019(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001058, {58018,58027}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001058, {58028,58029}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001058, {58030,58031}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58020(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58020(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001058, {58032}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58021(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58021(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001058, {58033}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58022(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58022(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001058, {58034}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58023(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001058, {58018,58027}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58024(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58024(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001058, {58028,58029}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_58025(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_58025(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001058, {58032,58033}, 2, 2, 2) then
		return -1
	end
	
	return 0
end