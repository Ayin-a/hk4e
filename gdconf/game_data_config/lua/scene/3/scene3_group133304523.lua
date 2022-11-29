-- 基础信息
local base_info = {
	group_id = 133304523
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
	{ config_id = 523001, gadget_id = 70310198, pos = { x = -1283.250, y = 331.988, z = 2009.467 }, rot = { x = 0.000, y = 32.978, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 523002, gadget_id = 70310200, pos = { x = -1285.464, y = 332.227, z = 2027.651 }, rot = { x = 0.000, y = 331.738, z = 0.000 }, level = 30, area_id = 21 },
	-- 1号移动
	{ config_id = 523003, gadget_id = 70290531, pos = { x = -1281.844, y = 332.023, z = 2028.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330400094, area_id = 21 },
	{ config_id = 523004, gadget_id = 70290485, pos = { x = -1286.471, y = 338.469, z = 1995.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, area_id = 21 },
	-- 2号移动
	{ config_id = 523005, gadget_id = 70290531, pos = { x = -1290.352, y = 331.316, z = 2026.653 }, rot = { x = 0.000, y = 305.984, z = 0.000 }, level = 30, route_id = 330400095, area_id = 21 },
	-- 3号移动
	{ config_id = 523006, gadget_id = 70290531, pos = { x = -1284.768, y = 335.928, z = 2026.210 }, rot = { x = 0.000, y = 160.706, z = 0.000 }, level = 30, route_id = 330400096, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1523007, name = "GADGET_STATE_CHANGE_523007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_523007", action = "action_EVENT_GADGET_STATE_CHANGE_523007", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1523008, name = "GADGET_STATE_CHANGE_523008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_523008", action = "action_EVENT_GADGET_STATE_CHANGE_523008", trigger_count = 0 }
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
			{ config_id = 523001, state = 0 },
			{ config_id = 523002, state = 0 },
			{ config_id = 523004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_523008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 523003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 523005, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 523006, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_523007" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 523001, state = 0 },
			{ config_id = 523002, state = 201 },
			{ config_id = 523004, state = 201 }
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
function condition_EVENT_GADGET_STATE_CHANGE_523007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304523, 523003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304523, 523005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304523, 523006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_523007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304523, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_523008(context, evt)
	if 523002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_523008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304523, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30006, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end