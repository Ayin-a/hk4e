-- 基础信息
local base_info = {
	group_id = 133303488
}

-- Trigger变量
local defs = {
	gadget_id = 488003
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
	{ config_id = 488001, gadget_id = 70310200, pos = { x = -1310.230, y = 196.323, z = 3153.337 }, rot = { x = 0.000, y = 42.496, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 488002, gadget_id = 70310200, pos = { x = -1305.493, y = 197.165, z = 3146.566 }, rot = { x = 0.000, y = 20.186, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 488003, gadget_id = 70211101, pos = { x = -1302.643, y = 197.250, z = 3159.444 }, rot = { x = 342.015, y = 44.878, z = 351.069 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 488004, gadget_id = 70310200, pos = { x = -1314.345, y = 201.555, z = 3158.321 }, rot = { x = 0.000, y = 94.474, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 488005, gadget_id = 70310198, pos = { x = -1294.629, y = 198.520, z = 3162.125 }, rot = { x = 0.000, y = 6.885, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1488006, name = "GADGET_STATE_CHANGE_488006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_488006", action = "action_EVENT_GADGET_STATE_CHANGE_488006", trigger_count = 0 },
	{ config_id = 1488007, name = "GADGET_STATE_CHANGE_488007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_488007", action = "action_EVENT_GADGET_STATE_CHANGE_488007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1488008, name = "GADGET_STATE_CHANGE_488008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_488008", action = "action_EVENT_GADGET_STATE_CHANGE_488008", trigger_count = 0 }
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
			{ config_id = 488004, state = 0 },
			{ config_id = 488005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_488006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 488001, state = 0 },
			{ config_id = 488002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_488007", "GADGET_STATE_CHANGE_488008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 488001, state = 201 },
			{ config_id = 488002, state = 201 },
			{ config_id = 488003, state = 0 },
			{ config_id = 488004, state = 201 },
			{ config_id = 488005, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_488006(context, evt)
	if 488004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_488006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303488, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_488007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_488007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133303488, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_488008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_488008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end