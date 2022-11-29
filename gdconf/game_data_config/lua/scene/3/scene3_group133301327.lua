-- 基础信息
local base_info = {
	group_id = 133301327
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
	{ config_id = 327001, gadget_id = 70310198, pos = { x = -856.203, y = 236.617, z = 3503.989 }, rot = { x = 13.249, y = 58.584, z = 0.724 }, level = 30, area_id = 23 },
	{ config_id = 327002, gadget_id = 70310200, pos = { x = -862.693, y = 243.804, z = 3487.734 }, rot = { x = 0.000, y = 336.534, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 327003, gadget_id = 70290531, pos = { x = -862.693, y = 243.804, z = 3487.734 }, rot = { x = 0.000, y = 336.534, z = 0.000 }, level = 30, route_id = 330100092, area_id = 23 },
	{ config_id = 327004, gadget_id = 70211101, pos = { x = -890.834, y = 243.444, z = 3499.468 }, rot = { x = 7.480, y = 105.802, z = 357.932 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	-- beta反馈，从碎石堆改成石中植物。
	{ config_id = 327007, gadget_id = 70330218, pos = { x = -863.218, y = 242.958, z = 3485.755 }, rot = { x = 359.935, y = 352.560, z = 1.702 }, level = 33, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1327005, name = "GADGET_STATE_CHANGE_327005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_327005", action = "action_EVENT_GADGET_STATE_CHANGE_327005", trigger_count = 0 },
	{ config_id = 1327006, name = "GADGET_STATE_CHANGE_327006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_327006", action = "action_EVENT_GADGET_STATE_CHANGE_327006", trigger_count = 0 }
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
			{ config_id = 327001, state = 0 },
			{ config_id = 327002, state = 0 },
			{ config_id = 327007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_327006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 327003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_327005" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 327001, state = 0 },
			{ config_id = 327002, state = 201 },
			{ config_id = 327004, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_327005(context, evt)
	if 327003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_327005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133301327, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_327006(context, evt)
	if 327002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_327006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301327, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end