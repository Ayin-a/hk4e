-- 基础信息
local base_info = {
	group_id = 133309324
}

-- Trigger变量
local defs = {
	pointarray_ID = 330900028,
	pointArrayNum = 3,
	gadget_shooter = 324002,
	gadget_shooterBase_1 = 324001
}

-- DEFS_MISCS
--玩法关注
--发射射线的点
defs.shootPoints={3}
--短暂停留的点
defs.shortStayPointList={}
--短暂停留的时间
defs.stayTime={3}

--增删点后关注：
--停留点List
defs.stopPoints = {1,2,3}
--停留点对应底座
defs.shooterBaseList={
[1]=defs.gadget_shooterBase_1,
[2]=defs.gadget_shooterBase_1,
[3]=defs.gadget_shooterBase_1,
}
--玩法结束时停留点
defs.finalShooterPoint = 3


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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 324001, gadget_id = 70330300, pos = { x = -2369.199, y = -12.866, z = 5400.646 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
		{ config_id = 324002, gadget_id = 70330280, pos = { x = -2369.199, y = -12.866, z = 5400.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
	},
	triggers = {
		{ config_id = 1324003, name = "SELECT_OPTION_324003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_324003", action = "action_EVENT_SELECT_OPTION_324003", trigger_count = 0 }
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

require "V3_1/ChiWangShooter"