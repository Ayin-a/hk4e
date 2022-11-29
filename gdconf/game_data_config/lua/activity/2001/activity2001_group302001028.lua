-- 基础信息
local base_info = {
	group_id = 302001028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 23020101, pos = { x = -153.285, y = 201.584, z = -442.415 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28002, monster_id = 23020101, pos = { x = -153.285, y = 201.584, z = -442.415 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28003, monster_id = 23020101, pos = { x = -141.509, y = 200.489, z = -458.995 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28004, monster_id = 23020101, pos = { x = -156.802, y = 202.045, z = -468.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28005, monster_id = 23020101, pos = { x = -147.853, y = 200.849, z = -467.896 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28006, monster_id = 23020101, pos = { x = -145.451, y = 200.938, z = -443.246 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28007, monster_id = 23020101, pos = { x = -141.509, y = 200.489, z = -458.995 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28008, monster_id = 23020101, pos = { x = -156.802, y = 202.045, z = -468.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28009, monster_id = 23020101, pos = { x = -147.853, y = 200.849, z = -467.896 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28010, monster_id = 23020101, pos = { x = -145.451, y = 200.938, z = -443.246 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28011, monster_id = 23020101, pos = { x = -142.060, y = 201.236, z = -452.007 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28012, monster_id = 23020101, pos = { x = -164.047, y = 203.940, z = -448.985 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 },
	{ config_id = 28020, monster_id = 23020101, pos = { x = -154.531, y = 201.771, z = -440.046 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 7 }
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
	{ config_id = 1028023, name = "ANY_MONSTER_DIE_28023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28023", action = "action_EVENT_ANY_MONSTER_DIE_28023" },
	{ config_id = 1028024, name = "MONSTER_TIDE_DIE_28024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_28024", action = "action_EVENT_MONSTER_TIDE_DIE_28024", trigger_count = 0 },
	{ config_id = 1028027, name = "MONSTER_TIDE_DIE_28027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_28027", action = "action_EVENT_MONSTER_TIDE_DIE_28027", trigger_count = 0 },
	{ config_id = 1028032, name = "ANY_MONSTER_DIE_28032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28032", action = "action_EVENT_ANY_MONSTER_DIE_28032" },
	{ config_id = 1028033, name = "MONSTER_TIDE_DIE_28033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_28033", action = "action_EVENT_MONSTER_TIDE_DIE_28033", trigger_count = 0 },
	{ config_id = 1028036, name = "MONSTER_TIDE_DIE_28036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_28036", action = "action_EVENT_MONSTER_TIDE_DIE_28036", trigger_count = 0 }
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
		monsters = { 28002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28023", "MONSTER_TIDE_DIE_28024", "MONSTER_TIDE_DIE_28027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 28003, 28004, 28005, 28006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 28001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28032", "MONSTER_TIDE_DIE_28033", "MONSTER_TIDE_DIE_28036" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 28007, 28008, 28009, 28010, 28011, 28012, 28020 },
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
function condition_EVENT_ANY_MONSTER_DIE_28023(context, evt)
	if 28002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001028, {28003,28004}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_28024(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_28024(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001028, {28005,28006}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_28027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_28027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001028, {28003,28004}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28032(context, evt)
	if 28001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001028, {28012,28011,28010,28020}, 2, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_28033(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_28033(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001028, {28009,28008,28007}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_28036(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_28036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001028, {28012,28011,28010,28020}, 2, 2, 2) then
		return -1
	end
	
	return 0
end