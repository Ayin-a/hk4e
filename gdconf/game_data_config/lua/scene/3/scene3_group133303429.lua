-- 基础信息
local base_info = {
	group_id = 133303429
}

-- Trigger变量
local defs = {
	gadget_id = 429003,
	true_array = {429001,429002}
}

-- DEFS_MISCS
function LF_IsInTable(value, table)
    for k,v in ipairs(table) do
        if v == value then
            return true;
        end
    end
    return false;
end

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
	{ config_id = 429001, gadget_id = 70310200, pos = { x = -962.200, y = 212.586, z = 3517.158 }, rot = { x = 0.000, y = 312.638, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 429002, gadget_id = 70310200, pos = { x = -971.065, y = 211.374, z = 3508.690 }, rot = { x = 0.000, y = 266.081, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 429003, gadget_id = 70211101, pos = { x = -942.456, y = 221.045, z = 3509.465 }, rot = { x = 6.622, y = 274.292, z = 355.157 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 429004, gadget_id = 70310200, pos = { x = -959.717, y = 215.667, z = 3506.493 }, rot = { x = 0.000, y = 71.347, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 429005, gadget_id = 70310198, pos = { x = -942.596, y = 220.694, z = 3511.492 }, rot = { x = 18.156, y = 255.677, z = 349.154 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 429006, gadget_id = 70310200, pos = { x = -963.245, y = 218.352, z = 3503.637 }, rot = { x = 0.000, y = 264.090, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 429007, gadget_id = 70310200, pos = { x = -971.132, y = 214.348, z = 3514.481 }, rot = { x = 0.000, y = 273.110, z = 0.000 }, level = 33, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1429008, name = "GADGET_STATE_CHANGE_429008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_429008", action = "action_EVENT_GADGET_STATE_CHANGE_429008", trigger_count = 0 },
	-- 正确的被激活
	{ config_id = 1429009, name = "GADGET_STATE_CHANGE_429009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_429009", action = "action_EVENT_GADGET_STATE_CHANGE_429009", trigger_count = 0 },
	-- 错误的被激活
	{ config_id = 1429010, name = "GADGET_STATE_CHANGE_429010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_429010", action = "action_EVENT_GADGET_STATE_CHANGE_429010", trigger_count = 0 }
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
			{ config_id = 429004, state = 0 },
			{ config_id = 429005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_429008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 429001, state = 0 },
			{ config_id = 429002, state = 0 },
			{ config_id = 429006, state = 0 },
			{ config_id = 429007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_429009", "GADGET_STATE_CHANGE_429010" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 429001, state = 201 },
			{ config_id = 429002, state = 201 },
			{ config_id = 429003, state = 0 },
			{ config_id = 429004, state = 201 },
			{ config_id = 429005, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_429008(context, evt)
	if 429004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_429008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303429, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_429009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #defs.true_array then
		return false
	end
	
	if LF_IsInTable(evt.param2, defs.true_array) then
		return true
	else
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_429009(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #defs.true_array then
		
	ScriptLib.MarkPlayerAction(context, 30004, 3, 1) 
		ScriptLib.GoToFlowSuite(context, 133303429, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_429010(context, evt)
	
	if LF_IsInTable(evt.param2, defs.true_array) then
		return false
	else
		return true
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_429010(context, evt)
	--[[
	for i=1,#suite_disk[2].gadgets do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, suite_disk[2].gadgets[i].config_id, 0)
	end
	--]]
	
	ScriptLib.SetGroupVariableValue(context,"start",0)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303429, 1, FlowSuiteOperatePolicy.COMPLETE)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133303429, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end