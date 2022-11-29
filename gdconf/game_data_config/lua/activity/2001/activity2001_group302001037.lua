-- 基础信息
local base_info = {
	group_id = 302001037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 21010701, pos = { x = 2190.519, y = 227.101, z = -1246.804 }, rot = { x = 0.000, y = 103.479, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37002, monster_id = 21010701, pos = { x = 2205.115, y = 228.748, z = -1253.709 }, rot = { x = 0.000, y = 298.645, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37003, monster_id = 21010701, pos = { x = 2190.519, y = 227.101, z = -1246.804 }, rot = { x = 0.000, y = 103.479, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37004, monster_id = 21010701, pos = { x = 2202.456, y = 229.177, z = -1242.471 }, rot = { x = 0.000, y = 207.714, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37005, monster_id = 21010701, pos = { x = 2190.360, y = 227.053, z = -1248.554 }, rot = { x = 0.000, y = 118.753, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37006, monster_id = 21010701, pos = { x = 2194.519, y = 228.536, z = -1256.871 }, rot = { x = 0.000, y = 28.806, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37007, monster_id = 21011001, pos = { x = 2197.834, y = 228.823, z = -1257.557 }, rot = { x = 0.000, y = 342.793, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37008, monster_id = 21011001, pos = { x = 2196.660, y = 227.907, z = -1239.905 }, rot = { x = 0.000, y = 179.755, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37009, monster_id = 21030301, pos = { x = 2206.113, y = 228.948, z = -1247.681 }, rot = { x = 0.000, y = 257.262, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 37010, monster_id = 21020201, pos = { x = 2203.974, y = 229.624, z = -1257.250 }, rot = { x = 0.000, y = 323.341, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 37011, monster_id = 21020201, pos = { x = 2193.391, y = 227.362, z = -1242.840 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 37012, monster_id = 21010701, pos = { x = 2202.456, y = 229.177, z = -1242.471 }, rot = { x = 0.000, y = 207.714, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37013, monster_id = 21010701, pos = { x = 2190.360, y = 227.053, z = -1248.554 }, rot = { x = 0.000, y = 118.753, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37014, monster_id = 21010701, pos = { x = 2194.519, y = 228.536, z = -1256.871 }, rot = { x = 0.000, y = 28.806, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37015, monster_id = 21011001, pos = { x = 2197.834, y = 228.823, z = -1257.557 }, rot = { x = 0.000, y = 342.793, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37016, monster_id = 21011001, pos = { x = 2196.660, y = 227.907, z = -1239.905 }, rot = { x = 0.000, y = 179.755, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 },
	{ config_id = 37017, monster_id = 21030301, pos = { x = 2206.113, y = 228.948, z = -1247.681 }, rot = { x = 0.000, y = 257.262, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 37018, monster_id = 21020201, pos = { x = 2203.974, y = 229.624, z = -1257.250 }, rot = { x = 0.000, y = 323.341, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 37019, monster_id = 21020201, pos = { x = 2193.391, y = 227.362, z = -1242.840 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 1 },
	{ config_id = 37020, monster_id = 21010701, pos = { x = 2205.115, y = 228.748, z = -1253.709 }, rot = { x = 0.000, y = 298.645, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 1 }
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
	{ config_id = 1037023, name = "ANY_MONSTER_LIVE_37023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_37023", action = "action_EVENT_ANY_MONSTER_LIVE_37023", trigger_count = 0 },
	{ config_id = 1037024, name = "MONSTER_TIDE_DIE_37024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_37024", action = "action_EVENT_MONSTER_TIDE_DIE_37024", trigger_count = 0 },
	{ config_id = 1037025, name = "MONSTER_TIDE_DIE_37025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_37025", action = "action_EVENT_MONSTER_TIDE_DIE_37025", trigger_count = 0 },
	{ config_id = 1037026, name = "MONSTER_TIDE_DIE_37026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_37026", action = "action_EVENT_MONSTER_TIDE_DIE_37026", trigger_count = 0 },
	{ config_id = 1037027, name = "MONSTER_TIDE_DIE_37027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_37027", action = "action_EVENT_MONSTER_TIDE_DIE_37027", trigger_count = 0 },
	{ config_id = 1037028, name = "MONSTER_TIDE_DIE_37028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_37028", action = "action_EVENT_MONSTER_TIDE_DIE_37028", trigger_count = 0 },
	{ config_id = 1037029, name = "MONSTER_TIDE_DIE_37029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_37029", action = "action_EVENT_MONSTER_TIDE_DIE_37029", trigger_count = 0 },
	{ config_id = 1037032, name = "ANY_MONSTER_LIVE_37032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_37032", action = "action_EVENT_ANY_MONSTER_LIVE_37032", trigger_count = 0 },
	{ config_id = 1037033, name = "MONSTER_TIDE_DIE_37033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_37033", action = "action_EVENT_MONSTER_TIDE_DIE_37033", trigger_count = 0 },
	{ config_id = 1037034, name = "MONSTER_TIDE_DIE_37034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_37034", action = "action_EVENT_MONSTER_TIDE_DIE_37034", trigger_count = 0 },
	{ config_id = 1037035, name = "MONSTER_TIDE_DIE_37035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_37035", action = "action_EVENT_MONSTER_TIDE_DIE_37035", trigger_count = 0 },
	{ config_id = 1037036, name = "MONSTER_TIDE_DIE_37036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_37036", action = "action_EVENT_MONSTER_TIDE_DIE_37036", trigger_count = 0 },
	{ config_id = 1037037, name = "MONSTER_TIDE_DIE_37037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_37037", action = "action_EVENT_MONSTER_TIDE_DIE_37037", trigger_count = 0 },
	{ config_id = 1037038, name = "MONSTER_TIDE_DIE_37038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_37038", action = "action_EVENT_MONSTER_TIDE_DIE_37038", trigger_count = 0 }
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
		monsters = { 37002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_37023", "MONSTER_TIDE_DIE_37024", "MONSTER_TIDE_DIE_37025", "MONSTER_TIDE_DIE_37026", "MONSTER_TIDE_DIE_37027", "MONSTER_TIDE_DIE_37028", "MONSTER_TIDE_DIE_37029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 37003, 37004, 37005, 37006, 37007, 37008, 37009, 37010, 37011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 37020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_37032", "MONSTER_TIDE_DIE_37033", "MONSTER_TIDE_DIE_37034", "MONSTER_TIDE_DIE_37035", "MONSTER_TIDE_DIE_37036", "MONSTER_TIDE_DIE_37037", "MONSTER_TIDE_DIE_37038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 37001, 37012, 37013, 37014, 37015, 37016, 37017, 37018, 37019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_37023(context, evt)
	if 37002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_37023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001037, {37003,37004}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001037, {37005,37006}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001037, {37007,37008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37024(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001037, {37009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37025(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001037, {37010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001037, {37011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001037, {37003,37004}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001037, {37005,37006}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001037, {37007,37008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_37032(context, evt)
	if 37020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_37032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001037, {37001,37012}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001037, {37013,37014}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001037, {37015,37016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001037, {37017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37034(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001037, {37018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001037, {37019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001037, {37001,37012}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001037, {37013,37014}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_37038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_37038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001037, {37015,37016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end