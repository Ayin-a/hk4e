-- 基础信息
local base_info = {
	group_id = 111101117
}

-- Trigger变量
local defs = {
	gadget_id = 117004
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
	{ config_id = 117001, gadget_id = 70310011, pos = { x = 2632.244, y = 250.323, z = -1238.774 }, rot = { x = 2.966, y = 359.850, z = 353.110 }, level = 1, persistent = true },
	{ config_id = 117002, gadget_id = 70310011, pos = { x = 2631.829, y = 250.275, z = -1236.899 }, rot = { x = 2.966, y = 359.850, z = 353.110 }, level = 1, persistent = true },
	{ config_id = 117003, gadget_id = 70310011, pos = { x = 2630.829, y = 250.217, z = -1234.745 }, rot = { x = 2.966, y = 359.850, z = 353.110 }, level = 1, persistent = true },
	{ config_id = 117004, gadget_id = 70211111, pos = { x = 2634.089, y = 250.013, z = -1237.000 }, rot = { x = 2.966, y = 359.850, z = 353.110 }, level = 26, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1117005, name = "GADGET_STATE_CHANGE_117005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_117005", action = "action_EVENT_GADGET_STATE_CHANGE_117005", trigger_count = 0 },
	{ config_id = 1117007, name = "GADGET_CREATE_117007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_117007", action = "action_EVENT_GADGET_CREATE_117007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = false },
	{ config_id = 2, name = "isFinish", value = 0, no_refresh = true }
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
	end_suite = 0,
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
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false },
			{ config_id = 2, name = "isFinish", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 117001, state = 0 },
			{ config_id = 117002, state = 0 },
			{ config_id = 117003, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_117005", "GADGET_CREATE_117007" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = true },
			{ config_id = 2, name = "isFinish", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 117001, state = 201 },
			{ config_id = 117002, state = 201 },
			{ config_id = 117003, state = 201 },
			{ config_id = 117004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = true },
			{ config_id = 2, name = "isFinish", value = 1, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_117005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_117005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == 3 then
	
	
	ScriptLib.GoToFlowSuite(context, 111101117, 3)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 111101114, 114003, GadgetState.Default) 
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_117007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_117007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end