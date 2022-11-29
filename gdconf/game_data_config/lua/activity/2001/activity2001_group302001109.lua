-- 基础信息
local base_info = {
	group_id = 302001109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109001, monster_id = 21020301, pos = { x = 1202.326, y = 200.610, z = 387.106 }, rot = { x = 0.000, y = 82.115, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 5 },
	{ config_id = 109002, monster_id = 21020301, pos = { x = 1213.945, y = 201.029, z = 383.107 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 109003, monster_id = 21020301, pos = { x = 1202.326, y = 200.610, z = 387.106 }, rot = { x = 0.000, y = 82.115, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 109004, monster_id = 21020501, pos = { x = 1207.708, y = 201.290, z = 379.606 }, rot = { x = 0.000, y = 0.727, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 250, area_id = 5 },
	{ config_id = 109005, monster_id = 21020301, pos = { x = 1216.437, y = 200.516, z = 391.109 }, rot = { x = 0.000, y = 262.640, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 109006, monster_id = 21010301, pos = { x = 1191.163, y = 200.385, z = 385.406 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 109007, monster_id = 21010501, pos = { x = 1226.219, y = 200.531, z = 394.175 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 109008, monster_id = 21011001, pos = { x = 1224.976, y = 200.070, z = 397.678 }, rot = { x = 0.000, y = 236.476, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 109009, monster_id = 21020101, pos = { x = 1211.417, y = 201.292, z = 373.585 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 109010, monster_id = 21020201, pos = { x = 1192.143, y = 200.839, z = 378.815 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 109011, monster_id = 22010201, pos = { x = 1201.979, y = 200.013, z = 400.031 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 5 },
	{ config_id = 109012, monster_id = 21020501, pos = { x = 1207.708, y = 201.290, z = 379.606 }, rot = { x = 0.000, y = 0.727, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 250, area_id = 5 },
	{ config_id = 109013, monster_id = 21020301, pos = { x = 1216.437, y = 200.516, z = 391.109 }, rot = { x = 0.000, y = 262.640, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 5 },
	{ config_id = 109014, monster_id = 21010301, pos = { x = 1191.163, y = 200.385, z = 385.406 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 109015, monster_id = 21010502, pos = { x = 1226.219, y = 200.531, z = 394.175 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 109016, monster_id = 21011002, pos = { x = 1224.976, y = 200.070, z = 397.678 }, rot = { x = 0.000, y = 236.476, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 109017, monster_id = 21020101, pos = { x = 1211.417, y = 201.292, z = 373.585 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 109018, monster_id = 21020202, pos = { x = 1192.143, y = 200.839, z = 378.815 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 109019, monster_id = 22010202, pos = { x = 1201.979, y = 200.013, z = 400.031 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 5 },
	{ config_id = 109020, monster_id = 21020301, pos = { x = 1213.945, y = 201.029, z = 383.107 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 5 }
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
	{ config_id = 1109021, name = "ANY_MONSTER_DIE_109021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109021", action = "action_EVENT_ANY_MONSTER_DIE_109021", trigger_count = 0 },
	{ config_id = 1109022, name = "ANY_MONSTER_DIE_109022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109022", action = "action_EVENT_ANY_MONSTER_DIE_109022", trigger_count = 0 }
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
		monsters = { 109002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_109021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 109003, 109004, 109005, 109006, 109007, 109008, 109009, 109010, 109011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 109020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_109022" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 109001, 109012, 109013, 109014, 109015, 109016, 109017, 109018, 109019 },
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
function condition_EVENT_ANY_MONSTER_DIE_109021(context, evt)
	if 109002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001109, {109003,109004,109005}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109022(context, evt)
	if 109020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109022(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001109, {109001,109012,109013}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end