-- 基础信息
local base_info = {
	group_id = 111101011
}

-- Trigger变量
local defs = {
	pointarray_ID = 110100048,
	pointArrayNum = 4
}

-- DEFS_MISCS
--添加的按钮id
defs.optionID=24
--发射器id
defs.shooterGadgetID=11001
--发射激光的点
defs.shootPoints={1,2}
--停留点List
defs.stopPoints = {1,2,4}
--停留点对应底座
defs.shooterBaseList={
[1]=11003,
[2]=11004,
[4]=11005,
}
--短暂停留的点
defs.shortStayPointList={2}
--短暂停留的时间
defs.stayTime={3}

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
	{ config_id = 11001, gadget_id = 70330280, pos = { x = 3001.269, y = 270.000, z = -1328.127 }, rot = { x = 0.000, y = 41.698, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true },
	{ config_id = 11002, gadget_id = 70330281, pos = { x = 3000.000, y = 270.000, z = -1322.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11003, gadget_id = 70330300, pos = { x = 2999.589, y = 268.422, z = -1326.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 11004, gadget_id = 70330300, pos = { x = 2996.576, y = 268.079, z = -1327.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 11005, gadget_id = 70330300, pos = { x = 3001.552, y = 268.356, z = -1331.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 11006, gadget_id = 70330282, pos = { x = 2999.556, y = 268.654, z = -1324.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_ChiWangLevelRequire"]= 2} }
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
		gadgets = { 11001, 11002, 11003, 11004, 11005, 11006 },
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