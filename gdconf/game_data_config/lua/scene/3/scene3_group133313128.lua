-- 基础信息
local base_info = {
	group_id = 133313128
}

-- Trigger变量
local defs = {
	pointarray_route = 331300004,
	chest_id = 128010,
	wordle_id = 128011
}

-- DEFS_MISCS
--向前移动的符文
local timeback_rune = 128007

local timeback_controller = 128008

--倒流操作台。
local timeback_worktops = 
{
    128005,
    128006,
    128009
}

--倒流物件id。
local timeback_gadgets = 
{
    128001,  --树1
    128002,  --树2
    128004,  --石柱
    128011,  --赤王文字
}

--符文的移动路径点阵
local rune_point_array = 
{
    1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
}

--检查点到点阵路点的映射关系
--默认最后一个checkpoint就是终点，不能再往下移动了
local checkpoints_to_route_points = 
{
    [1] = 3,
    [2] = 16,
    [3] = 20
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
	{ config_id = 128001, gadget_id = 70290758, pos = { x = -672.259, y = -842.101, z = 5284.177 }, rot = { x = 0.637, y = 5.817, z = 13.944 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 3, ["SGV_Is_Revert"] = 1, ["SGV_ani_timeback_value_min"] = 0, ["SGV_ani_timeback_value_max"] = 50 } },
	{ config_id = 128002, gadget_id = 70290603, pos = { x = -690.252, y = -849.065, z = 5240.137 }, rot = { x = 355.663, y = 75.549, z = 5.158 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 3, ["SGV_Is_Revert"] = 0, ["SGV_ani_timeback_value_min"] = 50, ["SGV_ani_timeback_value_max"] = 100 } },
	{ config_id = 128004, gadget_id = 70290604, pos = { x = -740.136, y = -847.423, z = 5178.952 }, rot = { x = 5.126, y = 296.921, z = 1.576 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 3, ["SGV_Is_Revert"] = 1, ["SGV_ani_timeback_value_min"] = 50, ["SGV_ani_timeback_value_max"] = 100 } },
	{ config_id = 128005, gadget_id = 70290607, pos = { x = -687.421, y = -846.285, z = 5299.881 }, rot = { x = 0.000, y = 325.817, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 3, ["SGV_Correct_Range_Min"] = 45, ["SGV_Correct_Range_Max"] = 55, ["SGV_Worktop_UI_Index"] = 7 } },
	{ config_id = 128006, gadget_id = 70290607, pos = { x = -748.333, y = -851.815, z = 5212.649 }, rot = { x = 0.000, y = 310.228, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 3, ["SGV_Correct_Range_Max"] = 100, ["SGV_Correct_Range_Min"] = 90, ["SGV_Worktop_UI_Index"] = 8 } },
	{ config_id = 128007, gadget_id = 70290606, pos = { x = -682.210, y = -843.768, z = 5315.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, is_use_point_array = true, area_id = 32 },
	{ config_id = 128008, gadget_id = 70290609, pos = { x = -745.100, y = -851.155, z = 5215.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 3, ["SGV_Init_Timeback_Value"] = 0, ["SGV_Timeback_Keypoint_Division"] = 2 } },
	{ config_id = 128009, gadget_id = 70290607, pos = { x = -728.472, y = -846.495, z = 5176.599 }, rot = { x = 0.000, y = 219.600, z = 0.000 }, level = 32, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 3, ["SGV_Correct_Range_Min"] = 0, ["SGV_Correct_Range_Max"] = 10, ["SGV_Worktop_UI_Index"] = 9 } },
	{ config_id = 128010, gadget_id = 70211001, pos = { x = -723.102, y = -846.220, z = 5175.289 }, rot = { x = 0.000, y = 348.993, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 128011, gadget_id = 70500000, pos = { x = -720.113, y = -844.938, z = 5180.770 }, rot = { x = 0.000, y = 329.997, z = 0.000 }, level = 32, point_type = 9327, isOneoff = true, persistent = true, area_id = 32, server_global_value_config = { ["SGV_Broadcast_GV_Tag"] = 3, ["SGV_eff_timeback_value_max"] = 100, ["SGV_eff_timeback_value_min"] = 0, ["SGV_Is_Revert"] = 1 } }
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
		gadgets = { 128001, 128002, 128004, 128005, 128006, 128007, 128008, 128009, 128011 },
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