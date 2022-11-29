-- 基础信息
local base_info = {
	group_id = 133315230
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
	{ config_id = 230001, gadget_id = 70310198, pos = { x = 153.380, y = 236.107, z = 2249.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 230002, gadget_id = 70310200, pos = { x = 124.854, y = 252.984, z = 2261.168 }, rot = { x = 0.000, y = 276.026, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 230003, gadget_id = 70290531, pos = { x = 124.854, y = 252.984, z = 2261.168 }, rot = { x = 0.000, y = 276.026, z = 0.000 }, level = 27, route_id = 331500075, area_id = 20 },
	{ config_id = 230004, gadget_id = 70211001, pos = { x = 240.141, y = 207.773, z = 2278.838 }, rot = { x = 0.000, y = 105.060, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 230007, gadget_id = 70290531, pos = { x = 143.864, y = 246.711, z = 2269.938 }, rot = { x = 0.000, y = 5.499, z = 0.000 }, level = 27, route_id = 331500076, area_id = 20 },
	{ config_id = 230009, gadget_id = 70310200, pos = { x = 143.864, y = 246.711, z = 2269.938 }, rot = { x = 0.000, y = 5.499, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 230010, gadget_id = 70310200, pos = { x = 197.217, y = 226.880, z = 2264.900 }, rot = { x = 0.000, y = 66.996, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1230005, name = "GADGET_STATE_CHANGE_230005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_230005", action = "action_EVENT_GADGET_STATE_CHANGE_230005", trigger_count = 0 },
	{ config_id = 1230006, name = "GADGET_STATE_CHANGE_230006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_230006", action = "action_EVENT_GADGET_STATE_CHANGE_230006", trigger_count = 0 },
	{ config_id = 1230008, name = "GADGET_STATE_CHANGE_230008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_230008", action = "action_EVENT_GADGET_STATE_CHANGE_230008", trigger_count = 0 }
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
	end_suite = 4,
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
			{ config_id = 230001, state = 0 },
			{ config_id = 230002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_230006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 230001, state = 0 },
			{ config_id = 230002, state = 201 },
			{ config_id = 230003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_230005" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 230001, state = 0 },
			{ config_id = 230002, state = 201 },
			{ config_id = 230007, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_230008" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 230001, state = 0 },
			{ config_id = 230002, state = 201 },
			{ config_id = 230004, state = 0 },
			{ config_id = 230009, state = 201 },
			{ config_id = 230010, state = 201 }
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
function condition_EVENT_GADGET_STATE_CHANGE_230005(context, evt)
	if 230003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_230005(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133315230, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_230006(context, evt)
	if 230002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_230006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133315230, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_230008(context, evt)
	if 230007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_230008(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315230, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end