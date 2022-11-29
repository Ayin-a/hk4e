-- 基础信息
local base_info = {
	group_id = 302001119
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 119001, monster_id = 23030101, pos = { x = 543.358, y = 200.377, z = 587.346 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109, 9002 }, kill_score = 180, area_id = 6 },
	{ config_id = 119002, monster_id = 23030101, pos = { x = 529.290, y = 200.592, z = 585.726 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109, 9002 }, kill_score = 180, area_id = 6 },
	{ config_id = 119003, monster_id = 23030101, pos = { x = 538.206, y = 200.521, z = 594.684 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109, 9002 }, kill_score = 180, area_id = 6 },
	{ config_id = 119011, monster_id = 23030102, pos = { x = 529.290, y = 200.592, z = 585.726 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109, 9002 }, kill_score = 180, area_id = 6 },
	{ config_id = 119012, monster_id = 23030102, pos = { x = 543.358, y = 200.377, z = 587.346 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109, 9002 }, kill_score = 180, area_id = 6 },
	{ config_id = 119013, monster_id = 23030102, pos = { x = 538.206, y = 200.521, z = 594.684 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109, 9002 }, kill_score = 180, area_id = 6 }
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
	{ config_id = 1119021, name = "ANY_MONSTER_DIE_119021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_119021", action = "action_EVENT_ANY_MONSTER_DIE_119021", trigger_count = 0 },
	{ config_id = 1119022, name = "MONSTER_TIDE_DIE_119022", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_119022", action = "action_EVENT_MONSTER_TIDE_DIE_119022", trigger_count = 0 },
	{ config_id = 1119025, name = "MONSTER_TIDE_DIE_119025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_119025", action = "action_EVENT_MONSTER_TIDE_DIE_119025", trigger_count = 0 },
	{ config_id = 1119028, name = "ANY_MONSTER_DIE_119028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_119028", action = "action_EVENT_ANY_MONSTER_DIE_119028", trigger_count = 0 },
	{ config_id = 1119029, name = "MONSTER_TIDE_DIE_119029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_119029", action = "action_EVENT_MONSTER_TIDE_DIE_119029", trigger_count = 0 },
	{ config_id = 1119032, name = "MONSTER_TIDE_DIE_119032", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_119032", action = "action_EVENT_MONSTER_TIDE_DIE_119032", trigger_count = 0 }
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
		monsters = { 119001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_119021", "MONSTER_TIDE_DIE_119022", "MONSTER_TIDE_DIE_119025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 119002, 119003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 119012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_119028", "MONSTER_TIDE_DIE_119029", "MONSTER_TIDE_DIE_119032" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 119011, 119013 },
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
function condition_EVENT_ANY_MONSTER_DIE_119021(context, evt)
	--判断死亡怪物的configid是否为 119001
	if evt.param1 ~= 119001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_119021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001119, {119002}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_119022(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_119022(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001119, {119003}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_119025(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_119025(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001119, {119002}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_119028(context, evt)
	if 119012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_119028(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001119, {119011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_119029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_119029(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001119, {119013}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_119032(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_119032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001119, {119011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end