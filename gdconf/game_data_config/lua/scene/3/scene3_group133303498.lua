-- 基础信息
local base_info = {
	group_id = 133303498
}

-- Trigger变量
local defs = {
	gadget_id = 498003
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
	{ config_id = 498001, gadget_id = 70310200, pos = { x = -1512.344, y = 181.387, z = 3202.147 }, rot = { x = 0.000, y = 283.499, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 498002, gadget_id = 70310200, pos = { x = -1496.476, y = 185.982, z = 3196.854 }, rot = { x = 0.000, y = 250.360, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 498003, gadget_id = 70211101, pos = { x = -1496.801, y = 177.171, z = 3195.830 }, rot = { x = 3.957, y = 79.802, z = 20.985 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 498004, gadget_id = 70310200, pos = { x = -1496.855, y = 181.551, z = 3198.833 }, rot = { x = 0.000, y = 81.656, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 498005, gadget_id = 70310198, pos = { x = -1487.782, y = 176.589, z = 3212.149 }, rot = { x = 3.825, y = 119.107, z = 354.984 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 498008, gadget_id = 70690029, pos = { x = -1531.431, y = 179.298, z = 3185.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1498006, name = "GADGET_STATE_CHANGE_498006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_498006", action = "action_EVENT_GADGET_STATE_CHANGE_498006", trigger_count = 0 },
	{ config_id = 1498007, name = "GADGET_STATE_CHANGE_498007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_498007", action = "action_EVENT_GADGET_STATE_CHANGE_498007", trigger_count = 0 },
	-- 玩法完成的埋点
	{ config_id = 1498009, name = "GADGET_STATE_CHANGE_498009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_498009", action = "action_EVENT_GADGET_STATE_CHANGE_498009", trigger_count = 0 }
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
			{ config_id = 498004, state = 0 },
			{ config_id = 498005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_498006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 498001, state = 0 },
			{ config_id = 498002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_498007", "GADGET_STATE_CHANGE_498009" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 498001, state = 201 },
			{ config_id = 498002, state = 201 },
			{ config_id = 498003, state = 0 },
			{ config_id = 498004, state = 201 },
			{ config_id = 498005, state = 0 },
			{ config_id = 498008, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_498006(context, evt)
	if 498004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_498006(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303498, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_498007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_498007(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		ScriptLib.GoToFlowSuite(context, 133303498, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_498009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suite_disk[2].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_498009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end