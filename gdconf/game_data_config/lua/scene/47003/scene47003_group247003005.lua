-- 基础信息
local base_info = {
	group_id = 247003005
}

-- DEFS_MISCS
local GroupId = 247003005
local ChestConfigID = 5014
local RegionID = 5001
local ChestConfigIDList = {5014}

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
	{ config_id = 5002, gadget_id = 70310132, pos = { x = 224.910, y = 0.040, z = -10.419 }, rot = { x = 0.000, y = 89.916, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5003, gadget_id = 70310133, pos = { x = 224.917, y = 0.040, z = -8.189 }, rot = { x = 0.000, y = 89.916, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5004, gadget_id = 70310132, pos = { x = 224.910, y = 0.040, z = -5.958 }, rot = { x = 0.000, y = 89.916, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5005, gadget_id = 70310132, pos = { x = 224.910, y = 0.040, z = 5.827 }, rot = { x = 0.000, y = 89.916, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5006, gadget_id = 70310133, pos = { x = 224.917, y = 0.040, z = 8.058 }, rot = { x = 0.000, y = 89.916, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5007, gadget_id = 70310132, pos = { x = 224.910, y = 0.040, z = 10.289 }, rot = { x = 0.000, y = 89.916, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5008, gadget_id = 70310132, pos = { x = 254.975, y = 0.040, z = 10.269 }, rot = { x = 0.000, y = 270.064, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5009, gadget_id = 70310133, pos = { x = 254.962, y = 0.040, z = 8.038 }, rot = { x = 0.000, y = 270.064, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5010, gadget_id = 70310132, pos = { x = 254.963, y = 0.040, z = 5.807 }, rot = { x = 0.000, y = 270.064, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5011, gadget_id = 70310132, pos = { x = 254.975, y = 0.040, z = -5.902 }, rot = { x = 0.000, y = 270.064, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5012, gadget_id = 70310133, pos = { x = 254.962, y = 0.040, z = -8.133 }, rot = { x = 0.000, y = 270.064, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5013, gadget_id = 70310132, pos = { x = 254.963, y = 0.040, z = -10.364 }, rot = { x = 0.000, y = 270.064, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5014, gadget_id = 70211111, pos = { x = 220.980, y = 0.040, z = -6.848 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 5015, gadget_id = 70310100, pos = { x = 224.395, y = 0.040, z = 8.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5016, gadget_id = 70310099, pos = { x = 258.111, y = 0.050, z = -6.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5017, gadget_id = 70310099, pos = { x = 257.528, y = 0.120, z = -9.267 }, rot = { x = 0.000, y = 44.546, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5018, gadget_id = 70310129, pos = { x = 256.565, y = 0.066, z = -7.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5019, gadget_id = 70310130, pos = { x = 256.479, y = 0.076, z = -8.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5020, gadget_id = 70310130, pos = { x = 256.875, y = 0.195, z = -7.387 }, rot = { x = 59.724, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5021, gadget_id = 70310131, pos = { x = 256.020, y = 0.071, z = -8.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5022, gadget_id = 70310131, pos = { x = 256.342, y = 0.104, z = -7.058 }, rot = { x = 0.000, y = 40.242, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5023, gadget_id = 70310125, pos = { x = 239.993, y = 0.206, z = 19.891 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5024, gadget_id = 70310125, pos = { x = 240.007, y = 0.206, z = -20.106 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5025, gadget_id = 70310125, pos = { x = 260.190, y = 0.196, z = -0.016 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5026, gadget_id = 70310125, pos = { x = 220.208, y = 0.196, z = -0.021 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 5001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 40.000 }, pos = { x = 240.000, y = 0.000, z = 0.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1005001, name = "ENTER_REGION_5001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 5002, 5003, 5004, 5005, 5006, 5007, 5008, 5009, 5010, 5011, 5012, 5013, 5014, 5015, 5016, 5017, 5018, 5019, 5020, 5021, 5022, 5023, 5024, 5025, 5026 },
		regions = { 5001 },
		triggers = { "ENTER_REGION_5001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_ChestRoom"