-- 基础信息
local base_info = {
	group_id = 133303487
}

-- Trigger变量
local defs = {
	gadget_id = 487003
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
	{ config_id = 487001, gadget_id = 70310200, pos = { x = -1546.542, y = 202.732, z = 3487.362 }, rot = { x = 0.000, y = 245.088, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 487002, gadget_id = 70310200, pos = { x = -1552.989, y = 201.010, z = 3493.302 }, rot = { x = 0.000, y = 270.626, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 487003, gadget_id = 70211101, pos = { x = -1553.892, y = 193.240, z = 3493.786 }, rot = { x = 0.412, y = 98.249, z = 345.031 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 487004, gadget_id = 70310200, pos = { x = -1540.888, y = 198.054, z = 3486.602 }, rot = { x = 0.000, y = 211.924, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 487005, gadget_id = 70310198, pos = { x = -1531.451, y = 193.650, z = 3488.202 }, rot = { x = 5.059, y = 36.605, z = 12.441 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1487006, name = "GADGET_STATE_CHANGE_487006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_487006", action = "action_EVENT_GADGET_STATE_CHANGE_487006", trigger_count = 0 },
	{ config_id = 1487007, name = "GADGET_STATE_CHANGE_487007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_487007", action = "action_EVENT_GADGET_STATE_CHANGE_487007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1487008, name = "GADGET_STATE_CHANGE_487008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_487008", action = "action_EVENT_GADGET_STATE_CHANGE_487008", trigger_count = 0 }
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
			{ config_id = 487004, state = 0 },
			{ config_id = 487005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_487006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 487001, state = 0 },
			{ config_id = 487002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_487007", "GADGET_STATE_CHANGE_487008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 487001, state = 201 },
			{ config_id = 487002, state = 201 },
			{ config_id = 487003, state = 0 },
			{ config_id = 487004, state = 201 },
			{ config_id = 487005, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_487006(context, evt)
	if 487004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_487006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303487, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_487007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_487007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133303487, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_487008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_487008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end