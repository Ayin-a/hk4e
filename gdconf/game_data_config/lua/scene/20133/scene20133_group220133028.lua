-- 基础信息
local base_info = {
	group_id = 220133028
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
	[28001] = { config_id = 28001, gadget_id = 70690001, pos = { x = -0.681, y = 150.403, z = 610.592 }, rot = { x = 305.081, y = 0.254, z = 342.911 }, level = 1 },
	[28002] = { config_id = 28002, gadget_id = 70690001, pos = { x = -1.088, y = 156.843, z = 615.489 }, rot = { x = 311.391, y = 345.438, z = 355.132 }, level = 1 },
	-- 大花-固定-WindA
	[28004] = { config_id = 28004, gadget_id = 70310169, pos = { x = -0.994, y = 142.913, z = 606.902 }, rot = { x = 339.852, y = 349.737, z = 349.636 }, level = 1, persistent = true },
	-- 任务完成才激活
	[28005] = { config_id = 28005, gadget_id = 70310171, pos = { x = -11.459, y = 143.988, z = 604.648 }, rot = { x = 350.494, y = 28.716, z = 357.315 }, level = 1, state = GadgetState.GearStop, persistent = true, interact_id = 64 },
	[28006] = { config_id = 28006, gadget_id = 70310341, pos = { x = -0.702, y = 143.796, z = 605.952 }, rot = { x = 305.081, y = 0.254, z = 342.911 }, level = 1 },
	[28007] = { config_id = 28007, gadget_id = 70310170, pos = { x = -9.386, y = 144.026, z = 604.493 }, rot = { x = 4.540, y = 77.935, z = 351.678 }, level = 1, persistent = true },
	[28010] = { config_id = 28010, gadget_id = 70690029, pos = { x = -6.354, y = 162.223, z = 627.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1028011, name = "QUEST_FINISH_28011", event = EventType.EVENT_QUEST_FINISH, source = "4007004", condition = "", action = "action_EVENT_QUEST_FINISH_28011", trigger_count = 0 },
	-- 初始化WindTimeA
	{ config_id = 1028012, name = "VARIABLE_CHANGE_28012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_28012", action = "action_EVENT_VARIABLE_CHANGE_28012", trigger_count = 0 },
	-- 初始化WindTimeA 10s销毁风场
	{ config_id = 1028014, name = "TIME_AXIS_PASS_28014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_28014", action = "action_EVENT_TIME_AXIS_PASS_28014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 28003, gadget_id = 70690001, pos = { x = -21.687, y = 160.747, z = 610.516 }, rot = { x = 320.861, y = 344.403, z = 355.851 }, level = 1 },
		{ config_id = 28008, gadget_id = 70690001, pos = { x = -0.702, y = 143.796, z = 605.952 }, rot = { x = 305.081, y = 0.254, z = 342.911 }, level = 1 },
		{ config_id = 28009, gadget_id = 70690001, pos = { x = -0.702, y = 143.796, z = 605.952 }, rot = { x = 305.081, y = 0.254, z = 342.911 }, level = 1 }
	},
	triggers = {
		{ config_id = 1028013, name = "TIME_AXIS_PASS_28013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_28013", action = "action_EVENT_TIME_AXIS_PASS_28013", trigger_count = 0 }
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
		gadgets = { 28004, 28005, 28007 },
		regions = { },
		triggers = { "QUEST_FINISH_28011", "VARIABLE_CHANGE_28012", "TIME_AXIS_PASS_28014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 28001, 28002, 28006, 28010 },
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
function action_EVENT_QUEST_FINISH_28011(context, evt)
	-- 将configid为 28005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_28012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_28012(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{25}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {25}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133028, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_28014(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_28014(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220133028, 2)
	
	-- 将本组内变量名为 "big_flower" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "big_flower", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_8/TransferFlower"