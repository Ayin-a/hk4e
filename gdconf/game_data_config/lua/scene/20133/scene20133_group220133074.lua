-- 基础信息
local base_info = {
	group_id = 220133074
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
	[74002] = { config_id = 74002, gadget_id = 70690001, pos = { x = 5027.513, y = 542.707, z = -1813.364 }, rot = { x = 355.559, y = 339.758, z = 359.367 }, level = 1 },
	[74003] = { config_id = 74003, gadget_id = 70310171, pos = { x = 5038.698, y = 543.466, z = -1827.350 }, rot = { x = 3.371, y = 347.427, z = 358.682 }, level = 20, persistent = true, interact_id = 64 },
	-- 大花-水平转动
	[74004] = { config_id = 74004, gadget_id = 70310169, pos = { x = 5029.054, y = 540.040, z = -1823.864 }, rot = { x = 7.983, y = 15.373, z = 7.867 }, level = 20, persistent = true },
	[74005] = { config_id = 74005, gadget_id = 70690001, pos = { x = 5021.994, y = 543.946, z = -1798.398 }, rot = { x = 355.547, y = 342.102, z = 359.437 }, level = 1 },
	[74006] = { config_id = 74006, gadget_id = 70690001, pos = { x = 5017.093, y = 545.188, z = -1783.222 }, rot = { x = 355.922, y = 8.833, z = 0.281 }, level = 1 },
	[74007] = { config_id = 74007, gadget_id = 70310170, pos = { x = 5040.958, y = 543.259, z = -1825.373 }, rot = { x = 19.322, y = 317.103, z = 355.390 }, level = 1, persistent = true },
	-- 传音花风场
	[74008] = { config_id = 74008, gadget_id = 70310341, pos = { x = 5029.331, y = 540.977, z = -1823.374 }, rot = { x = 335.971, y = 0.240, z = 17.044 }, level = 20 },
	[74012] = { config_id = 74012, gadget_id = 70310170, pos = { x = 5036.792, y = 541.776, z = -1820.968 }, rot = { x = 11.433, y = 246.480, z = 340.011 }, level = 1, persistent = true },
	[74014] = { config_id = 74014, gadget_id = 70690001, pos = { x = 5019.498, y = 546.304, z = -1767.750 }, rot = { x = 356.317, y = 19.320, z = 0.605 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- if big_flower==1 and 花大=0
	{ config_id = 1074009, name = "VARIABLE_CHANGE_74009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_74009", action = "action_EVENT_VARIABLE_CHANGE_74009", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1074011, name = "TIME_AXIS_PASS_74011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_74011", action = "action_EVENT_TIME_AXIS_PASS_74011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1074010, name = "TIME_AXIS_PASS_74010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_74010", action = "action_EVENT_TIME_AXIS_PASS_74010", trigger_count = 0 }
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
		gadgets = { 74003, 74004, 74007, 74012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_74009", "TIME_AXIS_PASS_74011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 0,
		monsters = { },
		gadgets = { 74002, 74005, 74006, 74008, 74014 },
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
function condition_EVENT_VARIABLE_CHANGE_74009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_74009(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {15}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133074, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_74011(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_74011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220133074, 2)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

require "V2_8/TransferFlower"