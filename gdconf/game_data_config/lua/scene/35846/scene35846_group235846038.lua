-- 基础信息
local base_info = {
	group_id = 235846038
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
	-- 小花-固定
	[38002] = { config_id = 38002, gadget_id = 70310170, pos = { x = 2535.461, y = 558.572, z = -1704.070 }, rot = { x = 14.347, y = 166.605, z = 343.188 }, level = 1 },
	-- 大花-固定-WindA
	[38003] = { config_id = 38003, gadget_id = 70310169, pos = { x = 2537.369, y = 555.957, z = -1713.058 }, rot = { x = 6.626, y = 133.142, z = 347.501 }, level = 1 },
	[38004] = { config_id = 38004, gadget_id = 70310171, pos = { x = 2525.675, y = 557.677, z = -1702.488 }, rot = { x = 9.065, y = 156.263, z = 343.757 }, level = 1, state = GadgetState.GearStop, interact_id = 64 },
	[38005] = { config_id = 38005, gadget_id = 70310341, pos = { x = 2537.466, y = 557.213, z = -1712.620 }, rot = { x = 344.329, y = 130.199, z = 346.606 }, level = 1 },
	[38006] = { config_id = 38006, gadget_id = 70690001, pos = { x = 2546.922, y = 559.610, z = -1719.138 }, rot = { x = 338.230, y = 121.761, z = 2.011 }, level = 1 },
	[38007] = { config_id = 38007, gadget_id = 70690001, pos = { x = 2556.510, y = 562.765, z = -1725.647 }, rot = { x = 328.215, y = 121.896, z = 357.874 }, level = 1 },
	[38008] = { config_id = 38008, gadget_id = 70690001, pos = { x = 2565.440, y = 567.617, z = -1731.259 }, rot = { x = 335.341, y = 121.475, z = 2.044 }, level = 1 },
	[38009] = { config_id = 38009, gadget_id = 70690001, pos = { x = 2574.914, y = 572.868, z = -1738.820 }, rot = { x = 340.878, y = 137.681, z = 2.827 }, level = 1 },
	-- 小花-固定
	[38012] = { config_id = 38012, gadget_id = 70310170, pos = { x = 2527.457, y = 557.883, z = -1702.287 }, rot = { x = 359.206, y = 100.032, z = 340.034 }, level = 1 },
	[38017] = { config_id = 38017, gadget_id = 70690001, pos = { x = 2579.844, y = 575.407, z = -1744.234 }, rot = { x = 340.878, y = 137.681, z = 2.827 }, level = 1 },
	[38018] = { config_id = 38018, gadget_id = 70690013, pos = { x = 2589.862, y = 531.736, z = -1754.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- P5黄点
	[38019] = { config_id = 38019, gadget_id = 70900201, pos = { x = 2525.675, y = 557.677, z = -1702.488 }, rot = { x = 9.065, y = 156.263, z = 343.757 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化WindTimeA并出风
	{ config_id = 1038014, name = "VARIABLE_CHANGE_38014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_38014", action = "action_EVENT_VARIABLE_CHANGE_38014", trigger_count = 0 },
	-- 初始化WindTimeA 10s销毁风场
	{ config_id = 1038016, name = "TIME_AXIS_PASS_38016", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_38016", action = "action_EVENT_TIME_AXIS_PASS_38016", trigger_count = 0 },
	{ config_id = 1038020, name = "GADGET_STATE_CHANGE_38020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38020", action = "action_EVENT_GADGET_STATE_CHANGE_38020" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 38001, gadget_id = 70310167, pos = { x = 2517.469, y = 560.332, z = -1710.353 }, rot = { x = 356.447, y = 165.059, z = 356.885 }, level = 1, persistent = true, worktop_config = { init_options = { 54 } } },
		{ config_id = 38010, gadget_id = 70310170, pos = { x = 2526.569, y = 559.599, z = -1697.962 }, rot = { x = 0.648, y = 202.112, z = 3.621 }, level = 1 },
		{ config_id = 38011, gadget_id = 70310170, pos = { x = 2522.260, y = 560.650, z = -1706.781 }, rot = { x = 0.425, y = 65.758, z = 355.402 }, level = 1 },
		{ config_id = 38013, gadget_id = 70310170, pos = { x = 2529.696, y = 558.501, z = -1691.421 }, rot = { x = 9.329, y = 74.359, z = 2.421 }, level = 1 }
	},
	triggers = {
		{ config_id = 1038015, name = "TIME_AXIS_PASS_38015", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_38015", action = "action_EVENT_TIME_AXIS_PASS_38015", trigger_count = 0 }
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
		gadgets = { 38002, 38003, 38004, 38012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_38014", "TIME_AXIS_PASS_38016", "GADGET_STATE_CHANGE_38020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 38005, 38006, 38007, 38008, 38009, 38017, 38018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 38019 },
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
function condition_EVENT_VARIABLE_CHANGE_38014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_38014(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{14}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {14}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846038, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_38016(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_38016(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 235846038, 2)
	
	-- 将本组内变量名为 "big_flower" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "big_flower", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38020(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 235846038, 38004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38020(context, evt)
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235846019, 15)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 235846038, EntityType.GADGET, 38019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_8/TransferFlower"