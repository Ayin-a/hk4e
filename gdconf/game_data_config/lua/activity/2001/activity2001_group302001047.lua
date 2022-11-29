-- 基础信息
local base_info = {
	group_id = 302001047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 23020101, pos = { x = 1254.938, y = 200.049, z = -142.256 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 180, area_id = 5 },
	{ config_id = 47002, monster_id = 23020101, pos = { x = 1266.461, y = 200.410, z = -155.281 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 5 },
	{ config_id = 47003, monster_id = 23020101, pos = { x = 1254.938, y = 200.049, z = -142.256 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 5 },
	{ config_id = 47004, monster_id = 23020101, pos = { x = 1261.583, y = 200.354, z = -138.041 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 5 },
	{ config_id = 47005, monster_id = 21010201, pos = { x = 1267.869, y = 200.161, z = -142.327 }, rot = { x = 0.000, y = 235.918, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 47006, monster_id = 21010201, pos = { x = 1252.843, y = 200.237, z = -154.678 }, rot = { x = 0.000, y = 53.823, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 47007, monster_id = 21010201, pos = { x = 1269.608, y = 200.243, z = -146.256 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 47008, monster_id = 20010301, pos = { x = 1270.728, y = 200.060, z = -143.612 }, rot = { x = 0.000, y = 247.353, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 15, area_id = 5 },
	{ config_id = 47009, monster_id = 21010601, pos = { x = 1260.147, y = 200.908, z = -156.990 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 15, area_id = 5 },
	{ config_id = 47010, monster_id = 21020201, pos = { x = 1254.972, y = 200.881, z = -160.955 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 47011, monster_id = 21020201, pos = { x = 1259.150, y = 200.129, z = -135.469 }, rot = { x = 0.000, y = 170.163, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 47012, monster_id = 23020101, pos = { x = 1261.583, y = 200.354, z = -138.041 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 180, area_id = 5 },
	{ config_id = 47013, monster_id = 21010201, pos = { x = 1267.869, y = 200.161, z = -142.327 }, rot = { x = 0.000, y = 235.918, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 47014, monster_id = 21010201, pos = { x = 1252.843, y = 200.237, z = -154.678 }, rot = { x = 0.000, y = 53.823, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 47015, monster_id = 21010201, pos = { x = 1269.608, y = 200.243, z = -146.256 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 47016, monster_id = 20010301, pos = { x = 1270.728, y = 200.060, z = -143.612 }, rot = { x = 0.000, y = 247.353, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 15, area_id = 5 },
	{ config_id = 47017, monster_id = 21010601, pos = { x = 1260.147, y = 200.908, z = -156.990 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 15, area_id = 5 },
	{ config_id = 47018, monster_id = 21020201, pos = { x = 1254.972, y = 200.881, z = -160.955 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 47019, monster_id = 21020201, pos = { x = 1259.150, y = 200.129, z = -135.469 }, rot = { x = 0.000, y = 170.163, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 47020, monster_id = 23020101, pos = { x = 1266.461, y = 200.410, z = -155.281 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 180, area_id = 5 }
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
	{ config_id = 1047023, name = "ANY_MONSTER_DIE_47023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47023", action = "action_EVENT_ANY_MONSTER_DIE_47023", trigger_count = 0 },
	{ config_id = 1047032, name = "ANY_MONSTER_DIE_47032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47032", action = "action_EVENT_ANY_MONSTER_DIE_47032", trigger_count = 0 }
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
		monsters = { 47002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_47023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 47003, 47004, 47005, 47006, 47007, 47008, 47009, 47010, 47011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 47020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_47032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 47001, 47012, 47013, 47014, 47015, 47016, 47017, 47018, 47019 },
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
function condition_EVENT_ANY_MONSTER_DIE_47023(context, evt)
	if 47002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001047, {47003,47004}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_47032(context, evt)
	if 47020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001047, {47001,47012}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end