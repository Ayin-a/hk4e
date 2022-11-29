-- 基础信息
local base_info = {
	group_id = 133301453
}

-- Trigger变量
local defs = {
	gadget_id = 453003
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
	{ config_id = 453001, gadget_id = 70310200, pos = { x = -214.167, y = 255.185, z = 3344.115 }, rot = { x = 0.000, y = 214.751, z = 0.002 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 453002, gadget_id = 70310200, pos = { x = -209.300, y = 256.619, z = 3339.056 }, rot = { x = 0.000, y = 60.355, z = 0.000 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 453003, gadget_id = 70211101, pos = { x = -216.339, y = 249.722, z = 3334.965 }, rot = { x = 2.513, y = 218.148, z = 359.698 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 29 },
	{ config_id = 453004, gadget_id = 70310200, pos = { x = -211.091, y = 255.449, z = 3343.189 }, rot = { x = 0.000, y = 48.310, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 29 },
	{ config_id = 453005, gadget_id = 70310198, pos = { x = -224.778, y = 249.470, z = 3335.428 }, rot = { x = 7.551, y = 56.669, z = 15.875 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 453009, gadget_id = 70310200, pos = { x = -219.552, y = 249.719, z = 3344.190 }, rot = { x = 0.000, y = 218.331, z = 0.002 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 453010, gadget_id = 70310200, pos = { x = -209.697, y = 252.525, z = 3333.815 }, rot = { x = -0.001, y = 266.942, z = 0.001 }, level = 27, persistent = true, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法开始
	{ config_id = 1453006, name = "GADGET_STATE_CHANGE_453006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_453006", action = "action_EVENT_GADGET_STATE_CHANGE_453006", trigger_count = 0 },
	-- 玩法完成
	{ config_id = 1453007, name = "GADGET_STATE_CHANGE_453007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_453007", action = "action_EVENT_GADGET_STATE_CHANGE_453007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1453008, name = "GADGET_STATE_CHANGE_453008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_453008", action = "action_EVENT_GADGET_STATE_CHANGE_453008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 3,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 453004, state = 0 },
			{ config_id = 453005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_453006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 453001, state = 0 },
			{ config_id = 453002, state = 0 },
			{ config_id = 453009, state = 0 },
			{ config_id = 453010, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_453007", "GADGET_STATE_CHANGE_453008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 453003, state = 0 },
			{ config_id = 453004, state = 201 },
			{ config_id = 453005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_453006(context, evt)
	if 453004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_453006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301453, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_453007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_453007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133301453, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_453008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_453008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end