-- 基础信息
local base_info = {
	group_id = 133313024
}

-- Trigger变量
local defs = {
	pointarray_route = 331300001,
	chest_id = 24011,
	wordle_id = 24012
}

-- DEFS_MISCS
--向前移动的符文
local timeback_rune = 24007

local timeback_controller = 24008

--倒流操作台。
local timeback_worktops = 
{
    24005,
    24006,
    24009
}

--倒流物件id。
local timeback_gadgets = 
{
    24001,  --树1
    24002,  --树2
    24004,  --石柱
    24003,  --瀑布
    24012,  --赤王文字
}

--符文的移动路径点阵
local rune_point_array = 
{
    1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19
}

--检查点到点阵路点的映射关系
--默认最后一个checkpoint就是终点，不能再往下移动了
local checkpoints_to_route_points = 
{
    [1] = 3,
    [2] = 13,
    [3] = 19
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
	{ config_id = 24001, gadget_id = 70290758, pos = { x = -847.333, y = -848.966, z = 5352.915 }, rot = { x = 2.809, y = 296.546, z = 4.253 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 1, ["SGV_Is_Revert"] = 0, ["SGV_ani_timeback_value_min"] = 75, ["SGV_ani_timeback_value_max"] = 100 } },
	{ config_id = 24002, gadget_id = 70290758, pos = { x = -926.502, y = -843.409, z = 5326.506 }, rot = { x = 8.946, y = 305.540, z = 8.186 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 1, ["SGV_Is_Revert"] = 1, ["SGV_ani_timeback_value_min"] = 0, ["SGV_ani_timeback_value_max"] = 25 } },
	{ config_id = 24003, gadget_id = 70290605, pos = { x = -966.170, y = -821.500, z = 5307.040 }, rot = { x = 274.701, y = 116.787, z = 180.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 1, ["SGV_Is_Revert"] = 1, ["SGV_shader_timeback_value_min"] = 35, ["SGV_shader_timeback_value_max"] = 50 } },
	{ config_id = 24004, gadget_id = 70290604, pos = { x = -974.834, y = -818.970, z = 5292.963 }, rot = { x = 351.405, y = 299.594, z = 354.277 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 1, ["SGV_Is_Revert"] = 1, ["SGV_ani_timeback_value_min"] = 50, ["SGV_ani_timeback_value_max"] = 75 } },
	{ config_id = 24005, gadget_id = 70290607, pos = { x = -832.730, y = -851.874, z = 5344.890 }, rot = { x = 0.000, y = 70.546, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 1, ["SGV_Correct_Range_Min"] = 90, ["SGV_Correct_Range_Max"] = 100, ["SGV_Worktop_UI_Index"] = 1 } },
	{ config_id = 24006, gadget_id = 70290607, pos = { x = -899.640, y = -845.183, z = 5306.900 }, rot = { x = 0.000, y = 75.364, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 1, ["SGV_Correct_Range_Max"] = 35, ["SGV_Correct_Range_Min"] = 25, ["SGV_Worktop_UI_Index"] = 2 } },
	{ config_id = 24007, gadget_id = 70290606, pos = { x = -823.395, y = -853.070, z = 5333.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, area_id = 32 },
	{ config_id = 24008, gadget_id = 70290609, pos = { x = -903.658, y = -848.140, z = 5317.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 1, ["SGV_Init_Timeback_Value"] = 75, ["SGV_Timeback_Keypoint_Division"] = 4 } },
	{ config_id = 24009, gadget_id = 70290607, pos = { x = -967.706, y = -846.429, z = 5309.367 }, rot = { x = 0.000, y = 130.782, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 1, ["SGV_Correct_Range_Min"] = 0, ["SGV_Correct_Range_Max"] = 10, ["SGV_Worktop_UI_Index"] = 3 } },
	{ config_id = 24011, gadget_id = 70211001, pos = { x = -967.321, y = -845.672, z = 5315.499 }, rot = { x = 0.000, y = 176.771, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 24012, gadget_id = 70500000, pos = { x = -970.500, y = -844.395, z = 5314.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 9327, isOneoff = true, persistent = true, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 1, ["SGV_eff_timeback_value_max"] = 25, ["SGV_eff_timeback_value_min"] = 10, ["SGV_Is_Revert"] = 1 } }
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

-- 视野组
sight_groups = {
	{ 24001, 24002, 24003, 24004, 24005, 24006, 24007, 24008, 24009, 24012, 24011 }
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
		gadgets = { 24001, 24002, 24003, 24004, 24005, 24006, 24007, 24008, 24009, 24012 },
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