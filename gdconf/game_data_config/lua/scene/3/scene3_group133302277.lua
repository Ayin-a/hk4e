-- 基础信息
local base_info = {
	group_id = 133302277
}

-- Trigger变量
local defs = {
	gadget_id = 277003
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
	{ config_id = 277001, gadget_id = 70310200, pos = { x = -511.575, y = 112.861, z = 2302.180 }, rot = { x = 0.000, y = 246.885, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 277002, gadget_id = 70310200, pos = { x = -510.444, y = 107.619, z = 2292.127 }, rot = { x = 0.000, y = 246.885, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 277003, gadget_id = 70211101, pos = { x = -541.483, y = 102.052, z = 2284.040 }, rot = { x = 0.000, y = 229.503, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 277004, gadget_id = 70310200, pos = { x = -512.437, y = 107.974, z = 2297.424 }, rot = { x = 0.000, y = 246.885, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 277005, gadget_id = 70310198, pos = { x = -545.426, y = 102.280, z = 2279.361 }, rot = { x = 0.000, y = 309.819, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1277006, name = "GADGET_STATE_CHANGE_277006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277006", action = "action_EVENT_GADGET_STATE_CHANGE_277006", trigger_count = 0 },
	{ config_id = 1277007, name = "GADGET_STATE_CHANGE_277007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277007", action = "action_EVENT_GADGET_STATE_CHANGE_277007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1277008, name = "GADGET_STATE_CHANGE_277008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277008", action = "action_EVENT_GADGET_STATE_CHANGE_277008", trigger_count = 0 }
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
			{ config_id = 277004, state = 0 },
			{ config_id = 277005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_277006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 277001, state = 0 },
			{ config_id = 277002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_277007", "GADGET_STATE_CHANGE_277008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 277001, state = 201 },
			{ config_id = 277002, state = 201 },
			{ config_id = 277003, state = 0 },
			{ config_id = 277004, state = 201 },
			{ config_id = 277005, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_277006(context, evt)
	if 277004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_277006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133302277, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_277007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_277007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133302277, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_277008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_277008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end