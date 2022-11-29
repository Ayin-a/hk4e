-- 基础信息
local base_info = {
	group_id = 133303502
}

-- Trigger变量
local defs = {
	gadget_id = 502003
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
	{ config_id = 502001, gadget_id = 70310200, pos = { x = -1801.191, y = 137.937, z = 3490.293 }, rot = { x = 0.000, y = 192.290, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 502002, gadget_id = 70310200, pos = { x = -1800.782, y = 133.628, z = 3490.115 }, rot = { x = 0.000, y = 8.197, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 502003, gadget_id = 70211101, pos = { x = -1802.960, y = 127.081, z = 3488.342 }, rot = { x = 18.190, y = 183.480, z = 358.796 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 502004, gadget_id = 70310200, pos = { x = -1801.504, y = 130.001, z = 3490.524 }, rot = { x = 0.000, y = 7.317, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 502005, gadget_id = 70310198, pos = { x = -1794.128, y = 122.819, z = 3481.127 }, rot = { x = 359.827, y = 205.960, z = 11.136 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1502006, name = "GADGET_STATE_CHANGE_502006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_502006", action = "action_EVENT_GADGET_STATE_CHANGE_502006", trigger_count = 0 },
	{ config_id = 1502007, name = "GADGET_STATE_CHANGE_502007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_502007", action = "action_EVENT_GADGET_STATE_CHANGE_502007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1502008, name = "GADGET_STATE_CHANGE_502008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_502008", action = "action_EVENT_GADGET_STATE_CHANGE_502008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = false }
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
			{ config_id = 502004, state = 0 },
			{ config_id = 502005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_502006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 502001, state = 0 },
			{ config_id = 502002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_502007", "GADGET_STATE_CHANGE_502008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 502001, state = 201 },
			{ config_id = 502002, state = 201 },
			{ config_id = 502003, state = 0 },
			{ config_id = 502004, state = 201 },
			{ config_id = 502005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_502006(context, evt)
	if 502004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_502006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303502, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_502007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_502007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133303502, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_502008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_502008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end