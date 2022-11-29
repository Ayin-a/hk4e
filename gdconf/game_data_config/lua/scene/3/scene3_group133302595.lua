-- 基础信息
local base_info = {
	group_id = 133302595
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
	{ config_id = 595001, gadget_id = 70310198, pos = { x = -25.427, y = 297.135, z = 2827.958 }, rot = { x = 0.000, y = 143.724, z = 5.633 }, level = 27, area_id = 20 },
	{ config_id = 595002, gadget_id = 70310200, pos = { x = -5.034, y = 307.435, z = 2820.115 }, rot = { x = 0.000, y = 331.738, z = 0.000 }, level = 27, area_id = 20 },
	-- 1号移动
	{ config_id = 595003, gadget_id = 70290531, pos = { x = -12.718, y = 304.441, z = 2824.220 }, rot = { x = 0.000, y = 336.218, z = 0.000 }, level = 27, route_id = 330200111, area_id = 20 },
	{ config_id = 595004, gadget_id = 70211102, pos = { x = -4.470, y = 305.263, z = 2815.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	-- 2号移动
	{ config_id = 595005, gadget_id = 70290531, pos = { x = -5.605, y = 303.928, z = 2827.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330200112, area_id = 20 },
	-- 3号移动
	{ config_id = 595006, gadget_id = 70290531, pos = { x = 1.675, y = 307.445, z = 2822.491 }, rot = { x = 0.000, y = 56.552, z = 0.000 }, level = 27, route_id = 330200113, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1595008, name = "GADGET_STATE_CHANGE_595008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_595008", action = "action_EVENT_GADGET_STATE_CHANGE_595008", trigger_count = 0 },
	{ config_id = 1595010, name = "GADGET_STATE_CHANGE_595010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_595010", action = "action_EVENT_GADGET_STATE_CHANGE_595010", trigger_count = 0 }
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
			{ config_id = 595001, state = 0 },
			{ config_id = 595002, state = 0 },
			{ config_id = 595004, state = 101 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_595008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 595003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 595005, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 595006, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_595010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 595001, state = 0 },
			{ config_id = 595002, state = 201 },
			{ config_id = 595004, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_595008(context, evt)
	if 595002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_595008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133302595, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_595010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302595, 595003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302595, 595005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302595, 595006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_595010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133302595, 3)
	
	return 0
end