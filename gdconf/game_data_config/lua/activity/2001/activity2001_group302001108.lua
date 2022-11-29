-- 基础信息
local base_info = {
	group_id = 302001108
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 108001, monster_id = 23020101, pos = { x = 1352.125, y = 200.000, z = 191.601 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 180, area_id = 5 },
	{ config_id = 108002, monster_id = 23020101, pos = { x = 1362.735, y = 200.418, z = 179.061 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 5 },
	{ config_id = 108003, monster_id = 23020101, pos = { x = 1352.124, y = 200.000, z = 191.601 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 5 },
	{ config_id = 108004, monster_id = 23020101, pos = { x = 1362.619, y = 200.367, z = 192.566 }, rot = { x = 0.000, y = 194.542, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 180, area_id = 5 },
	{ config_id = 108005, monster_id = 21010201, pos = { x = 1362.130, y = 200.168, z = 194.615 }, rot = { x = 0.000, y = 235.918, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 108006, monster_id = 21010201, pos = { x = 1347.104, y = 200.245, z = 182.264 }, rot = { x = 0.000, y = 53.823, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 108007, monster_id = 21010201, pos = { x = 1363.869, y = 200.250, z = 190.686 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 108008, monster_id = 20010301, pos = { x = 1364.989, y = 200.067, z = 193.330 }, rot = { x = 0.000, y = 247.353, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 15, area_id = 5 },
	{ config_id = 108009, monster_id = 21010601, pos = { x = 1354.408, y = 200.915, z = 179.952 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 15, area_id = 5 },
	{ config_id = 108010, monster_id = 21020201, pos = { x = 1349.233, y = 200.888, z = 175.987 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 108011, monster_id = 21020201, pos = { x = 1353.411, y = 200.137, z = 201.473 }, rot = { x = 0.000, y = 170.163, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 108012, monster_id = 23020101, pos = { x = 1362.619, y = 200.367, z = 192.566 }, rot = { x = 0.000, y = 194.542, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 180, area_id = 5 },
	{ config_id = 108013, monster_id = 21010201, pos = { x = 1362.130, y = 200.168, z = 194.615 }, rot = { x = 0.000, y = 235.918, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 108014, monster_id = 21010201, pos = { x = 1347.104, y = 200.245, z = 182.264 }, rot = { x = 0.000, y = 53.823, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 108015, monster_id = 21010201, pos = { x = 1363.869, y = 200.250, z = 190.686 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 108016, monster_id = 20010301, pos = { x = 1364.989, y = 200.067, z = 193.330 }, rot = { x = 0.000, y = 247.353, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 15, area_id = 5 },
	{ config_id = 108017, monster_id = 21010601, pos = { x = 1354.408, y = 200.915, z = 179.952 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 15, area_id = 5 },
	{ config_id = 108018, monster_id = 21020201, pos = { x = 1349.233, y = 200.888, z = 175.987 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 108019, monster_id = 21020201, pos = { x = 1353.411, y = 200.137, z = 201.473 }, rot = { x = 0.000, y = 170.163, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 108020, monster_id = 23020101, pos = { x = 1362.708, y = 200.418, z = 179.096 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 180, area_id = 5 }
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
	{ config_id = 1108021, name = "ANY_MONSTER_DIE_108021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108021", action = "action_EVENT_ANY_MONSTER_DIE_108021", trigger_count = 0 },
	{ config_id = 1108022, name = "ANY_MONSTER_DIE_108022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_108022", action = "action_EVENT_ANY_MONSTER_DIE_108022", trigger_count = 0 }
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
		monsters = { 108002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_108021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 108003, 108004, 108005, 108006, 108007, 108008, 108009, 108010, 108011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 108020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_108022" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 108001, 108012, 108013, 108014, 108015, 108016, 108017, 108018, 108019 },
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
function condition_EVENT_ANY_MONSTER_DIE_108021(context, evt)
	if 108002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_108021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为999999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001108, {108003,108004}, 999999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_108022(context, evt)
	if 108020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_108022(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001108, {108001,108012}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end