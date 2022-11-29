-- 基础信息
local base_info = {
	group_id = 133301141
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141003, monster_id = 26090701, pos = { x = -564.099, y = 31.720, z = 3746.984 }, rot = { x = 0.000, y = 335.092, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 25 },
	{ config_id = 141004, monster_id = 26090701, pos = { x = -556.199, y = 32.259, z = 3747.234 }, rot = { x = 0.000, y = 137.911, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 25 },
	{ config_id = 141005, monster_id = 26090901, pos = { x = -645.384, y = 32.052, z = 3757.993 }, rot = { x = 0.000, y = 134.468, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 25 },
	{ config_id = 141006, monster_id = 26090901, pos = { x = -642.686, y = 32.409, z = 3752.700 }, rot = { x = 0.000, y = 265.983, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 25 },
	{ config_id = 141007, monster_id = 26090901, pos = { x = -641.253, y = 31.443, z = 3760.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 25 },
	{ config_id = 141009, monster_id = 26120101, pos = { x = -607.353, y = 30.856, z = 3714.761 }, rot = { x = 0.000, y = 144.414, z = 0.000 }, level = 33, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 25 },
	{ config_id = 141010, monster_id = 26120101, pos = { x = -584.750, y = 32.056, z = 3703.712 }, rot = { x = 0.000, y = 340.359, z = 0.000 }, level = 33, drop_tag = "大蕈兽", pose_id = 201, area_id = 25 },
	{ config_id = 141012, monster_id = 26090701, pos = { x = -564.037, y = 31.748, z = 3741.453 }, rot = { x = 0.000, y = 210.112, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 25 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 141001, gadget_id = 70290009, pos = { x = -564.212, y = 32.425, z = 3738.783 }, rot = { x = 0.000, y = 304.183, z = 0.000 }, level = 33, area_id = 25 },
		{ config_id = 141002, gadget_id = 70500000, pos = { x = -564.212, y = 32.425, z = 3738.783 }, rot = { x = 0.000, y = 304.184, z = 0.000 }, level = 33, point_type = 3005, owner = 141001, area_id = 25 }
	}
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
		monsters = { 141003, 141004, 141005, 141006, 141007, 141009, 141010, 141012 },
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

require "V3_0/DeathFieldStandard"