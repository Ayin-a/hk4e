-- 基础信息
local base_info = {
	group_id = 133107801
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 801002, monster_id = 28020504, pos = { x = -560.181, y = 222.397, z = 305.694 }, rot = { x = 0.000, y = 126.173, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 13, area_id = 7 },
	{ config_id = 801003, monster_id = 28020502, pos = { x = -559.342, y = 222.397, z = 306.658 }, rot = { x = 0.000, y = 259.849, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 12, area_id = 7 },
	{ config_id = 801004, monster_id = 28020404, pos = { x = -682.457, y = 213.738, z = 146.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 3, area_id = 7 },
	{ config_id = 801005, monster_id = 28020505, pos = { x = -638.444, y = 227.495, z = 286.173 }, rot = { x = 0.000, y = 259.849, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 12, area_id = 7 },
	{ config_id = 801006, monster_id = 28020505, pos = { x = -585.199, y = 258.841, z = 351.326 }, rot = { x = 0.000, y = 49.774, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 13, area_id = 7 },
	{ config_id = 801007, monster_id = 28020409, pos = { x = -367.012, y = 209.107, z = 359.614 }, rot = { x = 0.000, y = 120.809, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 3, area_id = 7 },
	{ config_id = 801008, monster_id = 28020403, pos = { x = -721.822, y = 223.059, z = 314.259 }, rot = { x = 0.000, y = 139.300, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 1, area_id = 7 },
	{ config_id = 801009, monster_id = 28020506, pos = { x = -465.238, y = 202.472, z = 411.310 }, rot = { x = 0.000, y = 52.644, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 12, area_id = 7 },
	{ config_id = 801010, monster_id = 28020501, pos = { x = -624.481, y = 226.665, z = 323.197 }, rot = { x = 0.000, y = 66.029, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 12, area_id = 7 },
	{ config_id = 801011, monster_id = 28020504, pos = { x = -577.188, y = 226.410, z = 329.581 }, rot = { x = 0.000, y = 313.552, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 13, area_id = 7 },
	{ config_id = 801012, monster_id = 28020403, pos = { x = -720.258, y = 223.124, z = 308.997 }, rot = { x = 0.000, y = 138.880, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 1, area_id = 7 },
	{ config_id = 801013, monster_id = 28020502, pos = { x = -707.139, y = 225.612, z = 287.419 }, rot = { x = 0.000, y = 319.440, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 13, area_id = 7 },
	{ config_id = 801014, monster_id = 28020404, pos = { x = -683.488, y = 223.187, z = 278.191 }, rot = { x = 0.000, y = 107.170, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 3, area_id = 7 },
	{ config_id = 801015, monster_id = 28020404, pos = { x = -682.530, y = 223.187, z = 276.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "走兽", pose_id = 3, area_id = 7 }
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
		monsters = { 801002, 801003, 801004, 801005, 801006, 801007, 801008, 801009, 801010, 801011, 801012, 801013, 801014, 801015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 801007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
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