-- 基础信息
local base_info = {
	group_id = 220133062
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
	[62001] = { config_id = 62001, gadget_id = 70690001, pos = { x = 4233.113, y = 576.501, z = 167.437 }, rot = { x = 342.151, y = 331.253, z = 353.425 }, level = 1 },
	[62002] = { config_id = 62002, gadget_id = 70690001, pos = { x = 4222.208, y = 580.359, z = 177.228 }, rot = { x = 348.227, y = 321.254, z = 357.523 }, level = 1 },
	[62003] = { config_id = 62003, gadget_id = 70310171, pos = { x = 4249.788, y = 569.586, z = 146.699 }, rot = { x = 356.664, y = 33.889, z = 352.845 }, level = 20, persistent = true, interact_id = 64 },
	-- 大花-水平转动
	[62004] = { config_id = 62004, gadget_id = 70310169, pos = { x = 4241.731, y = 571.228, z = 160.593 }, rot = { x = 8.022, y = 317.476, z = 356.927 }, level = 20, persistent = true },
	[62005] = { config_id = 62005, gadget_id = 70690001, pos = { x = 4212.556, y = 582.401, z = 187.769 }, rot = { x = 357.280, y = 329.368, z = 354.865 }, level = 1 },
	[62006] = { config_id = 62006, gadget_id = 70690011, pos = { x = 4202.775, y = 555.474, z = 205.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[62008] = { config_id = 62008, gadget_id = 70310170, pos = { x = 4248.610, y = 569.693, z = 147.801 }, rot = { x = 356.373, y = 6.220, z = 0.042 }, level = 1, persistent = true },
	[62009] = { config_id = 62009, gadget_id = 70310170, pos = { x = 4249.382, y = 570.493, z = 157.805 }, rot = { x = 352.882, y = 290.374, z = 0.378 }, level = 1, persistent = true },
	[62011] = { config_id = 62011, gadget_id = 70310341, pos = { x = 4241.942, y = 572.868, z = 160.487 }, rot = { x = 341.032, y = 313.116, z = 359.196 }, level = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- if big_flower==1 
	{ config_id = 1062014, name = "VARIABLE_CHANGE_62014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_62014", action = "action_EVENT_VARIABLE_CHANGE_62014", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1062016, name = "TIME_AXIS_PASS_62016", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_62016", action = "action_EVENT_TIME_AXIS_PASS_62016", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1062012, name = "GADGET_STATE_CHANGE_62012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62012", action = "action_EVENT_GADGET_STATE_CHANGE_62012", trigger_count = 0 },
		{ config_id = 1062013, name = "GADGET_STATE_CHANGE_62013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62013", action = "action_EVENT_GADGET_STATE_CHANGE_62013", trigger_count = 0 },
		{ config_id = 1062015, name = "TIME_AXIS_PASS_62015", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_62015", action = "action_EVENT_TIME_AXIS_PASS_62015", trigger_count = 0 },
		{ config_id = 1062017, name = "VARIABLE_CHANGE_62017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_62017", action = "action_EVENT_VARIABLE_CHANGE_62017", trigger_count = 0 },
		{ config_id = 1062018, name = "TIME_AXIS_PASS_62018", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_62018", action = "action_EVENT_TIME_AXIS_PASS_62018", trigger_count = 0 },
		{ config_id = 1062019, name = "TIME_AXIS_PASS_62019", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_62019", action = "action_EVENT_TIME_AXIS_PASS_62019", trigger_count = 0 }
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
		gadgets = { 62003, 62004, 62008, 62009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_62014", "TIME_AXIS_PASS_62016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 0,
		monsters = { },
		gadgets = { 62001, 62002, 62005, 62006, 62011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 102,
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
function condition_EVENT_VARIABLE_CHANGE_62014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_62014(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {15}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133062, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_62016(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_62016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220133062, 2)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

require "V2_8/TransferFlower"