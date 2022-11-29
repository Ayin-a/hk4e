-- 基础信息
local base_info = {
	group_id = 133301673
}

-- Trigger变量
local defs = {
	gadget_id = 673003
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
	{ config_id = 673001, gadget_id = 70310201, pos = { x = -513.461, y = 158.776, z = 3582.954 }, rot = { x = 0.000, y = 339.412, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 673002, gadget_id = 70310201, pos = { x = -529.250, y = 163.234, z = 3586.742 }, rot = { x = 0.000, y = 52.021, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 673003, gadget_id = 70211101, pos = { x = -516.621, y = 155.348, z = 3604.059 }, rot = { x = 0.000, y = 352.326, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 673004, gadget_id = 70310201, pos = { x = -522.239, y = 160.574, z = 3583.153 }, rot = { x = 0.000, y = 12.026, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 673005, gadget_id = 70310199, pos = { x = -517.377, y = 158.387, z = 3615.697 }, rot = { x = 0.000, y = 304.264, z = 0.000 }, level = 33, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法开始
	{ config_id = 1673006, name = "GADGET_STATE_CHANGE_673006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_673006", action = "action_EVENT_GADGET_STATE_CHANGE_673006", trigger_count = 0 },
	-- 玩法完成
	{ config_id = 1673007, name = "GADGET_STATE_CHANGE_673007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_673007", action = "action_EVENT_GADGET_STATE_CHANGE_673007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1673008, name = "GADGET_STATE_CHANGE_673008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_673008", action = "action_EVENT_GADGET_STATE_CHANGE_673008", trigger_count = 0 }
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
			{ config_id = 673004, state = 0 },
			{ config_id = 673005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_673006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 673001, state = 0 },
			{ config_id = 673002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_673007", "GADGET_STATE_CHANGE_673008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 673001, state = 201 },
			{ config_id = 673002, state = 201 },
			{ config_id = 673003, state = 0 },
			{ config_id = 673004, state = 201 },
			{ config_id = 673005, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_673006(context, evt)
	if 673004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_673006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301673, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_673007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_673007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133301673, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_673008(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_673008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end