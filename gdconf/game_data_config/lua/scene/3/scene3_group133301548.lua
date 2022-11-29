-- 基础信息
local base_info = {
	group_id = 133301548
}

-- Trigger变量
local defs = {
	gadget_id = 548003,
	true_array = {548001,548002}
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
	{ config_id = 548001, gadget_id = 70310200, pos = { x = -212.671, y = 227.950, z = 3924.440 }, rot = { x = 0.000, y = 1.346, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 548002, gadget_id = 70310200, pos = { x = -209.042, y = 226.810, z = 3924.224 }, rot = { x = 0.000, y = 19.259, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 548003, gadget_id = 70211101, pos = { x = -208.760, y = 225.404, z = 3919.923 }, rot = { x = 5.651, y = 242.295, z = 17.637 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 548004, gadget_id = 70310200, pos = { x = -210.584, y = 226.109, z = 3922.333 }, rot = { x = 0.000, y = 11.797, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 548006, gadget_id = 70310200, pos = { x = -204.425, y = 225.739, z = 3922.061 }, rot = { x = 1.537, y = 10.310, z = 4.688 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 548007, gadget_id = 70310200, pos = { x = -217.383, y = 227.682, z = 3924.357 }, rot = { x = 0.000, y = 354.774, z = 0.000 }, level = 27, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1548008, name = "GADGET_STATE_CHANGE_548008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548008", action = "action_EVENT_GADGET_STATE_CHANGE_548008", trigger_count = 0 },
	-- 正确的被激活
	{ config_id = 1548009, name = "GADGET_STATE_CHANGE_548009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548009", action = "action_EVENT_GADGET_STATE_CHANGE_548009", trigger_count = 0 },
	-- 错误的被激活
	{ config_id = 1548010, name = "GADGET_STATE_CHANGE_548010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548010", action = "action_EVENT_GADGET_STATE_CHANGE_548010", trigger_count = 0 }
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
			{ config_id = 548004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_548008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 548001, state = 0 },
			{ config_id = 548002, state = 0 },
			{ config_id = 548006, state = 0 },
			{ config_id = 548007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_548009", "GADGET_STATE_CHANGE_548010" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 548001, state = 201 },
			{ config_id = 548002, state = 201 },
			{ config_id = 548003, state = 0 },
			{ config_id = 548004, state = 201 }
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
function condition_EVENT_GADGET_STATE_CHANGE_548008(context, evt)
	if 548004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_548008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301548, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_548009(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_548009(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #defs.true_array then
		
	ScriptLib.MarkPlayerAction(context, 30004, 3, 1) 
		ScriptLib.GoToFlowSuite(context, 133301548, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_548010(context, evt)
	
	if LF_IsInTable(evt.param2, defs.true_array) then
		return false
	else
		return true
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_548010(context, evt)
	--[[
	for i=1,#suite_disk[2].gadgets do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, suite_disk[2].gadgets[i].config_id, 0)
	end
	--]]
	
	ScriptLib.SetGroupVariableValue(context,"start",0)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301548, 1, FlowSuiteOperatePolicy.COMPLETE)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133301548, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end