-- 基础信息
local base_info = {
	group_id = 133301671
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 671001, monster_id = 28060601, pos = { x = -231.160, y = 247.206, z = 3751.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 22 },
	{ config_id = 671002, monster_id = 28060602, pos = { x = -264.422, y = 260.017, z = 3741.443 }, rot = { x = 0.000, y = 116.195, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 22 },
	{ config_id = 671003, monster_id = 28060603, pos = { x = -301.535, y = 245.122, z = 3739.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 22 },
	{ config_id = 671004, monster_id = 28050106, pos = { x = -286.174, y = 247.568, z = 3750.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
	{ config_id = 671005, monster_id = 28050106, pos = { x = -263.482, y = 257.052, z = 3748.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
	{ config_id = 671006, monster_id = 28050106, pos = { x = -267.005, y = 256.025, z = 3751.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
	{ config_id = 671007, monster_id = 28050106, pos = { x = -316.547, y = 239.274, z = 3726.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
	{ config_id = 671008, monster_id = 28050106, pos = { x = -298.393, y = 247.189, z = 3726.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
	{ config_id = 671009, monster_id = 28050106, pos = { x = -312.543, y = 241.514, z = 3738.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
	{ config_id = 671010, monster_id = 28050106, pos = { x = -289.293, y = 252.050, z = 3734.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
	{ config_id = 671014, monster_id = 28060601, pos = { x = -207.970, y = 274.303, z = 3713.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 29 },
	{ config_id = 671015, monster_id = 28060601, pos = { x = -246.793, y = 272.208, z = 3716.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 22 },
	{ config_id = 671016, monster_id = 28060601, pos = { x = -216.790, y = 270.532, z = 3723.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 22 }
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
		monsters = { 671001, 671002, 671003, 671004, 671005, 671006, 671007, 671008, 671009, 671010, 671014, 671015, 671016 },
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