-- 基础信息
local base_info = {
	group_id = 133313182
}

-- Trigger变量
local defs = {
	chest_id = 182007,
	hint_gadget_id = 182006,
	region_id = 182008
}

-- DEFS_MISCS
local windball_worktops = 
{
    182001,
    182002,
    182003,
    182004,
    182005
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
	{ config_id = 182001, gadget_id = 70290672, pos = { x = -446.473, y = 238.307, z = 5281.462 }, rot = { x = 13.393, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 182002, gadget_id = 70290672, pos = { x = -495.392, y = 229.924, z = 5315.732 }, rot = { x = 13.393, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 182003, gadget_id = 70290672, pos = { x = -544.017, y = 233.946, z = 5285.738 }, rot = { x = 358.062, y = 357.619, z = 8.687 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 182004, gadget_id = 70290672, pos = { x = -564.889, y = 220.430, z = 5352.796 }, rot = { x = 358.062, y = 357.619, z = 8.687 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 182005, gadget_id = 70290673, pos = { x = -590.227, y = 205.830, z = 5409.159 }, rot = { x = 0.000, y = 313.673, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 182006, gadget_id = 70290693, pos = { x = -495.663, y = 218.400, z = 5378.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 182007, gadget_id = 70211101, pos = { x = -585.291, y = 207.458, z = 5404.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
	-- 玩法范围
	{ config_id = 182008, shape = RegionShape.POLYGON, pos = { x = -538.299, y = 193.295, z = 5348.474 }, height = 160.948, point_array = { { x = -527.732, y = 5211.395 }, { x = -440.875, y = 5268.901 }, { x = -428.547, y = 5302.958 }, { x = -475.732, y = 5425.895 }, { x = -554.406, y = 5485.553 }, { x = -648.052, y = 5467.409 }, { x = -616.060, y = 5329.564 } }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 玩法范围
	{ config_id = 1182008, name = "ENTER_REGION_182008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		gadgets = { 182001, 182002, 182003, 182004, 182005 },
		regions = { 182008 },
		triggers = { "ENTER_REGION_182008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_4/WindBall"