-- 基础信息
local base_info = {
	group_id = 302001065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65001, monster_id = 20011201, pos = { x = 1249.747, y = 306.499, z = -1771.007 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65002, monster_id = 20011201, pos = { x = 1258.914, y = 306.313, z = -1776.704 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65003, monster_id = 20011201, pos = { x = 1251.040, y = 306.667, z = -1768.910 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65004, monster_id = 20011201, pos = { x = 1259.999, y = 307.300, z = -1765.549 }, rot = { x = 0.000, y = 207.959, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65005, monster_id = 20011201, pos = { x = 1260.435, y = 307.078, z = -1768.251 }, rot = { x = 0.000, y = 237.755, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65006, monster_id = 20011201, pos = { x = 1250.727, y = 306.274, z = -1774.779 }, rot = { x = 0.000, y = 61.360, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65007, monster_id = 21030301, pos = { x = 1262.264, y = 306.862, z = -1770.292 }, rot = { x = 0.000, y = 243.745, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65008, monster_id = 21010501, pos = { x = 1252.652, y = 306.098, z = -1777.111 }, rot = { x = 0.000, y = 29.610, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65009, monster_id = 20011301, pos = { x = 1254.527, y = 306.169, z = -1779.011 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 2 },
	{ config_id = 65010, monster_id = 20011301, pos = { x = 1256.723, y = 307.203, z = -1764.393 }, rot = { x = 0.000, y = 188.879, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 2 },
	{ config_id = 65011, monster_id = 21020201, pos = { x = 1257.706, y = 306.230, z = -1778.499 }, rot = { x = 0.000, y = 333.017, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 65012, monster_id = 20011201, pos = { x = 1254.497, y = 307.058, z = -1764.943 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65013, monster_id = 20011201, pos = { x = 1257.850, y = 307.166, z = -1766.857 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65014, monster_id = 20011201, pos = { x = 1249.237, y = 306.249, z = -1776.990 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65015, monster_id = 21030303, pos = { x = 1262.732, y = 306.385, z = -1775.560 }, rot = { x = 0.000, y = 285.548, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65016, monster_id = 21010502, pos = { x = 1252.119, y = 306.288, z = -1780.323 }, rot = { x = 0.000, y = 32.783, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 },
	{ config_id = 65017, monster_id = 20011304, pos = { x = 1256.929, y = 306.298, z = -1782.464 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 2 },
	{ config_id = 65018, monster_id = 20011304, pos = { x = 1263.550, y = 306.604, z = -1772.833 }, rot = { x = 0.000, y = 268.750, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 2 },
	{ config_id = 65019, monster_id = 21020202, pos = { x = 1253.157, y = 306.946, z = -1766.152 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 2 },
	{ config_id = 65020, monster_id = 20011201, pos = { x = 1261.885, y = 306.196, z = -1778.382 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 2 }
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
	{ config_id = 1065023, name = "ANY_MONSTER_LIVE_65023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_65023", action = "action_EVENT_ANY_MONSTER_LIVE_65023", trigger_count = 0 },
	{ config_id = 1065024, name = "MONSTER_TIDE_DIE_65024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_65024", action = "action_EVENT_MONSTER_TIDE_DIE_65024", trigger_count = 0 },
	{ config_id = 1065025, name = "MONSTER_TIDE_DIE_65025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_65025", action = "action_EVENT_MONSTER_TIDE_DIE_65025", trigger_count = 0 },
	{ config_id = 1065026, name = "MONSTER_TIDE_DIE_65026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_65026", action = "action_EVENT_MONSTER_TIDE_DIE_65026", trigger_count = 0 },
	{ config_id = 1065027, name = "MONSTER_TIDE_DIE_65027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_65027", action = "action_EVENT_MONSTER_TIDE_DIE_65027", trigger_count = 0 },
	{ config_id = 1065028, name = "MONSTER_TIDE_DIE_65028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_65028", action = "action_EVENT_MONSTER_TIDE_DIE_65028", trigger_count = 0 },
	{ config_id = 1065029, name = "MONSTER_TIDE_DIE_65029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_65029", action = "action_EVENT_MONSTER_TIDE_DIE_65029", trigger_count = 0 },
	{ config_id = 1065032, name = "ANY_MONSTER_LIVE_65032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_65032", action = "action_EVENT_ANY_MONSTER_LIVE_65032", trigger_count = 0 },
	{ config_id = 1065033, name = "MONSTER_TIDE_DIE_65033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_65033", action = "action_EVENT_MONSTER_TIDE_DIE_65033", trigger_count = 0 },
	{ config_id = 1065034, name = "MONSTER_TIDE_DIE_65034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_65034", action = "action_EVENT_MONSTER_TIDE_DIE_65034", trigger_count = 0 },
	{ config_id = 1065035, name = "MONSTER_TIDE_DIE_65035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_65035", action = "action_EVENT_MONSTER_TIDE_DIE_65035", trigger_count = 0 },
	{ config_id = 1065036, name = "MONSTER_TIDE_DIE_65036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_65036", action = "action_EVENT_MONSTER_TIDE_DIE_65036", trigger_count = 0 },
	{ config_id = 1065037, name = "MONSTER_TIDE_DIE_65037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_65037", action = "action_EVENT_MONSTER_TIDE_DIE_65037", trigger_count = 0 },
	{ config_id = 1065038, name = "MONSTER_TIDE_DIE_65038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_65038", action = "action_EVENT_MONSTER_TIDE_DIE_65038", trigger_count = 0 }
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
		monsters = { 65002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_65023", "MONSTER_TIDE_DIE_65024", "MONSTER_TIDE_DIE_65025", "MONSTER_TIDE_DIE_65026", "MONSTER_TIDE_DIE_65027", "MONSTER_TIDE_DIE_65028", "MONSTER_TIDE_DIE_65029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 65003, 65004, 65005, 65006, 65007, 65008, 65009, 65010, 65011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 65020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_65032", "MONSTER_TIDE_DIE_65033", "MONSTER_TIDE_DIE_65034", "MONSTER_TIDE_DIE_65035", "MONSTER_TIDE_DIE_65036", "MONSTER_TIDE_DIE_65037", "MONSTER_TIDE_DIE_65038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 65001, 65012, 65013, 65014, 65015, 65016, 65017, 65018, 65019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_65023(context, evt)
	if 65002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_65023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001065, {65003,65004}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001065, {65005,65006}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001065, {65007,65008}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65024(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001065, {65009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65025(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001065, {65010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65026(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001065, {65011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001065, {65003,65004}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001065, {65005,65006}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001065, {65007,65008}, 2, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_65032(context, evt)
	if 65020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_65032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001065, {65001,65012}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001065, {65013,65014}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001065, {65015,65016}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65033(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001065, {65017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65034(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001065, {65018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65035(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001065, {65019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001065, {65001,65012}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001065, {65013,65014}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_65038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_65038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001065, {65015,65016}, 2, 2, 2) then
		return -1
	end
	
	return 0
end