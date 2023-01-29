-- 基础信息
local base_info = {
	group_id = 133314027
}

-- Trigger变量
local defs = {
	pointarray_ID = 331400001,
	pointArrayNum = 2,
	gadget_shooter = 27002,
	gadget_shooterBase_1 = 27001
}

-- DEFS_MISCS
--玩法关注
--发射射线的点
defs.shootPoints={2}
--短暂停留的点
defs.shortStayPointList={}
--短暂停留的时间
defs.stayTime={}

--增删点后关注：
--停留点List
defs.stopPoints = {1,2}
--停留点对应底座
defs.shooterBaseList={
[1]=defs.gadget_shooterBase_1,
[2]=defs.gadget_shooterBase_1
}

--Lua Require所需：
--添加的按钮id
defs.optionID=435
--发射器id
defs.shooterGadgetID=defs.gadget_shooter

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
	{ config_id = 27001, gadget_id = 70330300, pos = { x = -853.121, y = -62.058, z = 5096.904 }, rot = { x = 0.000, y = 350.668, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 27002, gadget_id = 70330280, pos = { x = -853.121, y = -62.058, z = 5096.904 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 32, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "curMoveIndex", value = 1, no_refresh = true }
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
		gadgets = { 27001, 27002 },
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

require "V3_1/ChiWangShooter"