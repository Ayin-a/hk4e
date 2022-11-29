-- 基础信息
local base_info = {
	group_id = 302001063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63001, monster_id = 21010201, pos = { x = 2150.633, y = 275.684, z = -256.244 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63002, monster_id = 21010201, pos = { x = 2162.658, y = 276.501, z = -265.908 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63003, monster_id = 21010201, pos = { x = 2150.633, y = 275.684, z = -256.244 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63004, monster_id = 21010201, pos = { x = 2159.219, y = 276.968, z = -253.888 }, rot = { x = 0.000, y = 198.070, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63005, monster_id = 21010201, pos = { x = 2164.241, y = 277.408, z = -258.984 }, rot = { x = 0.000, y = 250.288, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63006, monster_id = 21010201, pos = { x = 2149.365, y = 275.810, z = -262.910 }, rot = { x = 0.000, y = 59.641, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63007, monster_id = 21010901, pos = { x = 2168.446, y = 278.200, z = -260.382 }, rot = { x = 0.000, y = 276.279, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63008, monster_id = 21011001, pos = { x = 2164.810, y = 278.315, z = -252.999 }, rot = { x = 0.000, y = 236.476, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63009, monster_id = 21030301, pos = { x = 2157.310, y = 276.898, z = -268.774 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 3 },
	{ config_id = 63010, monster_id = 21020201, pos = { x = 2150.400, y = 276.492, z = -266.341 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 63011, monster_id = 21020201, pos = { x = 2155.088, y = 276.338, z = -253.453 }, rot = { x = 0.000, y = 169.139, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 63012, monster_id = 21010201, pos = { x = 2159.219, y = 276.968, z = -253.888 }, rot = { x = 0.000, y = 198.070, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63013, monster_id = 21010201, pos = { x = 2164.241, y = 277.408, z = -258.984 }, rot = { x = 0.000, y = 250.288, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63014, monster_id = 21010201, pos = { x = 2149.365, y = 275.810, z = -262.910 }, rot = { x = 0.000, y = 59.641, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63015, monster_id = 21010901, pos = { x = 2168.446, y = 278.200, z = -260.382 }, rot = { x = 0.000, y = 276.279, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63016, monster_id = 21011001, pos = { x = 2164.810, y = 278.315, z = -252.999 }, rot = { x = 0.000, y = 236.476, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 },
	{ config_id = 63017, monster_id = 21030301, pos = { x = 2157.310, y = 276.898, z = -268.774 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 40, area_id = 3 },
	{ config_id = 63018, monster_id = 21020201, pos = { x = 2150.400, y = 276.492, z = -266.341 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 63019, monster_id = 21020201, pos = { x = 2155.088, y = 276.338, z = -253.453 }, rot = { x = 0.000, y = 169.139, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 3 },
	{ config_id = 63020, monster_id = 21010201, pos = { x = 2162.658, y = 276.501, z = -265.908 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 3 }
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
	{ config_id = 1063023, name = "ANY_MONSTER_LIVE_63023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_63023", action = "action_EVENT_ANY_MONSTER_LIVE_63023", trigger_count = 0 },
	{ config_id = 1063024, name = "MONSTER_TIDE_DIE_63024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_63024", action = "action_EVENT_MONSTER_TIDE_DIE_63024", trigger_count = 0 },
	{ config_id = 1063025, name = "MONSTER_TIDE_DIE_63025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_63025", action = "action_EVENT_MONSTER_TIDE_DIE_63025", trigger_count = 0 },
	{ config_id = 1063026, name = "MONSTER_TIDE_DIE_63026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_63026", action = "action_EVENT_MONSTER_TIDE_DIE_63026", trigger_count = 0 },
	{ config_id = 1063027, name = "MONSTER_TIDE_DIE_63027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_63027", action = "action_EVENT_MONSTER_TIDE_DIE_63027", trigger_count = 0 },
	{ config_id = 1063028, name = "MONSTER_TIDE_DIE_63028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_63028", action = "action_EVENT_MONSTER_TIDE_DIE_63028", trigger_count = 0 },
	{ config_id = 1063029, name = "MONSTER_TIDE_DIE_63029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_63029", action = "action_EVENT_MONSTER_TIDE_DIE_63029", trigger_count = 0 },
	{ config_id = 1063032, name = "ANY_MONSTER_LIVE_63032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_63032", action = "action_EVENT_ANY_MONSTER_LIVE_63032", trigger_count = 0 },
	{ config_id = 1063033, name = "MONSTER_TIDE_DIE_63033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_63033", action = "action_EVENT_MONSTER_TIDE_DIE_63033", trigger_count = 0 },
	{ config_id = 1063034, name = "MONSTER_TIDE_DIE_63034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_63034", action = "action_EVENT_MONSTER_TIDE_DIE_63034", trigger_count = 0 },
	{ config_id = 1063035, name = "MONSTER_TIDE_DIE_63035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_63035", action = "action_EVENT_MONSTER_TIDE_DIE_63035", trigger_count = 0 },
	{ config_id = 1063036, name = "MONSTER_TIDE_DIE_63036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_63036", action = "action_EVENT_MONSTER_TIDE_DIE_63036", trigger_count = 0 },
	{ config_id = 1063037, name = "MONSTER_TIDE_DIE_63037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_63037", action = "action_EVENT_MONSTER_TIDE_DIE_63037", trigger_count = 0 },
	{ config_id = 1063038, name = "MONSTER_TIDE_DIE_63038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_63038", action = "action_EVENT_MONSTER_TIDE_DIE_63038", trigger_count = 0 }
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
		monsters = { 63002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_63023", "MONSTER_TIDE_DIE_63024", "MONSTER_TIDE_DIE_63025", "MONSTER_TIDE_DIE_63026", "MONSTER_TIDE_DIE_63027", "MONSTER_TIDE_DIE_63028", "MONSTER_TIDE_DIE_63029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 63003, 63004, 63005, 63006, 63007, 63008, 63009, 63010, 63011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 63020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_63032", "MONSTER_TIDE_DIE_63033", "MONSTER_TIDE_DIE_63034", "MONSTER_TIDE_DIE_63035", "MONSTER_TIDE_DIE_63036", "MONSTER_TIDE_DIE_63037", "MONSTER_TIDE_DIE_63038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 63001, 63012, 63013, 63014, 63015, 63016, 63017, 63018, 63019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_63023(context, evt)
	if 63002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_63023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001063, {63003,63004}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001063, {63005,63006}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001063, {63007,63008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63024(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001063, {63009}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63025(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001063, {63010}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001063, {63011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001063, {63003,63004}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001063, {63005,63006}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001063, {63007,63008}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_63032(context, evt)
	if 63020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_63032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001063, {63001,63012}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001063, {63013,63014}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001063, {63015,63016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001063, {63017}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63034(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 302001063, {63018}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 302001063, {63019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001063, {63001,63012}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001063, {63013,63014}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_63038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_63038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001063, {63015,63016}, 6, 1, 2) then
		return -1
	end
	
	return 0
end