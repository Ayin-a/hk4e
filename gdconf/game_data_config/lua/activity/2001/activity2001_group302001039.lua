-- 基础信息
local base_info = {
	group_id = 302001039
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39001, monster_id = 25060101, pos = { x = 1325.117, y = 200.029, z = 930.706 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 39002, monster_id = 25030301, pos = { x = 1334.271, y = 200.006, z = 928.530 }, rot = { x = 0.000, y = 297.857, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 39003, monster_id = 25060101, pos = { x = 1325.117, y = 200.029, z = 930.706 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 39004, monster_id = 25010201, pos = { x = 1327.744, y = 200.068, z = 924.039 }, rot = { x = 0.000, y = 40.978, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39005, monster_id = 25010201, pos = { x = 1330.669, y = 200.425, z = 934.426 }, rot = { x = 0.000, y = 176.429, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39006, monster_id = 25030301, pos = { x = 1330.637, y = 200.000, z = 925.003 }, rot = { x = 0.000, y = 313.421, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 39007, monster_id = 25010501, pos = { x = 1338.151, y = 200.000, z = 930.234 }, rot = { x = 0.000, y = 257.932, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39008, monster_id = 25010601, pos = { x = 1332.155, y = 200.634, z = 937.916 }, rot = { x = 0.000, y = 167.419, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39009, monster_id = 25010501, pos = { x = 1331.731, y = 200.000, z = 921.638 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39010, monster_id = 25010601, pos = { x = 1321.412, y = 200.000, z = 929.323 }, rot = { x = 0.000, y = 83.741, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39012, monster_id = 25010201, pos = { x = 1327.744, y = 200.068, z = 924.039 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39013, monster_id = 25010201, pos = { x = 1330.669, y = 200.425, z = 934.426 }, rot = { x = 0.000, y = 158.012, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39014, monster_id = 25030301, pos = { x = 1330.830, y = 200.000, z = 924.529 }, rot = { x = 0.000, y = 321.872, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 39015, monster_id = 25010501, pos = { x = 1338.151, y = 200.000, z = 930.234 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39016, monster_id = 25010601, pos = { x = 1332.155, y = 200.634, z = 937.916 }, rot = { x = 0.000, y = 236.476, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39017, monster_id = 25010501, pos = { x = 1331.731, y = 200.000, z = 921.638 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39018, monster_id = 25010601, pos = { x = 1321.412, y = 200.000, z = 929.323 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 20, area_id = 5 },
	{ config_id = 39020, monster_id = 25030301, pos = { x = 1334.271, y = 200.006, z = 928.530 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 50, area_id = 5 }
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
	{ config_id = 1039023, name = "ANY_MONSTER_LIVE_39023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_39023", action = "action_EVENT_ANY_MONSTER_LIVE_39023", trigger_count = 0 },
	{ config_id = 1039032, name = "ANY_MONSTER_LIVE_39032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_39032", action = "action_EVENT_ANY_MONSTER_LIVE_39032", trigger_count = 0 }
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
		monsters = { 39002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_39023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 39003, 39004, 39005, 39006, 39007, 39008, 39009, 39010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 39020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_39032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 39001, 39012, 39013, 39014, 39015, 39016, 39017, 39018 },
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
function condition_EVENT_ANY_MONSTER_LIVE_39023(context, evt)
	if 39002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_39023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001039, {39003,39004,39005,39006}, 99999, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001039, {39007,39008,39009,39010}, 99999, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_39032(context, evt)
	if 39020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_39032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001039, {39001,39012,39013,39014}, 99999, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 302001039, {39015,39016,39017,39018}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end