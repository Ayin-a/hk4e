-- 基础信息
local base_info = {
	group_id = 133301699
}

-- Trigger变量
local defs = {
	gadget_id = 699011,
	true_array = {699001,699002}
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
	{ config_id = 699001, gadget_id = 70310200, pos = { x = -568.755, y = 121.712, z = 3386.272 }, rot = { x = 0.000, y = 348.958, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 699002, gadget_id = 70310200, pos = { x = -585.890, y = 122.337, z = 3384.299 }, rot = { x = 0.000, y = 348.958, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 699004, gadget_id = 70310200, pos = { x = -582.163, y = 123.435, z = 3385.066 }, rot = { x = 0.000, y = 348.958, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 699005, gadget_id = 70310198, pos = { x = -582.464, y = 125.972, z = 3404.352 }, rot = { x = 10.388, y = 353.956, z = 348.001 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 699006, gadget_id = 70310200, pos = { x = -588.443, y = 118.504, z = 3386.747 }, rot = { x = 0.000, y = 352.284, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 699007, gadget_id = 70310200, pos = { x = -575.723, y = 119.983, z = 3382.146 }, rot = { x = 0.000, y = 348.958, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 699011, gadget_id = 70211150, pos = { x = -580.033, y = 115.938, z = 3382.168 }, rot = { x = 359.518, y = 0.000, z = 349.158 }, level = 26, chest_drop_id = 21910059, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法开始
	{ config_id = 1699008, name = "GADGET_STATE_CHANGE_699008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_699008", action = "action_EVENT_GADGET_STATE_CHANGE_699008", trigger_count = 0 },
	-- 正确的被激活
	{ config_id = 1699009, name = "GADGET_STATE_CHANGE_699009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_699009", action = "action_EVENT_GADGET_STATE_CHANGE_699009", trigger_count = 0 },
	-- 错误的被激活
	{ config_id = 1699010, name = "GADGET_STATE_CHANGE_699010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_699010", action = "action_EVENT_GADGET_STATE_CHANGE_699010", trigger_count = 0 }
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
			{ config_id = 699004, state = 0 },
			{ config_id = 699005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_699008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 699001, state = 0 },
			{ config_id = 699002, state = 0 },
			{ config_id = 699006, state = 0 },
			{ config_id = 699007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_699009", "GADGET_STATE_CHANGE_699010" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 699001, state = 201 },
			{ config_id = 699002, state = 201 },
			{ config_id = 699004, state = 201 },
			{ config_id = 699005, state = 0 },
			{ config_id = 699011, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_699008(context, evt)
	if 699004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_699008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301699, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_699009(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_699009(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #defs.true_array then
		
	ScriptLib.MarkPlayerAction(context, 30004, 3, 1) 
		ScriptLib.GoToFlowSuite(context, 133301699, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_699010(context, evt)
	
	if LF_IsInTable(evt.param2, defs.true_array) then
		return false
	else
		return true
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_699010(context, evt)
	--[[
	for i=1,#suite_disk[2].gadgets do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, suite_disk[2].gadgets[i].config_id, 0)
	end
	--]]
	
	ScriptLib.SetGroupVariableValue(context,"start",0)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301699, 1, FlowSuiteOperatePolicy.COMPLETE)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133301699, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end