-- 基础信息
local base_info = {
	group_id = 220131004
}

-- DEFS_MISCS
--设置var: level_start为1以开启推箱子流程
--用var_change接source为"level_finish"即可响应箱子推完的结果
local defs = {
        box_gadget_id_1 = 70290378,
        box_gadget_id_2 = 70290377,
        config_suites = {1}, 
        point_array_id = 1,
        option_id = 193,
        reminder_level_boarder = 201310102,
        reminder_array_boarder = 201310102,
        reminder_box_conflict = 201310102,
        reminder_right_pos = 201310101
}

--地形信息：0-墙面,1-地面,2-空气墙
local level_map = {
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 1, 1, 1, 1, 0, 0},
	{ 0, 1, 1, 1, 1, 1, 0},
	{ 0, 1, 1, 1, 1, 1, 0},
	{ 0, 0, 0, 0, 0, 0, 0},
}

--[[local level_map = {
	{ 0, 0, 0, 0, 0},
	{ 0, 0, 1, 1, 0},
	{ 0, 1, 1, 1, 0},
	{ 0, 1, 1, 1, 0},
	{ 0, 1, 1, 1, 0},
	{ 0, 1, 1, 1, 0},
	{ 0, 0, 0, 0, 0},
}]]--

--点阵id信息
local point_map = {
	{ 0, 0, 0, 0, 0, 0, 0},
	{ 0, 1, 2, 3, 4, 0, 0},
	{ 0, 6, 7, 8, 9,10, 0},
	{ 0, 11,12,13,14,15, 0},
	{ 0, 0, 0, 0, 0, 0, 0}
}

--[[local point_map = {
	{ 0, 0,   0, 0, 0},
	{ 0, 0,   6, 1, 0},
	{ 0, 12,  7, 2, 0},
	{ 0, 13,  8, 3, 0},
	{ 0, 14,  9, 4, 0},
	{ 0, 15, 10, 5, 0},
	{ 0,  0,  0, 0, 0},
}]]--

--箱子起始信息
--[[local box_config = {
	[1] = {config_id = 4001, pos = {x=4,z=2}},
	[2] = {config_id = 4002, pos = {x=2,z=4}},
	[3] = {config_id = 4003, pos = {x=2,z=6}},
	[4] = {config_id = 4004, pos = {x=3,z=6}},
	[5] = {config_id = 4005, pos = {x=3,z=3}},
	[6] = {config_id = 4006, pos = {x=2,z=3}},
	[7] = {config_id = 4007, pos = {x=3,z=4}},
	[8] = {config_id = 4008, pos = {x=3,z=5}},
	[9] = {config_id = 4009, pos = {x=2,z=5}},
}]]--

local box_config = {
	[1] = {config_id = 4001, pos = {x=2,z=2}},
	[2] = {config_id = 4002, pos = {x=4,z=2}},
	[3] = {config_id = 4003, pos = {x=6,z=4}},
	[4] = {config_id = 4004, pos = {x=3,z=2}},
	[5] = {config_id = 4005, pos = {x=5,z=2}},
	[6] = {config_id = 4006, pos = {x=2,z=3}},
	[7] = {config_id = 4007, pos = {x=3,z=3}},
	[8] = {config_id = 4008, pos = {x=4,z=3}},
	[9] = {config_id = 4009, pos = {x=5,z=3}},
}

--关卡结算信息
local level_finish_config = {
        box_config_id = {1,2,3}, --box_config中序列
        target_point_id = {12,13,14} --点阵id
}

--路径摘除信息(pont_id)
local illegal_path = {
        {2,3},
        {7,8},
        {6,11},
        {9,14},
        {13,14},
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
	[4001] = { config_id = 4001, gadget_id = 70290378, pos = { x = 114.782, y = -3.245, z = 12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[4002] = { config_id = 4002, gadget_id = 70290378, pos = { x = 114.782, y = -3.245, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[4003] = { config_id = 4003, gadget_id = 70290378, pos = { x = 102.725, y = -3.245, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[4004] = { config_id = 4004, gadget_id = 70290377, pos = { x = 114.782, y = -3.245, z = 6.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[4005] = { config_id = 4005, gadget_id = 70290377, pos = { x = 114.782, y = -3.245, z = -6.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[4006] = { config_id = 4006, gadget_id = 70290377, pos = { x = 108.782, y = -3.245, z = 12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[4007] = { config_id = 4007, gadget_id = 70290377, pos = { x = 108.782, y = -3.245, z = 6.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[4008] = { config_id = 4008, gadget_id = 70290377, pos = { x = 108.782, y = -3.245, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[4009] = { config_id = 4009, gadget_id = 70290377, pos = { x = 108.782, y = -3.245, z = -6.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 挑战成功开大门group10；增加任务进度；切目标点group16
	{ config_id = 1004011, name = "VARIABLE_CHANGE_4011", event = EventType.EVENT_VARIABLE_CHANGE, source = "level_finish", condition = "", action = "action_EVENT_VARIABLE_CHANGE_4011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "level_start", value = 0, no_refresh = false }
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
		gadgets = { 4001, 4002, 4003, 4004, 4005, 4006, 4007, 4008, 4009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_4011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4011(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 将本组内变量名为 "Open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Open", 1, 220131010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "110262201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "Stage" 的变量设置为 5
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Stage", 5, 220131016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_7/YeLan_BoxPusher"