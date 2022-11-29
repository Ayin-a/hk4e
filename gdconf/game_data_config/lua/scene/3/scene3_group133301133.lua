-- 基础信息
local base_info = {
	group_id = 133301133
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
	{ config_id = 133001, gadget_id = 70310198, pos = { x = -482.828, y = 187.060, z = 3308.945 }, rot = { x = 354.761, y = 350.199, z = 3.447 }, level = 33, area_id = 22 },
	{ config_id = 133002, gadget_id = 70310200, pos = { x = -480.597, y = 189.043, z = 3293.852 }, rot = { x = 0.000, y = 130.984, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 133003, gadget_id = 70290531, pos = { x = -480.597, y = 189.043, z = 3293.852 }, rot = { x = 0.000, y = 130.984, z = 0.000 }, level = 33, route_id = 330100091, area_id = 22 },
	{ config_id = 133004, gadget_id = 70211001, pos = { x = -483.733, y = 186.622, z = 3296.340 }, rot = { x = 8.642, y = 317.620, z = 1.216 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1133005, name = "GADGET_STATE_CHANGE_133005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_133005", action = "action_EVENT_GADGET_STATE_CHANGE_133005", trigger_count = 0 },
	{ config_id = 1133006, name = "GADGET_STATE_CHANGE_133006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_133006", action = "action_EVENT_GADGET_STATE_CHANGE_133006", trigger_count = 0 }
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
			{ config_id = 133001, state = 0 },
			{ config_id = 133002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_133006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 133003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_133005" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 133001, state = 0 },
			{ config_id = 133002, state = 201 },
			{ config_id = 133004, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_133005(context, evt)
	if 133003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_133005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133301133, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_133006(context, evt)
	if 133002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_133006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301133, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end