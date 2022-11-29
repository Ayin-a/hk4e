-- 基础信息
local base_info = {
	group_id = 133302674
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
	{ config_id = 674001, gadget_id = 70310198, pos = { x = -378.848, y = 198.971, z = 2344.738 }, rot = { x = 0.000, y = 223.504, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 674002, gadget_id = 70310200, pos = { x = -360.306, y = 195.975, z = 2348.560 }, rot = { x = 0.000, y = 301.148, z = 0.000 }, level = 27, area_id = 24 },
	-- 1号移动
	{ config_id = 674003, gadget_id = 70290531, pos = { x = -360.306, y = 195.975, z = 2348.560 }, rot = { x = 0.000, y = 301.148, z = 0.000 }, level = 27, route_id = 330200129, area_id = 24 },
	{ config_id = 674004, gadget_id = 70211001, pos = { x = -214.918, y = 188.893, z = 2395.393 }, rot = { x = 346.883, y = 64.436, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	-- 2号移动
	{ config_id = 674005, gadget_id = 70290531, pos = { x = -338.936, y = 187.817, z = 2368.626 }, rot = { x = 0.000, y = 59.555, z = 0.000 }, level = 27, route_id = 330200130, area_id = 24 },
	-- 3号移动
	{ config_id = 674006, gadget_id = 70290531, pos = { x = -293.411, y = 187.293, z = 2351.990 }, rot = { x = 0.000, y = 113.445, z = 0.000 }, level = 27, route_id = 330200131, area_id = 24 },
	{ config_id = 674011, gadget_id = 70310200, pos = { x = -338.936, y = 187.817, z = 2368.626 }, rot = { x = 0.000, y = 59.555, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 674012, gadget_id = 70310200, pos = { x = -293.411, y = 187.293, z = 2351.990 }, rot = { x = 0.000, y = 113.445, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 674013, gadget_id = 70310200, pos = { x = -234.566, y = 195.526, z = 2390.117 }, rot = { x = 0.000, y = 80.363, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 674014, gadget_id = 70310198, pos = { x = -309.114, y = 184.750, z = 2353.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 674015, gadget_id = 70310198, pos = { x = -227.226, y = 186.283, z = 2379.917 }, rot = { x = 0.000, y = 301.947, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1674007, name = "GADGET_STATE_CHANGE_674007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_674007", action = "action_EVENT_GADGET_STATE_CHANGE_674007", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1674008, name = "GADGET_STATE_CHANGE_674008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_674008", action = "action_EVENT_GADGET_STATE_CHANGE_674008", trigger_count = 0 },
	{ config_id = 1674009, name = "GADGET_STATE_CHANGE_674009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_674009", action = "action_EVENT_GADGET_STATE_CHANGE_674009", trigger_count = 0 },
	{ config_id = 1674010, name = "GADGET_STATE_CHANGE_674010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_674010", action = "action_EVENT_GADGET_STATE_CHANGE_674010", trigger_count = 0 }
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
			{ config_id = 674001, state = 0 },
			{ config_id = 674002, state = 0 },
			{ config_id = 674014, state = 0 },
			{ config_id = 674015, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_674008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 674003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_674007" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 674001, state = 0 },
			{ config_id = 674002, state = 201 },
			{ config_id = 674004, state = 0 },
			{ config_id = 674011, state = 201 },
			{ config_id = 674012, state = 201 },
			{ config_id = 674013, state = 201 },
			{ config_id = 674014, state = 0 },
			{ config_id = 674015, state = 0 }
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
			{ config_id = 674005, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_674009" },
		npcs = { },
		variables = {
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 674006, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_674010" },
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
function condition_EVENT_GADGET_STATE_CHANGE_674007(context, evt)
	if 674003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_674007(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133302674, 4, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_674008(context, evt)
	if 674002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_674008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133302674, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_674009(context, evt)
	if 674005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_674009(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133302674, 5, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_674010(context, evt)
	if 674006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_674010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133302674, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end