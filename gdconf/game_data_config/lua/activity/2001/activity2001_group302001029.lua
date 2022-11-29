-- 基础信息
local base_info = {
	group_id = 302001029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29001, monster_id = 20010801, pos = { x = 1822.408, y = 194.600, z = -1381.916 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29002, monster_id = 20010901, pos = { x = 1837.443, y = 194.742, z = -1387.521 }, rot = { x = 0.000, y = 289.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 29003, monster_id = 20010801, pos = { x = 1824.967, y = 194.600, z = -1379.463 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29004, monster_id = 20010801, pos = { x = 1831.652, y = 194.600, z = -1375.692 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29005, monster_id = 20010801, pos = { x = 1835.653, y = 194.809, z = -1375.474 }, rot = { x = 0.000, y = 218.791, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29006, monster_id = 20010801, pos = { x = 1821.675, y = 194.600, z = -1388.026 }, rot = { x = 0.000, y = 61.031, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29007, monster_id = 21030101, pos = { x = 1825.045, y = 194.855, z = -1390.928 }, rot = { x = 0.000, y = 7.267, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29008, monster_id = 21030101, pos = { x = 1837.850, y = 195.159, z = -1378.897 }, rot = { x = 0.000, y = 258.344, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29009, monster_id = 20010901, pos = { x = 1832.763, y = 194.658, z = -1392.896 }, rot = { x = 0.000, y = 333.160, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 29010, monster_id = 20010901, pos = { x = 1828.162, y = 194.856, z = -1389.035 }, rot = { x = 0.000, y = 6.097, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 29011, monster_id = 21020101, pos = { x = 1833.926, y = 194.671, z = -1391.528 }, rot = { x = 0.000, y = 329.639, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 29012, monster_id = 20010801, pos = { x = 1829.641, y = 194.600, z = -1375.078 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29013, monster_id = 20010801, pos = { x = 1835.667, y = 195.052, z = -1377.651 }, rot = { x = 0.000, y = 229.799, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29014, monster_id = 20010801, pos = { x = 1823.932, y = 194.702, z = -1387.548 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29015, monster_id = 21030103, pos = { x = 1829.938, y = 194.856, z = -1391.678 }, rot = { x = 0.000, y = 349.497, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29016, monster_id = 21030103, pos = { x = 1837.130, y = 194.941, z = -1383.613 }, rot = { x = 0.000, y = 286.606, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 29017, monster_id = 20010904, pos = { x = 1833.741, y = 194.770, z = -1390.007 }, rot = { x = 0.000, y = 323.127, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 29018, monster_id = 20010904, pos = { x = 1822.872, y = 194.600, z = -1384.304 }, rot = { x = 0.000, y = 71.717, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 29019, monster_id = 21020101, pos = { x = 1826.500, y = 194.600, z = -1376.062 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 29020, monster_id = 20010904, pos = { x = 1837.394, y = 194.600, z = -1390.169 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 }
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
	{ config_id = 1029023, name = "ANY_MONSTER_LIVE_29023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_29023", action = "action_EVENT_ANY_MONSTER_LIVE_29023", trigger_count = 0 },
	{ config_id = 1029024, name = "MONSTER_TIDE_DIE_29024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_29024", action = "action_EVENT_MONSTER_TIDE_DIE_29024", trigger_count = 0 },
	{ config_id = 1029025, name = "MONSTER_TIDE_DIE_29025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_29025", action = "action_EVENT_MONSTER_TIDE_DIE_29025", trigger_count = 0 },
	{ config_id = 1029026, name = "MONSTER_TIDE_DIE_29026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_29026", action = "action_EVENT_MONSTER_TIDE_DIE_29026", trigger_count = 0 },
	{ config_id = 1029027, name = "MONSTER_TIDE_DIE_29027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_29027", action = "action_EVENT_MONSTER_TIDE_DIE_29027", trigger_count = 0 },
	{ config_id = 1029028, name = "MONSTER_TIDE_DIE_29028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_29028", action = "action_EVENT_MONSTER_TIDE_DIE_29028", trigger_count = 0 },
	{ config_id = 1029029, name = "MONSTER_TIDE_DIE_29029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_29029", action = "action_EVENT_MONSTER_TIDE_DIE_29029", trigger_count = 0 },
	{ config_id = 1029032, name = "ANY_MONSTER_LIVE_29032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_29032", action = "action_EVENT_ANY_MONSTER_LIVE_29032", trigger_count = 0 },
	{ config_id = 1029033, name = "MONSTER_TIDE_DIE_29033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_29033", action = "action_EVENT_MONSTER_TIDE_DIE_29033", trigger_count = 0 },
	{ config_id = 1029034, name = "MONSTER_TIDE_DIE_29034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_29034", action = "action_EVENT_MONSTER_TIDE_DIE_29034", trigger_count = 0 },
	{ config_id = 1029035, name = "MONSTER_TIDE_DIE_29035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_29035", action = "action_EVENT_MONSTER_TIDE_DIE_29035", trigger_count = 0 },
	{ config_id = 1029036, name = "MONSTER_TIDE_DIE_29036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_29036", action = "action_EVENT_MONSTER_TIDE_DIE_29036", trigger_count = 0 },
	{ config_id = 1029037, name = "MONSTER_TIDE_DIE_29037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_29037", action = "action_EVENT_MONSTER_TIDE_DIE_29037", trigger_count = 0 },
	{ config_id = 1029038, name = "MONSTER_TIDE_DIE_29038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_29038", action = "action_EVENT_MONSTER_TIDE_DIE_29038", trigger_count = 0 }
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
		monsters = { 29002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_29023", "MONSTER_TIDE_DIE_29024", "MONSTER_TIDE_DIE_29025", "MONSTER_TIDE_DIE_29026", "MONSTER_TIDE_DIE_29027", "MONSTER_TIDE_DIE_29028", "MONSTER_TIDE_DIE_29029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 29003, 29004, 29005, 29006, 29007, 29008, 29009, 29010, 29011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 29020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_29032", "MONSTER_TIDE_DIE_29033", "MONSTER_TIDE_DIE_29034", "MONSTER_TIDE_DIE_29035", "MONSTER_TIDE_DIE_29036", "MONSTER_TIDE_DIE_29037", "MONSTER_TIDE_DIE_29038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 29001, 29012, 29013, 29014, 29015, 29016, 29017, 29018, 29019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_29023(context, evt)
	if 29002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_29023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001029, {29003,29004}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001029, {29005,29006}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001029, {29007,29008}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29024(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001029, {29009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29025(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001029, {29010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29026(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001029, {29011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001029, {29003,29004}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001029, {29005,29006}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001029, {29007,29008}, 4, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_29032(context, evt)
	if 29020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_29032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001029, {29001,29012}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001029, {29013,29014}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001029, {29015,29016}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29033(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001029, {29017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29034(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001029, {29018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29035(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001029, {29019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001029, {29001,29012}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001029, {29013,29014}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_29038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_29038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001029, {29015,29016}, 2, 1, 2) then
		return -1
	end
	
	return 0
end