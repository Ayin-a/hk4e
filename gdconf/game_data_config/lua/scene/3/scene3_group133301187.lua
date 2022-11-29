-- 基础信息
local base_info = {
	group_id = 133301187
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
	{ config_id = 187001, gadget_id = 70310198, pos = { x = -825.768, y = 104.780, z = 3340.412 }, rot = { x = 0.000, y = 43.025, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 187002, gadget_id = 70310200, pos = { x = -839.810, y = 108.824, z = 3350.575 }, rot = { x = 0.000, y = 288.762, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 187003, gadget_id = 70290531, pos = { x = -841.254, y = 107.043, z = 3349.636 }, rot = { x = 0.000, y = 308.079, z = 0.000 }, level = 30, route_id = 330100174, area_id = 23 },
	{ config_id = 187004, gadget_id = 70211001, pos = { x = -824.662, y = 104.807, z = 3342.013 }, rot = { x = 0.000, y = 9.066, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1187005, name = "GADGET_STATE_CHANGE_187005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_187005", action = "action_EVENT_GADGET_STATE_CHANGE_187005", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1187006, name = "GADGET_STATE_CHANGE_187006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_187006", action = "action_EVENT_GADGET_STATE_CHANGE_187006", trigger_count = 0 },
	{ config_id = 1187007, name = "GROUP_LOAD_187007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_187007", action = "action_EVENT_GROUP_LOAD_187007", trigger_count = 0 }
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
			{ config_id = 187001, state = 0 },
			{ config_id = 187002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_187006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 187003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_187005" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 187001, state = 0 },
			{ config_id = 187002, state = 201 },
			{ config_id = 187004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_187007" },
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
function condition_EVENT_GADGET_STATE_CHANGE_187005(context, evt)
	if 187003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_187005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133301187, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 607)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_187006(context, evt)
	if 187002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_187006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301187, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_187007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133301187, 187002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_187007(context, evt)
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 607)
	
	return 0
end