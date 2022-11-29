-- 基础信息
local base_info = {
	group_id = 235846037
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
			[37001] = {0, 103},
			
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
	[37002] = { config_id = 37002, gadget_id = 70900201, pos = { x = 2469.289, y = 535.385, z = -1775.812 }, rot = { x = 357.228, y = 323.029, z = 359.328 }, level = 1 },
	-- 大花-固定-WindA
	[37004] = { config_id = 37004, gadget_id = 70310169, pos = { x = 2470.463, y = 533.333, z = -1766.256 }, rot = { x = 357.213, y = 49.919, z = 11.336 }, level = 1 },
	[37005] = { config_id = 37005, gadget_id = 70310171, pos = { x = 2469.289, y = 535.385, z = -1775.812 }, rot = { x = 357.228, y = 323.029, z = 359.328 }, level = 1, state = GadgetState.GearStop, interact_id = 64 },
	[37006] = { config_id = 37006, gadget_id = 70310341, pos = { x = 2470.158, y = 533.444, z = -1765.430 }, rot = { x = 332.157, y = 40.245, z = 0.000 }, level = 1 },
	[37007] = { config_id = 37007, gadget_id = 70690001, pos = { x = 2475.140, y = 535.883, z = -1758.562 }, rot = { x = 338.230, y = 39.447, z = 2.011 }, level = 1 },
	[37008] = { config_id = 37008, gadget_id = 70690001, pos = { x = 2483.667, y = 539.968, z = -1748.945 }, rot = { x = 328.215, y = 39.582, z = 357.874 }, level = 1 },
	[37009] = { config_id = 37009, gadget_id = 70690001, pos = { x = 2490.422, y = 544.820, z = -1740.845 }, rot = { x = 335.341, y = 39.161, z = 2.044 }, level = 1 },
	[37010] = { config_id = 37010, gadget_id = 70690001, pos = { x = 2499.182, y = 550.071, z = -1732.468 }, rot = { x = 340.878, y = 55.366, z = 2.827 }, level = 1 },
	-- 小花-固定
	[37018] = { config_id = 37018, gadget_id = 70310170, pos = { x = 2470.524, y = 535.283, z = -1774.989 }, rot = { x = 4.038, y = 355.302, z = 355.955 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第一次激活音符植物就切换黄点
	{ config_id = 1037001, name = "GADGET_STATE_CHANGE_37001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37001", action = "action_EVENT_GADGET_STATE_CHANGE_37001" },
	-- 初始化WindTimeA并出风
	{ config_id = 1037012, name = "VARIABLE_CHANGE_37012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_37012", action = "action_EVENT_VARIABLE_CHANGE_37012", trigger_count = 0 },
	-- 初始化WindTimeA 10s销毁风场
	{ config_id = 1037014, name = "TIME_AXIS_PASS_37014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_37014", action = "action_EVENT_TIME_AXIS_PASS_37014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1037013, name = "TIME_AXIS_PASS_37013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_37013", action = "action_EVENT_TIME_AXIS_PASS_37013", trigger_count = 0 }
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
		gadgets = { 37004, 37005, 37018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_37001", "VARIABLE_CHANGE_37012", "TIME_AXIS_PASS_37014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 37006, 37007, 37008, 37009, 37010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = P3黄点,
		monsters = { },
		gadgets = { 37002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_37001(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 235846037, 37005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846036, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 235846037, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_37012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_37012(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {15}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846037, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_37014(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_37014(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846037, 2)
	
	-- 将本组内变量名为 "big_flower" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "big_flower", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_8/TransferFlower"