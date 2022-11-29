-- 基础信息
local base_info = {
	group_id = 302001099
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 99001, monster_id = 23020101, pos = { x = 1304.881, y = 200.824, z = 513.330 }, rot = { x = 0.000, y = 313.069, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 99002, monster_id = 23020101, pos = { x = 1304.209, y = 200.000, z = 528.880 }, rot = { x = 0.000, y = 227.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 99003, monster_id = 23020101, pos = { x = 1304.881, y = 200.824, z = 513.330 }, rot = { x = 0.000, y = 304.261, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 99004, monster_id = 23020101, pos = { x = 1308.873, y = 200.757, z = 518.651 }, rot = { x = 0.000, y = 285.479, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 99005, monster_id = 23020101, pos = { x = 1296.199, y = 200.206, z = 511.501 }, rot = { x = 0.000, y = 333.986, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 99006, monster_id = 23020101, pos = { x = 1309.048, y = 200.691, z = 522.494 }, rot = { x = 0.000, y = 246.248, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 99007, monster_id = 23020101, pos = { x = 1308.117, y = 200.835, z = 518.284 }, rot = { x = 0.000, y = 278.386, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1006, 4103, 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 99008, monster_id = 23020101, pos = { x = 1296.067, y = 200.202, z = 512.035 }, rot = { x = 0.000, y = 346.818, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1006, 4103, 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 99009, monster_id = 23020101, pos = { x = 1308.238, y = 200.693, z = 522.785 }, rot = { x = 0.000, y = 256.040, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 150, area_id = 5 },
	{ config_id = 99010, monster_id = 23020101, pos = { x = 1304.103, y = 200.000, z = 528.378 }, rot = { x = 0.000, y = 231.069, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4103, 4107, 4108, 4109 }, kill_score = 150, area_id = 5 }
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
	{ config_id = 1099011, name = "ANY_MONSTER_DIE_99011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99011", action = "action_EVENT_ANY_MONSTER_DIE_99011", trigger_count = 0 },
	{ config_id = 1099012, name = "ANY_MONSTER_DIE_99012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99012", action = "action_EVENT_ANY_MONSTER_DIE_99012", trigger_count = 0 }
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
		monsters = { 99002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_99011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 99003, 99004, 99005, 99006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 99010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_99012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 99001, 99007, 99008, 99009 },
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
function condition_EVENT_ANY_MONSTER_DIE_99011(context, evt)
	if 99002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99011(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001099, {99003,99004,99005,99006}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_99012(context, evt)
	if 99010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99012(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001099, {99001,99009,99007,99008}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end