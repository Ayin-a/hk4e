-- 基础信息
local base_info = {
	group_id = 133301274
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
	{ config_id = 274001, gadget_id = 70310198, pos = { x = -353.535, y = 220.338, z = 3843.050 }, rot = { x = 0.082, y = 265.529, z = 2.166 }, level = 33, area_id = 22 },
	{ config_id = 274002, gadget_id = 70310200, pos = { x = -354.891, y = 230.431, z = 3855.888 }, rot = { x = 0.000, y = 187.313, z = 0.000 }, level = 33, area_id = 22 },
	-- 1号移动
	{ config_id = 274003, gadget_id = 70290531, pos = { x = -357.066, y = 230.342, z = 3855.904 }, rot = { x = 0.000, y = 3.182, z = 0.000 }, level = 33, route_id = 330100100, area_id = 22 },
	{ config_id = 274004, gadget_id = 70211001, pos = { x = -346.239, y = 238.790, z = 3906.113 }, rot = { x = 19.875, y = 182.438, z = 358.570 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	-- 2号移动
	{ config_id = 274005, gadget_id = 70290531, pos = { x = -366.175, y = 228.126, z = 3863.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, route_id = 330100101, area_id = 22 },
	-- 3号移动
	{ config_id = 274006, gadget_id = 70290531, pos = { x = -364.745, y = 230.584, z = 3890.684 }, rot = { x = 0.000, y = 58.048, z = 0.000 }, level = 33, route_id = 330100102, area_id = 22 },
	-- 3号移动
	{ config_id = 274011, gadget_id = 70290531, pos = { x = -345.662, y = 244.343, z = 3902.131 }, rot = { x = 0.000, y = 239.625, z = 0.000 }, level = 33, route_id = 330100102, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1274007, name = "GADGET_STATE_CHANGE_274007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274007", action = "action_EVENT_GADGET_STATE_CHANGE_274007", trigger_count = 0 },
	{ config_id = 1274008, name = "GADGET_STATE_CHANGE_274008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274008", action = "action_EVENT_GADGET_STATE_CHANGE_274008", trigger_count = 0 },
	{ config_id = 1274009, name = "GADGET_STATE_CHANGE_274009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274009", action = "action_EVENT_GADGET_STATE_CHANGE_274009", trigger_count = 0 },
	{ config_id = 1274010, name = "GADGET_STATE_CHANGE_274010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274010", action = "action_EVENT_GADGET_STATE_CHANGE_274010", trigger_count = 0 }
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
			{ config_id = 274001, state = 0 },
			{ config_id = 274002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_274008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 274003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_274007" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 274001, state = 0 },
			{ config_id = 274002, state = 201 },
			{ config_id = 274004, state = 0 }
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
			{ config_id = 274005, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_274009" },
		npcs = { },
		variables = {
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 274006, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_274010" },
		npcs = { },
		variables = {
		}
	},
	[6] = {
		gadgets = {
			{ config_id = 274011, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_274007(context, evt)
	if 274003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274007(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301274, 4, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274008(context, evt)
	if 274002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301274, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274009(context, evt)
	if 274005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274009(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301274, 5, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274010(context, evt)
	if 274006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133301274, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end