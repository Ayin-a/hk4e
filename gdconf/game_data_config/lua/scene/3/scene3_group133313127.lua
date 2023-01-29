-- 基础信息
local base_info = {
	group_id = 133313127
}

-- Trigger变量
local defs = {
	pointarray_route = 331300003,
	chest_id = 127010,
	wordle_id = 127011
}

-- DEFS_MISCS
--向前移动的符文
local timeback_rune = 127007

local timeback_controller = 127008

--倒流操作台。
local timeback_worktops = 
{
    127005,
    127006,
    127009
}

--倒流物件id。
local timeback_gadgets = 
{
    127001,  --石柱1
    127002,  --石柱2
    127004,  --石柱3
    127003,  --瀑布
    127011,  --赤王文字
}

--符文的移动路径点阵
local rune_point_array = 
{
    1,2,3,4,5,6,7,8,9,10,11,12,13,14
}

--检查点到点阵路点的映射关系
--默认最后一个checkpoint就是终点，不能再往下移动了
local checkpoints_to_route_points = 
{
    [1] = 3,
    [2] = 8,
    [3] = 14
 }


--检查点到倒流操作台的映射关系，两者应该放在同一个位置上
local checkpoint_to_worktops = 
{
    [1] = timeback_worktops[1],
    [2] = timeback_worktops[2],
    [3] = timeback_worktops[3]
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
	{ config_id = 127001, gadget_id = 70290604, pos = { x = -803.481, y = -852.403, z = 5371.857 }, rot = { x = 1.718, y = 29.446, z = 349.366 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_ani_timeback_value_max"] = 33, ["SGV_ani_timeback_value_min"] = 0, ["SGV_Broadcast_GV_Tag"] = 2, ["SGV_Is_Revert"] = 0 } },
	{ config_id = 127002, gadget_id = 70290603, pos = { x = -736.534, y = -862.029, z = 5392.034 }, rot = { x = 350.165, y = 5.063, z = 7.663 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_ani_timeback_value_max"] = 100, ["SGV_ani_timeback_value_min"] = 66, ["SGV_Broadcast_GV_Tag"] = 2, ["SGV_Is_Revert"] = 0 } },
	{ config_id = 127003, gadget_id = 70290605, pos = { x = -755.610, y = -843.500, z = 5402.020 }, rot = { x = 270.928, y = 0.000, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 2, ["SGV_Is_Revert"] = 0, ["SGV_shader_timeback_value_min"] = 33, ["SGV_shader_timeback_value_max"] = 55 } },
	{ config_id = 127004, gadget_id = 70290604, pos = { x = -736.174, y = -840.387, z = 5402.191 }, rot = { x = 356.877, y = 166.615, z = 355.677 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 2, ["SGV_Is_Revert"] = 0, ["SGV_ani_timeback_value_min"] = 0, ["SGV_ani_timeback_value_max"] = 33 } },
	{ config_id = 127005, gadget_id = 70290607, pos = { x = -805.951, y = -852.706, z = 5333.720 }, rot = { x = 0.000, y = 192.339, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 2, ["SGV_Correct_Range_Min"] = 0, ["SGV_Correct_Range_Max"] = 10, ["SGV_Worktop_UI_Index"] = 4 } },
	{ config_id = 127006, gadget_id = 70290607, pos = { x = -754.031, y = -860.561, z = 5358.289 }, rot = { x = 0.000, y = 161.552, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 2, ["SGV_Correct_Range_Max"] = 66, ["SGV_Correct_Range_Min"] = 55, ["SGV_Worktop_UI_Index"] = 5 } },
	{ config_id = 127007, gadget_id = 70290606, pos = { x = -776.516, y = -852.798, z = 5334.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, area_id = 32 },
	{ config_id = 127008, gadget_id = 70290609, pos = { x = -810.246, y = -861.209, z = 5352.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 2, ["SGV_Init_Timeback_Value"] = 33, ["SGV_Timeback_Keypoint_Division"] = 3 } },
	{ config_id = 127009, gadget_id = 70290607, pos = { x = -760.676, y = -863.868, z = 5413.264 }, rot = { x = 0.000, y = 203.974, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 2, ["SGV_Correct_Range_Min"] = 90, ["SGV_Correct_Range_Max"] = 100, ["SGV_Worktop_UI_Index"] = 6 } },
	{ config_id = 127010, gadget_id = 70211001, pos = { x = -752.622, y = -864.211, z = 5416.165 }, rot = { x = 0.000, y = 176.771, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 127011, gadget_id = 70500000, pos = { x = -753.705, y = -862.741, z = 5420.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 9327, isOneoff = true, persistent = true, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 2, ["SGV_eff_timeback_value_max"] = 100, ["SGV_eff_timeback_value_min"] = 66, ["SGV_Is_Revert"] = 0 } }
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
		gadgets = { 127001, 127002, 127003, 127004, 127005, 127006, 127007, 127008, 127009, 127011 },
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

require "V3_4/OasisTimebackControl"