-- 基础信息
local base_info = {
	group_id = 302001045
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 45001, monster_id = 23020102, pos = { x = 26.491, y = 267.701, z = 120.744 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 7 },
	{ config_id = 45002, monster_id = 23020101, pos = { x = 30.327, y = 267.366, z = 121.705 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 7 },
	{ config_id = 45003, monster_id = 23020102, pos = { x = 26.491, y = 267.701, z = 120.744 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 7 },
	{ config_id = 45004, monster_id = 23020101, pos = { x = 34.304, y = 267.966, z = 119.090 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 7 },
	{ config_id = 45012, monster_id = 23020102, pos = { x = 34.304, y = 267.966, z = 119.090 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 7 },
	{ config_id = 45013, monster_id = 25010301, pos = { x = 23.485, y = 268.373, z = 118.698 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 45014, monster_id = 25010301, pos = { x = 36.423, y = 268.148, z = 118.689 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 7 },
	{ config_id = 45020, monster_id = 23020102, pos = { x = 30.327, y = 267.366, z = 121.705 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 7 }
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
	{ config_id = 1045005, name = "ANY_MONSTER_DIE_45005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45005", action = "action_EVENT_ANY_MONSTER_DIE_45005" },
	{ config_id = 1045023, name = "ANY_MONSTER_DIE_45023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45023", action = "action_EVENT_ANY_MONSTER_DIE_45023" },
	{ config_id = 1045024, name = "MONSTER_TIDE_DIE_45024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_45024", action = "action_EVENT_MONSTER_TIDE_DIE_45024", trigger_count = 0 },
	{ config_id = 1045025, name = "MONSTER_TIDE_DIE_45025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_45025", action = "action_EVENT_MONSTER_TIDE_DIE_45025", trigger_count = 0 },
	{ config_id = 1045032, name = "ANY_MONSTER_LIVE_45032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_45032", action = "action_EVENT_ANY_MONSTER_LIVE_45032", trigger_count = 0 },
	{ config_id = 1045033, name = "MONSTER_TIDE_DIE_45033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_45033", action = "action_EVENT_MONSTER_TIDE_DIE_45033", trigger_count = 0 },
	{ config_id = 1045034, name = "MONSTER_TIDE_DIE_45034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_45034", action = "action_EVENT_MONSTER_TIDE_DIE_45034", trigger_count = 0 }
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
		monsters = { 45002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_45023", "MONSTER_TIDE_DIE_45024", "MONSTER_TIDE_DIE_45025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 45003, 45004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 45020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_45005", "ANY_MONSTER_LIVE_45032", "MONSTER_TIDE_DIE_45033", "MONSTER_TIDE_DIE_45034" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 45001, 45012, 45013, 45014 },
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
function condition_EVENT_ANY_MONSTER_DIE_45005(context, evt)
	--判断死亡怪物的configid是否为 45020
	if evt.param1 ~= 45020 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45005(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001045, {45001}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45023(context, evt)
	--判断死亡怪物的configid是否为 45002
	if evt.param1 ~= 45002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001045, {45003}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_45024(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_45024(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001045, {45004}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_45025(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_45025(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001045, {45003}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_45032(context, evt)
	if 45020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_45032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为10，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001045, {45013,45014}, 10, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_45033(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_45033(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001045, {45012}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_45034(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_45034(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001045, {45001}, 1, 1, 1) then
		return -1
	end
	
	return 0
end