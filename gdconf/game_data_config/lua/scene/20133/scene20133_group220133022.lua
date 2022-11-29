-- 基础信息
local base_info = {
	group_id = 220133022
}

-- DEFS_MISCS
local	defs = {


		--左右旋转的SelectOptionID
		selectID_horizon = 759,

		--上下俯仰的SelectOptionID
		selectID_vertical = 760,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
			[22001] = {0, 103},
			

			
		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			
		}
	}

                --装置初始state
                init_state = {
                        [22006] = 303,
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
	-- 横向移动 0,103
	[22001] = { config_id = 22001, gadget_id = 70310167, pos = { x = 2165.313, y = 539.978, z = 508.754 }, rot = { x = 19.393, y = 182.080, z = 2.342 }, level = 1, persistent = true, worktop_config = { init_options = { 759 } } },
	[22003] = { config_id = 22003, gadget_id = 70310341, pos = { x = 2158.482, y = 545.892, z = 522.912 }, rot = { x = 328.735, y = 19.731, z = 346.344 }, level = 1 },
	-- WindTimeA
	[22004] = { config_id = 22004, gadget_id = 70310169, pos = { x = 2158.514, y = 544.372, z = 522.924 }, rot = { x = 2.224, y = 16.511, z = 0.115 }, level = 1, persistent = true },
	-- 纵向移动 0,303
	[22006] = { config_id = 22006, gadget_id = 70310170, pos = { x = 2158.073, y = 541.099, z = 509.984 }, rot = { x = 6.970, y = 101.169, z = 343.688 }, level = 1, persistent = true },
	[22008] = { config_id = 22008, gadget_id = 70690001, pos = { x = 2160.450, y = 549.278, z = 532.254 }, rot = { x = 331.550, y = 18.954, z = 346.731 }, level = 1 },
	[22009] = { config_id = 22009, gadget_id = 70690001, pos = { x = 2163.392, y = 554.185, z = 540.820 }, rot = { x = 331.550, y = 18.954, z = 346.731 }, level = 1 },
	[22010] = { config_id = 22010, gadget_id = 70690001, pos = { x = 2166.040, y = 558.603, z = 548.531 }, rot = { x = 331.550, y = 18.954, z = 346.731 }, level = 1 },
	-- 荆棘宝箱-等待正式掉落
	[22011] = { config_id = 22011, gadget_id = 70211165, pos = { x = 2165.138, y = 538.110, z = 502.900 }, rot = { x = 343.327, y = 6.008, z = 346.739 }, level = 16, chest_drop_id = 1050211, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	-- 横 0,102
	[22012] = { config_id = 22012, gadget_id = 70310170, pos = { x = 2165.688, y = 543.812, z = 519.680 }, rot = { x = 351.438, y = 295.262, z = 17.131 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化WindTimeA
	{ config_id = 1022002, name = "VARIABLE_CHANGE_22002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_22002", action = "action_EVENT_VARIABLE_CHANGE_22002", trigger_count = 0 },
	-- WindTimeA10s销毁风场
	{ config_id = 1022007, name = "TIME_AXIS_PASS_22007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_22007", action = "action_EVENT_TIME_AXIS_PASS_22007", trigger_count = 0 },
	{ config_id = 1022014, name = "GROUP_LOAD_22014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_22014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1022005, name = "TIME_AXIS_PASS_22005", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_22005", action = "action_EVENT_TIME_AXIS_PASS_22005", trigger_count = 0 },
		{ config_id = 1022013, name = "GADGET_STATE_CHANGE_22013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22013", action = "action_EVENT_GADGET_STATE_CHANGE_22013", trigger_count = 0 }
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
		gadgets = { 22001, 22004, 22006, 22011, 22012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_22002", "TIME_AXIS_PASS_22007", "GROUP_LOAD_22014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 大传音花创造的风场,
		monsters = { },
		gadgets = { 22003, 22008, 22009, 22010 },
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
function condition_EVENT_VARIABLE_CHANGE_22002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_22002(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {15}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133022, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_22007(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_22007(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220133022, 2)
	
	-- 将本组内变量名为 "big_flower" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "big_flower", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_22014(context, evt)
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

require "V2_8/TransferFlower"