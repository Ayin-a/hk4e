-- 基础信息
local base_info = {
	group_id = 302001064
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 64001, monster_id = 21010201, pos = { x = 1857.284, y = 203.501, z = -227.730 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64002, monster_id = 21010201, pos = { x = 1869.070, y = 203.261, z = -237.868 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64003, monster_id = 21010201, pos = { x = 1857.284, y = 203.501, z = -227.730 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64004, monster_id = 21010201, pos = { x = 1865.697, y = 202.231, z = -224.423 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64005, monster_id = 21010701, pos = { x = 1870.747, y = 203.143, z = -228.170 }, rot = { x = 0.000, y = 233.451, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64006, monster_id = 21010701, pos = { x = 1856.931, y = 203.652, z = -235.645 }, rot = { x = 0.000, y = 52.365, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64007, monster_id = 21011001, pos = { x = 1874.361, y = 203.489, z = -230.844 }, rot = { x = 0.000, y = 270.335, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64008, monster_id = 21011001, pos = { x = 1873.690, y = 203.450, z = -234.167 }, rot = { x = 0.000, y = 271.029, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64009, monster_id = 20010701, pos = { x = 1864.168, y = 203.002, z = -240.085 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 3 },
	{ config_id = 64010, monster_id = 20010601, pos = { x = 1856.042, y = 203.753, z = -232.779 }, rot = { x = 0.000, y = 92.750, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 3 },
	{ config_id = 64011, monster_id = 21020201, pos = { x = 1860.793, y = 202.735, z = -224.760 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 64012, monster_id = 21010201, pos = { x = 1865.697, y = 202.231, z = -224.423 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64013, monster_id = 21010701, pos = { x = 1870.747, y = 203.143, z = -228.170 }, rot = { x = 0.000, y = 233.451, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64014, monster_id = 21010701, pos = { x = 1856.931, y = 203.652, z = -235.645 }, rot = { x = 0.000, y = 52.365, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64015, monster_id = 21011001, pos = { x = 1874.361, y = 203.489, z = -230.844 }, rot = { x = 0.000, y = 270.335, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64016, monster_id = 21011001, pos = { x = 1873.690, y = 203.450, z = -234.167 }, rot = { x = 0.000, y = 271.029, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 64017, monster_id = 20010701, pos = { x = 1864.168, y = 203.002, z = -240.085 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 3 },
	{ config_id = 64018, monster_id = 20010601, pos = { x = 1856.042, y = 203.753, z = -232.779 }, rot = { x = 0.000, y = 92.750, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 3 },
	{ config_id = 64019, monster_id = 21020201, pos = { x = 1860.793, y = 202.735, z = -224.760 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 64020, monster_id = 21010201, pos = { x = 1869.070, y = 203.261, z = -237.868 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 }
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
	{ config_id = 1064023, name = "ANY_MONSTER_LIVE_64023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_64023", action = "action_EVENT_ANY_MONSTER_LIVE_64023", trigger_count = 0 },
	{ config_id = 1064024, name = "MONSTER_TIDE_DIE_64024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_64024", action = "action_EVENT_MONSTER_TIDE_DIE_64024", trigger_count = 0 },
	{ config_id = 1064025, name = "MONSTER_TIDE_DIE_64025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_64025", action = "action_EVENT_MONSTER_TIDE_DIE_64025", trigger_count = 0 },
	{ config_id = 1064026, name = "MONSTER_TIDE_DIE_64026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_64026", action = "action_EVENT_MONSTER_TIDE_DIE_64026", trigger_count = 0 },
	{ config_id = 1064027, name = "MONSTER_TIDE_DIE_64027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_64027", action = "action_EVENT_MONSTER_TIDE_DIE_64027", trigger_count = 0 },
	{ config_id = 1064028, name = "MONSTER_TIDE_DIE_64028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_64028", action = "action_EVENT_MONSTER_TIDE_DIE_64028", trigger_count = 0 },
	{ config_id = 1064029, name = "MONSTER_TIDE_DIE_64029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_64029", action = "action_EVENT_MONSTER_TIDE_DIE_64029", trigger_count = 0 },
	{ config_id = 1064032, name = "ANY_MONSTER_LIVE_64032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_64032", action = "action_EVENT_ANY_MONSTER_LIVE_64032", trigger_count = 0 },
	{ config_id = 1064033, name = "MONSTER_TIDE_DIE_64033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_64033", action = "action_EVENT_MONSTER_TIDE_DIE_64033", trigger_count = 0 },
	{ config_id = 1064034, name = "MONSTER_TIDE_DIE_64034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_64034", action = "action_EVENT_MONSTER_TIDE_DIE_64034", trigger_count = 0 },
	{ config_id = 1064035, name = "MONSTER_TIDE_DIE_64035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_64035", action = "action_EVENT_MONSTER_TIDE_DIE_64035", trigger_count = 0 },
	{ config_id = 1064036, name = "MONSTER_TIDE_DIE_64036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_64036", action = "action_EVENT_MONSTER_TIDE_DIE_64036", trigger_count = 0 },
	{ config_id = 1064037, name = "MONSTER_TIDE_DIE_64037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_64037", action = "action_EVENT_MONSTER_TIDE_DIE_64037", trigger_count = 0 },
	{ config_id = 1064038, name = "MONSTER_TIDE_DIE_64038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_64038", action = "action_EVENT_MONSTER_TIDE_DIE_64038", trigger_count = 0 }
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
		monsters = { 64002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_64023", "MONSTER_TIDE_DIE_64024", "MONSTER_TIDE_DIE_64025", "MONSTER_TIDE_DIE_64026", "MONSTER_TIDE_DIE_64027", "MONSTER_TIDE_DIE_64028", "MONSTER_TIDE_DIE_64029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 64003, 64004, 64005, 64006, 64007, 64008, 64009, 64010, 64011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 64020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_64032", "MONSTER_TIDE_DIE_64033", "MONSTER_TIDE_DIE_64034", "MONSTER_TIDE_DIE_64035", "MONSTER_TIDE_DIE_64036", "MONSTER_TIDE_DIE_64037", "MONSTER_TIDE_DIE_64038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 64001, 64012, 64013, 64014, 64015, 64016, 64017, 64018, 64019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_64023(context, evt)
	if 64002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_64023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001064, {64003,64004}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001064, {64005,64006}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001064, {64007,64008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64024(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001064, {64009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64025(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001064, {64010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001064, {64011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001064, {64003,64004}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001064, {64005,64006}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001064, {64007,64008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_64032(context, evt)
	if 64020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_64032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001064, {64001,64012}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001064, {64013,64014}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001064, {64015,64016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001064, {64017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64034(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001064, {64018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001064, {64019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001064, {64001,64012}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001064, {64013,64014}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001064, {64015,64016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end