-- 基础信息
local base_info = {
	group_id = 302001033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 33001, monster_id = 20011201, pos = { x = 2807.269, y = 263.933, z = -1703.589 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33002, monster_id = 20011201, pos = { x = 2819.616, y = 264.879, z = -1709.671 }, rot = { x = 0.000, y = 292.401, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33003, monster_id = 20011201, pos = { x = 2807.269, y = 263.933, z = -1703.589 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33004, monster_id = 20011201, pos = { x = 2817.434, y = 263.652, z = -1701.674 }, rot = { x = 0.000, y = 218.137, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33005, monster_id = 21010701, pos = { x = 2809.014, y = 265.075, z = -1712.709 }, rot = { x = 0.000, y = 35.348, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33006, monster_id = 21010701, pos = { x = 2816.908, y = 265.305, z = -1713.158 }, rot = { x = 0.000, y = 335.500, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33007, monster_id = 21011001, pos = { x = 2814.822, y = 263.132, z = -1697.465 }, rot = { x = 0.000, y = 198.760, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33008, monster_id = 21011001, pos = { x = 2819.364, y = 265.544, z = -1714.621 }, rot = { x = 0.000, y = 311.561, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33009, monster_id = 20011301, pos = { x = 2812.758, y = 265.376, z = -1714.138 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 1 },
	{ config_id = 33010, monster_id = 20011301, pos = { x = 2820.026, y = 264.182, z = -1705.234 }, rot = { x = 0.000, y = 260.134, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 1 },
	{ config_id = 33011, monster_id = 21020201, pos = { x = 2811.490, y = 263.487, z = -1700.214 }, rot = { x = 0.000, y = 171.662, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 33012, monster_id = 20011201, pos = { x = 2817.434, y = 263.652, z = -1701.674 }, rot = { x = 0.000, y = 218.137, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33013, monster_id = 21010701, pos = { x = 2809.014, y = 265.075, z = -1712.709 }, rot = { x = 0.000, y = 35.348, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33014, monster_id = 21010701, pos = { x = 2816.908, y = 265.305, z = -1713.158 }, rot = { x = 0.000, y = 335.500, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33015, monster_id = 21011001, pos = { x = 2814.822, y = 263.132, z = -1697.465 }, rot = { x = 0.000, y = 198.760, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33016, monster_id = 21011001, pos = { x = 2819.364, y = 265.544, z = -1714.621 }, rot = { x = 0.000, y = 311.561, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 33017, monster_id = 20011301, pos = { x = 2812.758, y = 265.376, z = -1714.138 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 1 },
	{ config_id = 33018, monster_id = 20011301, pos = { x = 2820.026, y = 264.182, z = -1705.234 }, rot = { x = 0.000, y = 260.134, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 1 },
	{ config_id = 33019, monster_id = 21020201, pos = { x = 2811.490, y = 263.487, z = -1700.214 }, rot = { x = 0.000, y = 171.662, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 33020, monster_id = 20011201, pos = { x = 2819.616, y = 264.879, z = -1709.671 }, rot = { x = 0.000, y = 292.401, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 }
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
	{ config_id = 1033023, name = "ANY_MONSTER_LIVE_33023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_33023", action = "action_EVENT_ANY_MONSTER_LIVE_33023", trigger_count = 0 },
	{ config_id = 1033024, name = "MONSTER_TIDE_DIE_33024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_33024", action = "action_EVENT_MONSTER_TIDE_DIE_33024", trigger_count = 0 },
	{ config_id = 1033025, name = "MONSTER_TIDE_DIE_33025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_33025", action = "action_EVENT_MONSTER_TIDE_DIE_33025", trigger_count = 0 },
	{ config_id = 1033026, name = "MONSTER_TIDE_DIE_33026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_33026", action = "action_EVENT_MONSTER_TIDE_DIE_33026", trigger_count = 0 },
	{ config_id = 1033027, name = "MONSTER_TIDE_DIE_33027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_33027", action = "action_EVENT_MONSTER_TIDE_DIE_33027", trigger_count = 0 },
	{ config_id = 1033028, name = "MONSTER_TIDE_DIE_33028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_33028", action = "action_EVENT_MONSTER_TIDE_DIE_33028", trigger_count = 0 },
	{ config_id = 1033029, name = "MONSTER_TIDE_DIE_33029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_33029", action = "action_EVENT_MONSTER_TIDE_DIE_33029", trigger_count = 0 },
	{ config_id = 1033032, name = "ANY_MONSTER_LIVE_33032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_33032", action = "action_EVENT_ANY_MONSTER_LIVE_33032", trigger_count = 0 },
	{ config_id = 1033033, name = "MONSTER_TIDE_DIE_33033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_33033", action = "action_EVENT_MONSTER_TIDE_DIE_33033", trigger_count = 0 },
	{ config_id = 1033034, name = "MONSTER_TIDE_DIE_33034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_33034", action = "action_EVENT_MONSTER_TIDE_DIE_33034", trigger_count = 0 },
	{ config_id = 1033035, name = "MONSTER_TIDE_DIE_33035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_33035", action = "action_EVENT_MONSTER_TIDE_DIE_33035", trigger_count = 0 },
	{ config_id = 1033036, name = "MONSTER_TIDE_DIE_33036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_33036", action = "action_EVENT_MONSTER_TIDE_DIE_33036", trigger_count = 0 },
	{ config_id = 1033037, name = "MONSTER_TIDE_DIE_33037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_33037", action = "action_EVENT_MONSTER_TIDE_DIE_33037", trigger_count = 0 },
	{ config_id = 1033038, name = "MONSTER_TIDE_DIE_33038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_33038", action = "action_EVENT_MONSTER_TIDE_DIE_33038", trigger_count = 0 }
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
		monsters = { 33002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_33023", "MONSTER_TIDE_DIE_33024", "MONSTER_TIDE_DIE_33025", "MONSTER_TIDE_DIE_33026", "MONSTER_TIDE_DIE_33027", "MONSTER_TIDE_DIE_33028", "MONSTER_TIDE_DIE_33029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 33003, 33004, 33005, 33006, 33007, 33008, 33009, 33010, 33011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 33020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_33032", "MONSTER_TIDE_DIE_33033", "MONSTER_TIDE_DIE_33034", "MONSTER_TIDE_DIE_33035", "MONSTER_TIDE_DIE_33036", "MONSTER_TIDE_DIE_33037", "MONSTER_TIDE_DIE_33038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 33001, 33012, 33013, 33014, 33015, 33016, 33017, 33018, 33019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_33023(context, evt)
	if 33002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_33023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001033, {33003,33004}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001033, {33005,33006}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001033, {33007,33008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33024(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001033, {33009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33025(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001033, {33010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001033, {33011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001033, {33003,33004}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001033, {33005,33006}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001033, {33007,33008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_33032(context, evt)
	if 33020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_33032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001033, {33001,33012}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001033, {33013,33014}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001033, {33015,33016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001033, {33017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33034(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001033, {33018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001033, {33019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001033, {33001,33012}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001033, {33013,33014}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_33038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_33038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001033, {33015,33016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end