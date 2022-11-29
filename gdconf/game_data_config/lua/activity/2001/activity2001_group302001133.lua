-- 基础信息
local base_info = {
	group_id = 302001133
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 133001, monster_id = 23020101, pos = { x = -931.877, y = 197.626, z = 777.206 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 8 },
	{ config_id = 133002, monster_id = 23020101, pos = { x = -941.176, y = 197.632, z = 778.997 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 8 },
	{ config_id = 133003, monster_id = 23020101, pos = { x = -935.991, y = 197.678, z = 780.206 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 8 },
	{ config_id = 133011, monster_id = 23020102, pos = { x = -941.176, y = 197.632, z = 778.997 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 8 },
	{ config_id = 133012, monster_id = 23020102, pos = { x = -931.877, y = 197.625, z = 777.206 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 8 },
	{ config_id = 133013, monster_id = 23020102, pos = { x = -935.991, y = 197.678, z = 780.206 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 8 },
	{ config_id = 133014, monster_id = 25010501, pos = { x = -939.791, y = 197.246, z = 768.545 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 8 },
	{ config_id = 133015, monster_id = 25010301, pos = { x = -942.902, y = 197.255, z = 771.282 }, rot = { x = 0.000, y = 50.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 8 },
	{ config_id = 133016, monster_id = 25010501, pos = { x = -943.175, y = 197.373, z = 774.126 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 8 },
	{ config_id = 133017, monster_id = 25010301, pos = { x = -935.759, y = 197.280, z = 768.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 8 }
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
	{ config_id = 1133004, name = "ANY_MONSTER_DIE_133004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_133004", action = "action_EVENT_ANY_MONSTER_DIE_133004" },
	{ config_id = 1133021, name = "ANY_MONSTER_DIE_133021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_133021", action = "action_EVENT_ANY_MONSTER_DIE_133021", trigger_count = 0 },
	{ config_id = 1133022, name = "MONSTER_TIDE_DIE_133022", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_133022", action = "action_EVENT_MONSTER_TIDE_DIE_133022", trigger_count = 0 },
	{ config_id = 1133025, name = "MONSTER_TIDE_DIE_133025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_133025", action = "action_EVENT_MONSTER_TIDE_DIE_133025", trigger_count = 0 },
	{ config_id = 1133028, name = "ANY_MONSTER_LIVE_133028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_133028", action = "action_EVENT_ANY_MONSTER_LIVE_133028", trigger_count = 0 },
	{ config_id = 1133029, name = "MONSTER_TIDE_DIE_133029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_133029", action = "action_EVENT_MONSTER_TIDE_DIE_133029", trigger_count = 0 },
	{ config_id = 1133032, name = "MONSTER_TIDE_DIE_133032", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_133032", action = "action_EVENT_MONSTER_TIDE_DIE_133032", trigger_count = 0 }
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
		monsters = { 133001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_133021", "MONSTER_TIDE_DIE_133022", "MONSTER_TIDE_DIE_133025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 133002, 133003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 133012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_133004", "ANY_MONSTER_LIVE_133028", "MONSTER_TIDE_DIE_133029", "MONSTER_TIDE_DIE_133032" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 133011, 133013, 133014, 133015, 133016, 133017 },
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
function condition_EVENT_ANY_MONSTER_DIE_133004(context, evt)
	--判断死亡怪物的configid是否为 133012
	if evt.param1 ~= 133012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_133004(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001133, {133011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_133021(context, evt)
	--判断死亡怪物的configid是否为 133001
	if evt.param1 ~= 133001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_133021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001133, {133002}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_133022(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_133022(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001133, {133003}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_133025(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_133025(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001133, {133002}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_133028(context, evt)
	if 133012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_133028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为10，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001133, {133014,133015,133016,133017}, 10, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_133029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_133029(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 302001133, {133013}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_133032(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_133032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001133, {133011}, 1, 1, 1) then
		return -1
	end
	
	return 0
end