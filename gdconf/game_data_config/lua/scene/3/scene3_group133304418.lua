-- 基础信息
local base_info = {
	group_id = 133304418
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
	{ config_id = 418001, gadget_id = 70310198, pos = { x = -1612.391, y = 200.772, z = 2591.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 418002, gadget_id = 70310200, pos = { x = -1618.954, y = 202.268, z = 2604.565 }, rot = { x = 0.000, y = 331.738, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 418003, gadget_id = 70290531, pos = { x = -1612.371, y = 203.734, z = 2604.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330400050, area_id = 21 },
	{ config_id = 418005, gadget_id = 70211001, pos = { x = -1599.100, y = 200.636, z = 2609.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1418004, name = "GADGET_STATE_CHANGE_418004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_418004", action = "action_EVENT_GADGET_STATE_CHANGE_418004", trigger_count = 0 },
	{ config_id = 1418006, name = "GADGET_STATE_CHANGE_418006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_418006", action = "action_EVENT_GADGET_STATE_CHANGE_418006", trigger_count = 0 }
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
			{ config_id = 418001, state = 0 },
			{ config_id = 418002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_418006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 418003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_418004" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 418001, state = 0 },
			{ config_id = 418002, state = 201 },
			{ config_id = 418005, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_418004(context, evt)
	if 418003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_418004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304418, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_418006(context, evt)
	if 418002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_418006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304418, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end