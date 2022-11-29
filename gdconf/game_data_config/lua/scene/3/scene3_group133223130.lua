-- 基础信息
local base_info = {
	group_id = 133223130
}

-- Trigger变量
local defs = {
	group_ID = 133223130,
	gadget_1 = 130001,
	rotation_1 = 0,
	gadget_2 = 130002,
	rotation_2 = 90,
	gadget_3 = 130003,
	rotation_3 = 180,
	gadget_4 = 130010,
	rotation_4 = 0,
	gadget_5 = 130013,
	rotation_5 = 0,
	gadget_connect1 = {},
	gadget_connect2 = {130003,130010},
	gadget_connect3 = {},
	gadget_connect4 = {},
	gadget_connect5 = {}
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
	{ config_id = 130001, gadget_id = 70330081, pos = { x = -6107.682, y = 201.997, z = -3203.685 }, rot = { x = 0.000, y = 319.595, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
	{ config_id = 130002, gadget_id = 70330081, pos = { x = -6107.682, y = 203.332, z = -3203.685 }, rot = { x = 0.000, y = 319.595, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
	{ config_id = 130003, gadget_id = 70330081, pos = { x = -6107.233, y = 201.320, z = -3198.529 }, rot = { x = 2.548, y = 319.595, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
	{ config_id = 130004, gadget_id = 70330084, pos = { x = -6107.682, y = 201.997, z = -3203.685 }, rot = { x = 0.000, y = 319.595, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 130005, gadget_id = 70330085, pos = { x = -6107.682, y = 205.193, z = -3203.685 }, rot = { x = 0.000, y = 319.595, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 130006, gadget_id = 70211101, pos = { x = -6111.347, y = 201.057, z = -3198.594 }, rot = { x = 9.602, y = 327.549, z = 355.008 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 130008, gadget_id = 70330084, pos = { x = -6107.159, y = 201.066, z = -3198.587 }, rot = { x = 6.297, y = 319.490, z = 356.798 }, level = 33, area_id = 18 },
	{ config_id = 130009, gadget_id = 70330085, pos = { x = -6107.282, y = 203.085, z = -3198.449 }, rot = { x = 4.954, y = 319.595, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 130010, gadget_id = 70330081, pos = { x = -6113.324, y = 201.923, z = -3203.315 }, rot = { x = 0.000, y = 325.197, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 },
	{ config_id = 130011, gadget_id = 70330084, pos = { x = -6113.228, y = 201.681, z = -3203.363 }, rot = { x = 0.000, y = 325.197, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 130012, gadget_id = 70330085, pos = { x = -6113.316, y = 203.634, z = -3203.336 }, rot = { x = 0.000, y = 325.197, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 130013, gadget_id = 70330083, pos = { x = -6117.757, y = 200.332, z = -3191.897 }, rot = { x = 0.000, y = 317.142, z = 0.000 }, level = 33, is_use_point_array = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1130007, name = "VARIABLE_CHANGE_130007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_130007", action = "" }
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
		gadgets = { 130001, 130002, 130003, 130004, 130005, 130008, 130009, 130010, 130011, 130012, 130013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 130006 },
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_130007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/LightSquare"