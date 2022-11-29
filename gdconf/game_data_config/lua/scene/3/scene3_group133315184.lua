-- 基础信息
local base_info = {
	group_id = 133315184
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
	{ config_id = 184001, gadget_id = 70310200, pos = { x = -18.122, y = 175.893, z = 2614.395 }, rot = { x = 0.000, y = 65.434, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 184002, gadget_id = 70310200, pos = { x = -20.805, y = 173.951, z = 2633.821 }, rot = { x = 0.000, y = 92.458, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 184003, gadget_id = 70310200, pos = { x = -29.700, y = 183.081, z = 2623.573 }, rot = { x = 0.000, y = 92.458, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 184004, gadget_id = 70310198, pos = { x = -12.647, y = 171.930, z = 2634.611 }, rot = { x = 356.623, y = 110.547, z = 356.161 }, level = 27, area_id = 20 },
	{ config_id = 184005, gadget_id = 70211101, pos = { x = -17.055, y = 174.065, z = 2611.171 }, rot = { x = 355.168, y = 58.253, z = 11.516 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 184008, gadget_id = 70220103, pos = { x = -20.805, y = 175.762, z = 2633.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 184009, gadget_id = 70220103, pos = { x = -18.122, y = 177.608, z = 2614.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1184006, name = "GADGET_STATE_CHANGE_184006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184006", action = "action_EVENT_GADGET_STATE_CHANGE_184006" },
	{ config_id = 1184007, name = "GADGET_STATE_CHANGE_184007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184007", action = "action_EVENT_GADGET_STATE_CHANGE_184007" }
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
	end_suite = 0,
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
			{ config_id = 184003, state = 0 },
			{ config_id = 184004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_184007" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 184001, state = 0 },
			{ config_id = 184002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_184006" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 184003, state = 201 },
			{ config_id = 184004, state = 0 },
			{ config_id = 184005, state = 0 },
			{ config_id = 184008, state = 0 },
			{ config_id = 184009, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_184006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315184, 184001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315184, 184002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315184, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_184007(context, evt)
	if 184003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184007(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133315184, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end