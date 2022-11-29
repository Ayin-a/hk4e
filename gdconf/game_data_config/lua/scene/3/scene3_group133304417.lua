-- 基础信息
local base_info = {
	group_id = 133304417
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
	{ config_id = 417001, gadget_id = 70310198, pos = { x = -1205.623, y = 192.646, z = 2354.881 }, rot = { x = 0.000, y = 223.504, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 417002, gadget_id = 70310200, pos = { x = -1213.752, y = 196.036, z = 2376.879 }, rot = { x = 0.000, y = 331.738, z = 0.000 }, level = 30, area_id = 21 },
	-- 1号移动
	{ config_id = 417003, gadget_id = 70290531, pos = { x = -1211.549, y = 196.153, z = 2377.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330400061, area_id = 21 },
	{ config_id = 417004, gadget_id = 70211001, pos = { x = -1237.388, y = 189.153, z = 2417.214 }, rot = { x = 337.679, y = 101.571, z = 358.927 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	-- 2号移动
	{ config_id = 417007, gadget_id = 70290531, pos = { x = -1195.269, y = 199.171, z = 2389.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330400062, area_id = 21 },
	-- 3号移动
	{ config_id = 417009, gadget_id = 70290531, pos = { x = -1205.771, y = 199.829, z = 2412.889 }, rot = { x = 0.000, y = 113.445, z = 0.000 }, level = 30, route_id = 330400063, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1417005, name = "GADGET_STATE_CHANGE_417005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_417005", action = "action_EVENT_GADGET_STATE_CHANGE_417005", trigger_count = 0 },
	{ config_id = 1417006, name = "GADGET_STATE_CHANGE_417006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_417006", action = "action_EVENT_GADGET_STATE_CHANGE_417006", trigger_count = 0 },
	{ config_id = 1417008, name = "GADGET_STATE_CHANGE_417008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_417008", action = "action_EVENT_GADGET_STATE_CHANGE_417008", trigger_count = 0 },
	{ config_id = 1417010, name = "GADGET_STATE_CHANGE_417010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_417010", action = "action_EVENT_GADGET_STATE_CHANGE_417010", trigger_count = 0 }
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
			{ config_id = 417001, state = 0 },
			{ config_id = 417002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_417006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 417003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_417005" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 417001, state = 0 },
			{ config_id = 417002, state = 201 },
			{ config_id = 417004, state = 0 }
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
			{ config_id = 417007, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_417008" },
		npcs = { },
		variables = {
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 417009, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_417010" },
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
function condition_EVENT_GADGET_STATE_CHANGE_417005(context, evt)
	if 417003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_417005(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304417, 4, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_417006(context, evt)
	if 417002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_417006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304417, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_417008(context, evt)
	if 417007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_417008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304417, 5, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_417010(context, evt)
	if 417009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_417010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304417, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end