-- 基础信息
local base_info = {
	group_id = 133301532
}

-- Trigger变量
local defs = {
	gadget_id = 532003
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
	{ config_id = 532001, gadget_id = 70310200, pos = { x = -768.388, y = 182.872, z = 3736.464 }, rot = { x = 350.766, y = 281.559, z = 359.837 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 532002, gadget_id = 70310200, pos = { x = -777.350, y = 189.246, z = 3729.804 }, rot = { x = 15.450, y = 260.613, z = 359.847 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 532003, gadget_id = 70211101, pos = { x = -769.268, y = 180.211, z = 3729.268 }, rot = { x = 356.436, y = 301.642, z = 358.479 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 532004, gadget_id = 70310200, pos = { x = -779.365, y = 185.512, z = 3726.626 }, rot = { x = 0.000, y = 322.728, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 532005, gadget_id = 70310198, pos = { x = -792.977, y = 180.217, z = 3738.719 }, rot = { x = 0.000, y = 319.322, z = 0.000 }, level = 33, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1532006, name = "GADGET_STATE_CHANGE_532006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_532006", action = "action_EVENT_GADGET_STATE_CHANGE_532006", trigger_count = 0 },
	{ config_id = 1532007, name = "GADGET_STATE_CHANGE_532007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_532007", action = "action_EVENT_GADGET_STATE_CHANGE_532007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1532008, name = "GADGET_STATE_CHANGE_532008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_532008", action = "action_EVENT_GADGET_STATE_CHANGE_532008", trigger_count = 0 }
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
			{ config_id = 532004, state = 0 },
			{ config_id = 532005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_532006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 532001, state = 0 },
			{ config_id = 532002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_532007", "GADGET_STATE_CHANGE_532008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 532001, state = 201 },
			{ config_id = 532002, state = 201 },
			{ config_id = 532003, state = 0 },
			{ config_id = 532004, state = 201 },
			{ config_id = 532005, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_532006(context, evt)
	if 532004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_532006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301532, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_532007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_532007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133301532, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_532008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_532008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end