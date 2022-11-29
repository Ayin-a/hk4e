-- 基础信息
local base_info = {
	group_id = 220131020
}

-- DEFS_MISCS
--设置var: level_start为1以开启推箱子流程
--用var_change接source为"level_finish"即可响应箱子推完的结果
local defs = {
        box_gadget_id_1 = 70290405,
        --box_gadget_id_2 = 70290377,
        config_suites = {1}, 
        point_array_id = 4,
        option_id = 193,
        reminder_level_boarder = 400119,
        reminder_array_boarder = 400119,
        reminder_box_conflict = 400119,
        reminder_right_pos = 201310107
}

--地形信息：0-墙面,1-地面,2-空气墙
local level_map = {
	{ 0, 0, 0, 0},
	{ 0, 1, 1, 0},
	{ 0, 1, 1, 0},
	{ 0, 0, 0, 0},
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
	{ 0, 0, 0, 0},
	{ 0, 4, 3, 0},
	{ 0, 2, 1, 0},
	{ 0, 0, 0, 0},
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
	[1] = {config_id = 20001, pos = {x=3,z=3}},
	[2] = {config_id = 20002, pos = {x=2,z=3}},
}

--关卡结算信息
local level_finish_config = {
        box_config_id = {1,2}, --box_config中序列
        target_point_id = {3,4} --点阵id
}

--路径摘除信息(pont_id)
local illegal_path = {
        {1,2},
        {3,4},
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
	[20001] = { config_id = 20001, gadget_id = 70290405, pos = { x = 64.877, y = 10.836, z = -44.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[20002] = { config_id = 20002, gadget_id = 70290405, pos = { x = 64.877, y = 10.836, z = -39.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1020003, name = "VARIABLE_CHANGE_20003", event = EventType.EVENT_VARIABLE_CHANGE, source = "level_finish", condition = "", action = "action_EVENT_VARIABLE_CHANGE_20003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "level_start", value = 1, no_refresh = false }
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
		gadgets = { 20001, 20002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_20003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_20003(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 将本组内变量名为 "A" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "A", 1, 220131011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_7/YeLan_BoxPusher"