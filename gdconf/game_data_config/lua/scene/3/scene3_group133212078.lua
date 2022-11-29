-- 基础信息
local base_info = {
	group_id = 133212078
}

-- Trigger变量
local defs = {
	group_ID = 133212078,
	gadget_1 = 78001,
	rotation_1 = 0,
	gadget_2 = 78002,
	rotation_2 = 90,
	gadget_3 = 78003,
	rotation_3 = 180,
	gadget_4 = 78006,
	rotation_4 = 270,
	gadget_5 = 0,
	rotation_5 = 0,
	gadget_connect1 = {},
	gadget_connect2 = {},
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
	-- 失踪冒险家
	{ config_id = 78001, gadget_id = 70330081, pos = { x = -3468.332, y = 200.761, z = -1968.643 }, rot = { x = 359.708, y = 115.644, z = 2.424 }, level = 2, is_use_point_array = true, area_id = 13 },
	{ config_id = 78002, gadget_id = 70330081, pos = { x = -3473.844, y = 201.363, z = -1974.356 }, rot = { x = 0.000, y = 113.868, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
	{ config_id = 78003, gadget_id = 70330081, pos = { x = -3475.834, y = 201.643, z = -1968.592 }, rot = { x = 0.000, y = 116.732, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
	-- 失踪冒险家
	{ config_id = 78004, gadget_id = 70330084, pos = { x = -3468.249, y = 200.523, z = -1968.648 }, rot = { x = 0.000, y = 113.385, z = 0.000 }, level = 2, area_id = 13 },
	-- 失踪冒险家
	{ config_id = 78006, gadget_id = 70330081, pos = { x = -3466.522, y = 200.433, z = -1973.359 }, rot = { x = 0.000, y = 116.732, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 13 },
	-- 失踪冒险家
	{ config_id = 78008, gadget_id = 70330084, pos = { x = -3466.426, y = 200.383, z = -1973.405 }, rot = { x = 0.000, y = 113.385, z = 0.000 }, level = 27, area_id = 13 },
	-- 失踪冒险家
	{ config_id = 78009, gadget_id = 70330084, pos = { x = -3473.704, y = 201.074, z = -1974.416 }, rot = { x = 0.000, y = 113.385, z = 0.000 }, level = 27, area_id = 13 },
	-- 失踪冒险家
	{ config_id = 78010, gadget_id = 70330084, pos = { x = -3475.908, y = 201.441, z = -1968.519 }, rot = { x = 0.000, y = 113.385, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1078007, name = "VARIABLE_CHANGE_78007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_78007", action = "action_EVENT_VARIABLE_CHANGE_78007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 78005, gadget_id = 70330085, pos = { x = -3475.834, y = 203.764, z = -1968.592 }, rot = { x = 0.000, y = 114.476, z = 0.000 }, level = 2, area_id = 13 }
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
		gadgets = { 78001, 78002, 78003, 78004, 78006, 78008, 78009, 78010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_78007" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_78007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_78007(context, evt)
	-- 改变指定group组133212159中， configid为159001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133212159, 159001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/LightSquare"