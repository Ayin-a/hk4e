-- 基础信息
local base_info = {
	group_id = 302001139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 139001, monster_id = 25010201, pos = { x = 440.848, y = 231.405, z = 1702.302 }, rot = { x = 0.000, y = 339.216, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 139002, monster_id = 25010701, pos = { x = 431.589, y = 231.916, z = 1712.041 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139003, monster_id = 25010701, pos = { x = 437.611, y = 232.224, z = 1714.608 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139004, monster_id = 25060101, pos = { x = 443.144, y = 231.541, z = 1705.537 }, rot = { x = 0.000, y = 303.068, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139005, monster_id = 25060101, pos = { x = 430.666, y = 231.529, z = 1706.422 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139006, monster_id = 25010301, pos = { x = 445.097, y = 231.755, z = 1710.851 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 139007, monster_id = 25010501, pos = { x = 442.878, y = 231.958, z = 1713.905 }, rot = { x = 0.000, y = 226.592, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 139008, monster_id = 25030301, pos = { x = 437.781, y = 231.407, z = 1701.755 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139009, monster_id = 25070101, pos = { x = 432.950, y = 231.346, z = 1703.386 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139010, monster_id = 25030201, pos = { x = 434.702, y = 232.171, z = 1714.981 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139011, monster_id = 25010701, pos = { x = 431.589, y = 231.916, z = 1712.041 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139012, monster_id = 25010201, pos = { x = 440.848, y = 231.405, z = 1702.302 }, rot = { x = 0.000, y = 339.216, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 139013, monster_id = 25010701, pos = { x = 437.611, y = 232.224, z = 1714.608 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139014, monster_id = 25060101, pos = { x = 443.144, y = 231.541, z = 1705.537 }, rot = { x = 0.000, y = 303.068, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139015, monster_id = 25060101, pos = { x = 430.666, y = 231.529, z = 1706.422 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139016, monster_id = 25010301, pos = { x = 445.097, y = 231.755, z = 1710.851 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 139017, monster_id = 25010501, pos = { x = 442.878, y = 231.958, z = 1713.905 }, rot = { x = 0.000, y = 226.592, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 6 },
	{ config_id = 139018, monster_id = 25030301, pos = { x = 437.781, y = 231.407, z = 1701.755 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139019, monster_id = 25070101, pos = { x = 432.950, y = 231.346, z = 1703.386 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139020, monster_id = 25030201, pos = { x = 434.702, y = 232.171, z = 1714.981 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 },
	{ config_id = 139035, monster_id = 25030301, pos = { x = 444.771, y = 231.670, z = 1708.258 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 6 }
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
	{ config_id = 1139021, name = "ANY_MONSTER_LIVE_139021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_139021", action = "action_EVENT_ANY_MONSTER_LIVE_139021", trigger_count = 0 },
	{ config_id = 1139022, name = "MONSTER_TIDE_DIE_139022", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_139022", action = "action_EVENT_MONSTER_TIDE_DIE_139022", trigger_count = 0 },
	{ config_id = 1139023, name = "MONSTER_TIDE_DIE_139023", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_139023", action = "action_EVENT_MONSTER_TIDE_DIE_139023", trigger_count = 0 },
	{ config_id = 1139024, name = "MONSTER_TIDE_DIE_139024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_139024", action = "action_EVENT_MONSTER_TIDE_DIE_139024", trigger_count = 0 },
	{ config_id = 1139025, name = "MONSTER_TIDE_DIE_139025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_139025", action = "action_EVENT_MONSTER_TIDE_DIE_139025", trigger_count = 0 },
	{ config_id = 1139026, name = "MONSTER_TIDE_DIE_139026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_139026", action = "action_EVENT_MONSTER_TIDE_DIE_139026", trigger_count = 0 },
	{ config_id = 1139027, name = "MONSTER_TIDE_DIE_139027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_139027", action = "action_EVENT_MONSTER_TIDE_DIE_139027", trigger_count = 0 },
	{ config_id = 1139028, name = "ANY_MONSTER_LIVE_139028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_139028", action = "action_EVENT_ANY_MONSTER_LIVE_139028", trigger_count = 0 },
	{ config_id = 1139029, name = "MONSTER_TIDE_DIE_139029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_139029", action = "action_EVENT_MONSTER_TIDE_DIE_139029", trigger_count = 0 },
	{ config_id = 1139030, name = "MONSTER_TIDE_DIE_139030", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_139030", action = "action_EVENT_MONSTER_TIDE_DIE_139030", trigger_count = 0 },
	{ config_id = 1139031, name = "MONSTER_TIDE_DIE_139031", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_139031", action = "action_EVENT_MONSTER_TIDE_DIE_139031", trigger_count = 0 },
	{ config_id = 1139032, name = "MONSTER_TIDE_DIE_139032", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_139032", action = "action_EVENT_MONSTER_TIDE_DIE_139032", trigger_count = 0 },
	{ config_id = 1139033, name = "MONSTER_TIDE_DIE_139033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_139033", action = "action_EVENT_MONSTER_TIDE_DIE_139033", trigger_count = 0 },
	{ config_id = 1139034, name = "MONSTER_TIDE_DIE_139034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_139034", action = "action_EVENT_MONSTER_TIDE_DIE_139034", trigger_count = 0 }
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
		monsters = { 139001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_139021", "MONSTER_TIDE_DIE_139022", "MONSTER_TIDE_DIE_139023", "MONSTER_TIDE_DIE_139024", "MONSTER_TIDE_DIE_139025", "MONSTER_TIDE_DIE_139026", "MONSTER_TIDE_DIE_139027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 139002, 139003, 139004, 139005, 139006, 139007, 139008, 139009, 139010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 139012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_139028", "MONSTER_TIDE_DIE_139029", "MONSTER_TIDE_DIE_139030", "MONSTER_TIDE_DIE_139031", "MONSTER_TIDE_DIE_139032", "MONSTER_TIDE_DIE_139033", "MONSTER_TIDE_DIE_139034" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 139011, 139013, 139014, 139015, 139016, 139017, 139018, 139019, 139020, 139035 },
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
function condition_EVENT_ANY_MONSTER_LIVE_139021(context, evt)
	if 139001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_139021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001139, {139002,139003}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001139, {139004,139005}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001139, {139006,139007}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139022(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139022(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001139, {139008}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139023(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139023(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001139, {139009}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139024(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139024(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001139, {139010}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139025(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139025(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001139, {139002,139003}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139026(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139026(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001139, {139004,139005}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139027(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139027(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001139, {139006,139007}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_139028(context, evt)
	if 139012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_139028(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001139, {139011,139013}, 2, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001139, {139014,139015}, 2, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001139, {139016,139017}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139029(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139029(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001139, {139018,139035}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139030(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139030(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001139, {139019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139031(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139031(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001139, {139020}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139032(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001139, {139011,139013}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139033(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139033(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001139, {139014,139015}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_139034(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_139034(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为4，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001139, {139016,139017}, 4, 2, 2) then
		return -1
	end
	
	return 0
end