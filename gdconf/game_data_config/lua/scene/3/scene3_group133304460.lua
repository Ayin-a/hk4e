-- 基础信息
local base_info = {
	group_id = 133304460
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
	{ config_id = 460001, gadget_id = 70310198, pos = { x = -1708.239, y = 130.732, z = 2702.917 }, rot = { x = 0.000, y = 12.468, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 460002, gadget_id = 70310200, pos = { x = -1709.655, y = 133.316, z = 2692.317 }, rot = { x = 0.000, y = 251.113, z = 0.000 }, level = 30, area_id = 21 },
	-- 1号移动
	{ config_id = 460003, gadget_id = 70290531, pos = { x = -1709.655, y = 135.268, z = 2692.317 }, rot = { x = 0.000, y = 256.620, z = 0.000 }, level = 30, route_id = 330400073, area_id = 21 },
	{ config_id = 460004, gadget_id = 70211001, pos = { x = -1669.232, y = 136.619, z = 2601.489 }, rot = { x = 27.196, y = 11.005, z = 346.459 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	-- 2号移动
	{ config_id = 460005, gadget_id = 70290531, pos = { x = -1715.253, y = 142.542, z = 2672.229 }, rot = { x = 0.000, y = 355.967, z = 0.000 }, level = 30, route_id = 330400074, area_id = 21 },
	-- 3号移动
	{ config_id = 460006, gadget_id = 70290531, pos = { x = -1690.809, y = 148.585, z = 2637.456 }, rot = { x = 0.000, y = 162.543, z = 0.000 }, level = 30, route_id = 330400075, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1460007, name = "GADGET_STATE_CHANGE_460007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_460007", action = "action_EVENT_GADGET_STATE_CHANGE_460007", trigger_count = 0 },
	{ config_id = 1460008, name = "GADGET_STATE_CHANGE_460008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_460008", action = "action_EVENT_GADGET_STATE_CHANGE_460008", trigger_count = 0 },
	{ config_id = 1460009, name = "GADGET_STATE_CHANGE_460009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_460009", action = "action_EVENT_GADGET_STATE_CHANGE_460009", trigger_count = 0 },
	{ config_id = 1460010, name = "GADGET_STATE_CHANGE_460010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_460010", action = "action_EVENT_GADGET_STATE_CHANGE_460010", trigger_count = 0 }
}

-- 变量
variables = {
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
			{ config_id = 460001, state = 0 },
			{ config_id = 460002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_460008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 460003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_460007" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 460001, state = 0 },
			{ config_id = 460002, state = 201 },
			{ config_id = 460004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 460005, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_460009" },
		npcs = { },
		variables = {
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 460006, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_460010" },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_460007(context, evt)
	if 460003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_460007(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304460, 4, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_460008(context, evt)
	if 460002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_460008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304460, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_460009(context, evt)
	if 460005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_460009(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304460, 5, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_460010(context, evt)
	if 460006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_460010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304460, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end