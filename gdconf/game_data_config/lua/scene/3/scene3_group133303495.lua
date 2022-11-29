-- 基础信息
local base_info = {
	group_id = 133303495
}

-- Trigger变量
local defs = {
	gadget_id = 495003
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
	{ config_id = 495001, gadget_id = 70310200, pos = { x = -1225.628, y = 244.803, z = 3918.037 }, rot = { x = 0.000, y = 173.759, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 495002, gadget_id = 70310200, pos = { x = -1220.991, y = 250.763, z = 3919.957 }, rot = { x = 0.000, y = 352.678, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 495003, gadget_id = 70211101, pos = { x = -1229.003, y = 238.217, z = 3909.755 }, rot = { x = 6.281, y = 135.114, z = 344.048 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 495004, gadget_id = 70310200, pos = { x = -1227.991, y = 239.568, z = 3910.706 }, rot = { x = 0.000, y = 342.512, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 495005, gadget_id = 70310198, pos = { x = -1224.897, y = 228.068, z = 3899.086 }, rot = { x = 14.861, y = 180.910, z = 2.144 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 495008, gadget_id = 70310200, pos = { x = -1215.340, y = 262.922, z = 3925.630 }, rot = { x = 0.000, y = 352.678, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1495006, name = "GADGET_STATE_CHANGE_495006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_495006", action = "action_EVENT_GADGET_STATE_CHANGE_495006", trigger_count = 0 },
	{ config_id = 1495007, name = "GADGET_STATE_CHANGE_495007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_495007", action = "action_EVENT_GADGET_STATE_CHANGE_495007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1495009, name = "GADGET_STATE_CHANGE_495009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_495009", action = "action_EVENT_GADGET_STATE_CHANGE_495009", trigger_count = 0 }
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
			{ config_id = 495004, state = 0 },
			{ config_id = 495005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_495006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 495001, state = 0 },
			{ config_id = 495002, state = 0 },
			{ config_id = 495008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_495007", "GADGET_STATE_CHANGE_495009" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 495001, state = 201 },
			{ config_id = 495002, state = 201 },
			{ config_id = 495003, state = 0 },
			{ config_id = 495004, state = 201 },
			{ config_id = 495005, state = 0 },
			{ config_id = 495008, state = 201 }
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
function condition_EVENT_GADGET_STATE_CHANGE_495006(context, evt)
	if 495004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_495006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303495, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_495007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_495007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133303495, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_495009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_495009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end