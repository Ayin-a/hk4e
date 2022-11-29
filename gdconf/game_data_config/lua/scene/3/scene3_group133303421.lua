-- 基础信息
local base_info = {
	group_id = 133303421
}

-- Trigger变量
local defs = {
	gadget_id = 421003,
	true_array = {421006,421002}
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
	{ config_id = 421001, gadget_id = 70310200, pos = { x = -1057.141, y = 291.140, z = 3283.630 }, rot = { x = 0.000, y = 302.769, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 争取的
	{ config_id = 421002, gadget_id = 70310200, pos = { x = -1048.035, y = 291.902, z = 3296.497 }, rot = { x = 0.000, y = 346.307, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 421003, gadget_id = 70211101, pos = { x = -1041.571, y = 291.514, z = 3286.436 }, rot = { x = 352.109, y = 185.944, z = 341.969 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	-- 开始的
	{ config_id = 421004, gadget_id = 70310200, pos = { x = -1048.222, y = 293.296, z = 3285.115 }, rot = { x = 0.000, y = 304.737, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 421005, gadget_id = 70310198, pos = { x = -1040.632, y = 292.332, z = 3282.267 }, rot = { x = 0.000, y = 3.792, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 正确的
	{ config_id = 421006, gadget_id = 70310200, pos = { x = -1063.201, y = 294.524, z = 3281.455 }, rot = { x = 0.000, y = 294.946, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 421007, gadget_id = 70310200, pos = { x = -1050.388, y = 290.114, z = 3291.489 }, rot = { x = 0.000, y = 314.018, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1421008, name = "GADGET_STATE_CHANGE_421008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_421008", action = "action_EVENT_GADGET_STATE_CHANGE_421008", trigger_count = 0 },
	-- 正确的被激活
	{ config_id = 1421009, name = "GADGET_STATE_CHANGE_421009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_421009", action = "action_EVENT_GADGET_STATE_CHANGE_421009", trigger_count = 0 },
	-- 错误的被激活
	{ config_id = 1421010, name = "GADGET_STATE_CHANGE_421010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_421010", action = "action_EVENT_GADGET_STATE_CHANGE_421010", trigger_count = 0 }
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
			{ config_id = 421004, state = 0 },
			{ config_id = 421005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_421008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 421001, state = 0 },
			{ config_id = 421002, state = 0 },
			{ config_id = 421006, state = 0 },
			{ config_id = 421007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_421009", "GADGET_STATE_CHANGE_421010" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 421002, state = 201 },
			{ config_id = 421003, state = 0 },
			{ config_id = 421004, state = 201 },
			{ config_id = 421005, state = 0 },
			{ config_id = 421006, state = 201 }
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
function condition_EVENT_GADGET_STATE_CHANGE_421008(context, evt)
	if 421004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_421008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303421, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_421009(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_421009(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #defs.true_array then
		
	ScriptLib.MarkPlayerAction(context, 30004, 3, 1) 
		ScriptLib.GoToFlowSuite(context, 133303421, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_421010(context, evt)
	
	if LF_IsInTable(evt.param2, defs.true_array) then
		return false
	else
		return true
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_421010(context, evt)
	--[[
	for i=1,#suite_disk[2].gadgets do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, suite_disk[2].gadgets[i].config_id, 0)
	end
	--]]
	
	ScriptLib.SetGroupVariableValue(context,"start",0)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303421, 1, FlowSuiteOperatePolicy.COMPLETE)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133303421, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end