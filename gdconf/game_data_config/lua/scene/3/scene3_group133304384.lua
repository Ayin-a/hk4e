-- 基础信息
local base_info = {
	group_id = 133304384
}

-- Trigger变量
local defs = {
	gadget_id = 384003
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
	{ config_id = 384001, gadget_id = 70310200, pos = { x = -1865.944, y = 263.002, z = 2846.882 }, rot = { x = 0.000, y = 279.288, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 384002, gadget_id = 70310200, pos = { x = -1871.462, y = 264.005, z = 2851.049 }, rot = { x = 0.000, y = 297.538, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 384003, gadget_id = 70211101, pos = { x = -1868.841, y = 256.805, z = 2857.560 }, rot = { x = 14.565, y = 293.853, z = 354.383 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 384004, gadget_id = 70310200, pos = { x = -1858.989, y = 263.410, z = 2843.881 }, rot = { x = 0.000, y = 280.007, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 384005, gadget_id = 70310198, pos = { x = -1835.838, y = 264.223, z = 2847.043 }, rot = { x = 0.000, y = 329.974, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1384006, name = "GADGET_STATE_CHANGE_384006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_384006", action = "action_EVENT_GADGET_STATE_CHANGE_384006", trigger_count = 0 },
	{ config_id = 1384007, name = "GADGET_STATE_CHANGE_384007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_384007", action = "action_EVENT_GADGET_STATE_CHANGE_384007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1384008, name = "GADGET_STATE_CHANGE_384008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_384008", action = "action_EVENT_GADGET_STATE_CHANGE_384008", trigger_count = 0 }
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
			{ config_id = 384004, state = 0 },
			{ config_id = 384005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_384006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 384001, state = 0 },
			{ config_id = 384002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_384007", "GADGET_STATE_CHANGE_384008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 384001, state = 201 },
			{ config_id = 384002, state = 201 },
			{ config_id = 384003, state = 0 },
			{ config_id = 384004, state = 201 },
			{ config_id = 384005, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_384006(context, evt)
	if 384004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_384006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304384, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_384007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_384007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133304384, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_384008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_384008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end