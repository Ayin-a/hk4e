-- 基础信息
local base_info = {
	group_id = 166001540
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
	{ config_id = 540001, gadget_id = 70290353, pos = { x = 481.507, y = 100.043, z = 1330.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540002, gadget_id = 70290353, pos = { x = 420.275, y = 121.991, z = 1396.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540003, gadget_id = 70290353, pos = { x = 276.512, y = 163.244, z = 1348.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540004, gadget_id = 70290353, pos = { x = 298.398, y = 163.263, z = 1370.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540005, gadget_id = 70290353, pos = { x = 400.894, y = 153.814, z = 1265.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540006, gadget_id = 70290353, pos = { x = 476.669, y = 173.760, z = 1315.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540007, gadget_id = 70290353, pos = { x = 480.719, y = 173.100, z = 1357.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540008, gadget_id = 70290353, pos = { x = 276.038, y = 84.577, z = 1408.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540009, gadget_id = 70290353, pos = { x = 289.141, y = 90.886, z = 1443.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540010, gadget_id = 70290353, pos = { x = 292.629, y = 68.733, z = 1284.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540011, gadget_id = 70290353, pos = { x = 320.238, y = 134.003, z = 1422.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540012, gadget_id = 70290353, pos = { x = 447.521, y = 121.520, z = 1388.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540013, gadget_id = 70290353, pos = { x = 317.941, y = 148.166, z = 1329.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540014, gadget_id = 70310185, pos = { x = 473.271, y = 173.299, z = 1302.174 }, rot = { x = 5.695, y = 266.188, z = 351.352 }, level = 36, persistent = true, interact_id = 88, area_id = 300 },
	{ config_id = 540015, gadget_id = 70290353, pos = { x = 262.905, y = 74.182, z = 1293.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540016, gadget_id = 70290353, pos = { x = 276.195, y = 67.835, z = 1305.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540017, gadget_id = 70290353, pos = { x = 252.395, y = 82.638, z = 1312.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 540018, gadget_id = 70290353, pos = { x = 339.895, y = 136.396, z = 1255.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 }
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
		gadgets = { 540001, 540002, 540003, 540004, 540005, 540006, 540007, 540008, 540009, 540010, 540011, 540012, 540013, 540014, 540015, 540016, 540017, 540018 },
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