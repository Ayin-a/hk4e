-- 基础信息
local base_info = {
	group_id = 220133005
}

-- DEFS_MISCS
local	defs = {

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
			
		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {

		}
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
	[5001] = { config_id = 5001, gadget_id = 70690001, pos = { x = 2482.055, y = 537.316, z = -1761.766 }, rot = { x = 338.489, y = 69.904, z = 3.446 }, level = 1 },
	[5002] = { config_id = 5002, gadget_id = 70690001, pos = { x = 2493.051, y = 540.799, z = -1755.720 }, rot = { x = 341.602, y = 31.658, z = 1.766 }, level = 1 },
	[5003] = { config_id = 5003, gadget_id = 70310170, pos = { x = 2462.628, y = 535.859, z = -1778.340 }, rot = { x = 14.400, y = 357.694, z = 358.895 }, level = 1, persistent = true },
	-- 大花-水平转动
	[5004] = { config_id = 5004, gadget_id = 70310169, pos = { x = 2473.018, y = 533.229, z = -1765.148 }, rot = { x = 359.355, y = 62.919, z = 5.384 }, level = 20, persistent = true },
	[5005] = { config_id = 5005, gadget_id = 70690001, pos = { x = 2498.649, y = 543.477, z = -1741.301 }, rot = { x = 349.115, y = 355.136, z = 1.331 }, level = 1 },
	[5006] = { config_id = 5006, gadget_id = 70310171, pos = { x = 2464.225, y = 536.088, z = -1778.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, interact_id = 64 },
	[5007] = { config_id = 5007, gadget_id = 70310170, pos = { x = 2462.318, y = 534.172, z = -1769.826 }, rot = { x = 358.275, y = 117.992, z = 358.342 }, level = 1, persistent = true },
	[5008] = { config_id = 5008, gadget_id = 70690011, pos = { x = 2496.364, y = 523.799, z = -1733.433 }, rot = { x = 0.000, y = 264.408, z = 0.000 }, level = 1 },
	-- 传音花风场
	[5009] = { config_id = 5009, gadget_id = 70310341, pos = { x = 2473.294, y = 535.074, z = -1765.063 }, rot = { x = 340.657, y = 71.910, z = 0.262 }, level = 20 },
	[5011] = { config_id = 5011, gadget_id = 70310170, pos = { x = 2470.625, y = 535.122, z = -1774.441 }, rot = { x = 10.650, y = 10.135, z = 358.691 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- if big_flower==1 and 花大=0
	{ config_id = 1005012, name = "VARIABLE_CHANGE_5012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5012", action = "action_EVENT_VARIABLE_CHANGE_5012", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1005014, name = "TIME_AXIS_PASS_5014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5014", action = "action_EVENT_TIME_AXIS_PASS_5014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1005013, name = "TIME_AXIS_PASS_5013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5013", action = "action_EVENT_TIME_AXIS_PASS_5013", trigger_count = 0 }
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
		gadgets = { 5003, 5004, 5006, 5007, 5011 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_5012", "TIME_AXIS_PASS_5014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5001, 5002, 5005, 5008, 5009 },
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
function condition_EVENT_VARIABLE_CHANGE_5012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 220133005, 5004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5012(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {15}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5014(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5014(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220133005, 2)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

require "V2_8/TransferFlower"