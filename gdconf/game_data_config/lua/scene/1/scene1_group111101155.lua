-- 基础信息
local base_info = {
	group_id = 111101155
}

-- DEFS_MISCS
function Modifier_TD_Test_A(context)
	ScriptLib.RefreshGroup(context, {group_id = 111101155, suite = 2})
	return 0
end

function Modifier_TD_Test_B(context)
	ScriptLib.RefreshGroup(context, {group_id = 111101155, suite = 1})
	return 0
end

function Modifier_TD_Test_C(context)
	ScriptLib.RefreshGroup(context, {group_id = 111101155, suite = 4})
	return 0
end

function Modifier_TD_Test_D(context)
	ScriptLib.RefreshGroup(context, {group_id = 111101155, suite = 3})
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155003, gadget_id = 70360002, pos = { x = 2335.447, y = 283.898, z = -1704.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 155001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2335.697, y = 283.898, z = -1703.377 }, team_ability_group_list = { "AbilityGroup_TD_Test_Modifier_A" } },
	{ config_id = 155002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2335.697, y = 283.898, z = -1703.377 }, team_ability_group_list = { "AbilityGroup_TD_Test_Modifier_B" } },
	{ config_id = 155004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2335.697, y = 283.898, z = -1703.377 }, ability_group_list = { "AbilityGroup_TD_Test_Modifier_C" } },
	{ config_id = 155005, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2335.697, y = 283.898, z = -1703.377 }, ability_group_list = { "AbilityGroup_TD_Test_Modifier_D" } }
}

-- 触发器
triggers = {
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
		gadgets = { 155003 },
		regions = { 155001 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 155003 },
		regions = { 155002 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 155003 },
		regions = { 155004 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 155003 },
		regions = { 155005 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================