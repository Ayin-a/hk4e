-- 基础信息
local base_info = {
	group_id = 133307025
}

-- DEFS_MISCS
--风扇
local fans =
{
    25003
}
--沙堆
local sandpiles =
{
    25004  
}
--百叶窗
local shutters =
{

}
--百叶窗开关
local shutter_switches =
{

}
--每个风扇对应点阵
local FanToPointArray =
{
   
}
--沙堆风扇方向位置
local FanToSandpile =
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 201, pos = 1}

}

--百叶窗开关和百叶窗对应
local SwitchToShutter =
{

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
	{ config_id = 25001, gadget_id = 70330404, pos = { x = -1688.080, y = 20.634, z = 5671.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 25003, gadget_id = 70290698, pos = { x = -1688.314, y = 19.578, z = 5670.649 }, rot = { x = 0.000, y = 14.991, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 25004, gadget_id = 70290701, pos = { x = -1707.002, y = 18.923, z = 5676.024 }, rot = { x = 0.000, y = 151.217, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 }
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
		monsters = { },
		gadgets = { 25001, 25003, 25004 },
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

require "V3_4/ScarletKingFan"