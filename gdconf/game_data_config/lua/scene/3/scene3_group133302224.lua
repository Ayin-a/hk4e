-- 基础信息
local base_info = {
	group_id = 133302224
}

-- Trigger变量
local defs = {
	gadget_id = 224003
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
	{ config_id = 224001, gadget_id = 70310200, pos = { x = -344.370, y = 250.277, z = 2621.900 }, rot = { x = 0.000, y = 97.698, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 224002, gadget_id = 70310200, pos = { x = -351.595, y = 251.279, z = 2631.451 }, rot = { x = 0.000, y = 359.313, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 224003, gadget_id = 70211101, pos = { x = -349.263, y = 249.487, z = 2627.222 }, rot = { x = 346.881, y = 271.981, z = 12.197 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 224004, gadget_id = 70310200, pos = { x = -353.806, y = 251.584, z = 2627.703 }, rot = { x = 0.000, y = 290.221, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 224005, gadget_id = 70310198, pos = { x = -371.030, y = 246.351, z = 2628.571 }, rot = { x = 4.893, y = 354.877, z = 11.630 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1224006, name = "GADGET_STATE_CHANGE_224006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224006", action = "action_EVENT_GADGET_STATE_CHANGE_224006", trigger_count = 0 },
	{ config_id = 1224007, name = "GADGET_STATE_CHANGE_224007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224007", action = "action_EVENT_GADGET_STATE_CHANGE_224007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1224008, name = "GADGET_STATE_CHANGE_224008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224008", action = "action_EVENT_GADGET_STATE_CHANGE_224008", trigger_count = 0 }
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
			{ config_id = 224004, state = 0 },
			{ config_id = 224005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_224006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 224001, state = 0 },
			{ config_id = 224002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_224007", "GADGET_STATE_CHANGE_224008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 224003, state = 0 },
			{ config_id = 224004, state = 201 },
			{ config_id = 224005, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_224006(context, evt)
	if 224004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133302224, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_224007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133302224, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_224008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end