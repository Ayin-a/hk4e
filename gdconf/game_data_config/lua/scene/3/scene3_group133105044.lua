-- 基础信息
local base_info = {
	group_id = 133105044
}

-- DEFS_MISCS
local defs = {

        --对应GalleryID
        gallery_id = 11002,

        --GroupID
        group_id = 133105044,

        --挑战方式 0-指定ID的鱼钓起计数 1-记录指定ID的鱼最大连续成功数
        fishing_type = 0,

        --这个Group对应的挑战ID
        challenge_id = 111178,

        --本挑战中，算作计数目标的鱼IDs 鱼ID在FishData表
        target_fish_id = 
        {3,1003},

}

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
	{ config_id = 44001, gadget_id = 70800039, pos = { x = 701.696, y = 200.000, z = 18.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, fishing_id = 10004, fishing_areas = { 300002 }, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 44002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 700.696, y = 202.720, z = 5.151 }, area_id = 9 }
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
		gadgets = { 44001 },
		regions = { 44002 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_1/FishingChallenge"