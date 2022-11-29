-- 基础信息
local base_info = {
	group_id = 302001101
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101001, monster_id = 21011201, pos = { x = 1336.835, y = 200.218, z = 719.186 }, rot = { x = 0.000, y = 100.807, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101002, monster_id = 21011201, pos = { x = 1336.520, y = 200.035, z = 714.489 }, rot = { x = 0.000, y = 60.983, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101003, monster_id = 21011201, pos = { x = 1336.835, y = 200.218, z = 719.186 }, rot = { x = 0.000, y = 100.807, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101004, monster_id = 21011201, pos = { x = 1340.601, y = 200.032, z = 723.375 }, rot = { x = 0.000, y = 158.270, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101005, monster_id = 21020301, pos = { x = 1340.555, y = 200.021, z = 711.239 }, rot = { x = 0.000, y = 22.167, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 5 },
	{ config_id = 101006, monster_id = 21011001, pos = { x = 1351.401, y = 200.175, z = 726.354 }, rot = { x = 0.000, y = 249.959, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101007, monster_id = 21011001, pos = { x = 1344.253, y = 200.000, z = 708.379 }, rot = { x = 0.000, y = 351.862, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101008, monster_id = 21030401, pos = { x = 1348.630, y = 200.096, z = 716.376 }, rot = { x = 0.000, y = 289.429, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101009, monster_id = 21010901, pos = { x = 1346.702, y = 200.055, z = 711.455 }, rot = { x = 0.000, y = 317.454, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101010, monster_id = 21010901, pos = { x = 1350.417, y = 200.191, z = 723.295 }, rot = { x = 0.000, y = 267.484, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101011, monster_id = 21010901, pos = { x = 1348.395, y = 200.000, z = 728.900 }, rot = { x = 0.000, y = 264.766, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101012, monster_id = 21011201, pos = { x = 1340.601, y = 200.032, z = 723.375 }, rot = { x = 0.000, y = 158.270, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101013, monster_id = 21020301, pos = { x = 1340.447, y = 200.019, z = 710.975 }, rot = { x = 0.000, y = 22.167, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 5 },
	{ config_id = 101014, monster_id = 21011002, pos = { x = 1351.483, y = 200.179, z = 726.354 }, rot = { x = 0.000, y = 249.959, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101015, monster_id = 21011002, pos = { x = 1344.318, y = 200.000, z = 708.230 }, rot = { x = 0.000, y = 351.862, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101016, monster_id = 21030401, pos = { x = 1348.507, y = 200.089, z = 716.187 }, rot = { x = 0.000, y = 300.413, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101017, monster_id = 21010902, pos = { x = 1346.729, y = 200.057, z = 711.579 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101018, monster_id = 21010902, pos = { x = 1350.417, y = 200.191, z = 723.295 }, rot = { x = 0.000, y = 267.484, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101019, monster_id = 21010902, pos = { x = 1348.395, y = 200.000, z = 728.900 }, rot = { x = 0.000, y = 264.766, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 },
	{ config_id = 101020, monster_id = 21011201, pos = { x = 1336.520, y = 200.035, z = 714.489 }, rot = { x = 0.000, y = 60.983, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 20, area_id = 5 }
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
	{ config_id = 1101021, name = "ANY_MONSTER_LIVE_101021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_101021", action = "action_EVENT_ANY_MONSTER_LIVE_101021", trigger_count = 0 },
	{ config_id = 1101022, name = "ANY_MONSTER_LIVE_101022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_101022", action = "action_EVENT_ANY_MONSTER_LIVE_101022", trigger_count = 0 }
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
		monsters = { 101002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_101021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 101003, 101004, 101005, 101006, 101007, 101008, 101009, 101010, 101011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 101020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_101022" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 101001, 101012, 101013, 101014, 101015, 101016, 101017, 101018, 101019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_101021(context, evt)
	if 101002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_101021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为9999，场上怪物最少2只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001101, {101003,101004,101005}, 9999, 2, 3) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001101, {101006,101007,101008}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001101, {101009,101010,101011}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_101022(context, evt)
	if 101020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_101022(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为9999，场上怪物最少2只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001101, {101001,101012,101013}, 9999, 2, 3) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001101, {101014,101015,101016}, 99999, 1, 1) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 302001101, {101017,101018,101019}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end