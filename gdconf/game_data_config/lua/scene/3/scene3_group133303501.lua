-- 基础信息
local base_info = {
	group_id = 133303501
}

-- Trigger变量
local defs = {
	gadget_id = 501003
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
	{ config_id = 501001, gadget_id = 70310200, pos = { x = -1772.148, y = 165.479, z = 3570.783 }, rot = { x = 0.000, y = 225.036, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 501002, gadget_id = 70310200, pos = { x = -1777.550, y = 168.395, z = 3575.182 }, rot = { x = 0.000, y = 182.787, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 501003, gadget_id = 70211101, pos = { x = -1777.171, y = 162.481, z = 3578.624 }, rot = { x = 14.139, y = 112.274, z = 344.541 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 501004, gadget_id = 70310200, pos = { x = -1782.161, y = 158.231, z = 3561.243 }, rot = { x = 0.000, y = 6.281, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 501005, gadget_id = 70310198, pos = { x = -1774.076, y = 150.199, z = 3550.664 }, rot = { x = 8.852, y = 224.203, z = 11.057 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1501006, name = "GADGET_STATE_CHANGE_501006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_501006", action = "action_EVENT_GADGET_STATE_CHANGE_501006", trigger_count = 0 },
	{ config_id = 1501007, name = "GADGET_STATE_CHANGE_501007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_501007", action = "action_EVENT_GADGET_STATE_CHANGE_501007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1501008, name = "GADGET_STATE_CHANGE_501008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_501008", action = "action_EVENT_GADGET_STATE_CHANGE_501008", trigger_count = 0 }
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
			{ config_id = 501004, state = 0 },
			{ config_id = 501005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_501006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 501001, state = 0 },
			{ config_id = 501002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_501007", "GADGET_STATE_CHANGE_501008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 501001, state = 201 },
			{ config_id = 501002, state = 201 },
			{ config_id = 501003, state = 0 },
			{ config_id = 501004, state = 201 },
			{ config_id = 501005, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_501006(context, evt)
	if 501004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_501006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303501, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_501007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_501007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133303501, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_501008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_501008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end