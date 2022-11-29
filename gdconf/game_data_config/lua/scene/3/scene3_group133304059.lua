-- 基础信息
local base_info = {
	group_id = 133304059
}

-- Trigger变量
local defs = {
	gadget_id = 59003,
	true_array = {59001,59002}
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
	{ config_id = 59001, gadget_id = 70310200, pos = { x = -1571.021, y = 362.065, z = 2282.172 }, rot = { x = 0.000, y = 341.594, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 59002, gadget_id = 70310200, pos = { x = -1576.074, y = 365.662, z = 2278.161 }, rot = { x = 0.000, y = 354.258, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 59003, gadget_id = 70211101, pos = { x = -1573.948, y = 358.282, z = 2286.403 }, rot = { x = 19.101, y = 350.442, z = 344.374 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 59004, gadget_id = 70310200, pos = { x = -1580.447, y = 361.012, z = 2287.273 }, rot = { x = 0.000, y = 354.975, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 59005, gadget_id = 70310198, pos = { x = -1577.884, y = 356.489, z = 2291.678 }, rot = { x = 18.476, y = 42.408, z = 14.327 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 59006, gadget_id = 70310200, pos = { x = -1569.327, y = 358.504, z = 2287.619 }, rot = { x = 0.000, y = 341.594, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 59007, gadget_id = 70310200, pos = { x = -1575.317, y = 360.423, z = 2285.328 }, rot = { x = 0.000, y = 354.258, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059008, name = "GADGET_STATE_CHANGE_59008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59008", action = "action_EVENT_GADGET_STATE_CHANGE_59008", trigger_count = 0 },
	-- 正确的被激活
	{ config_id = 1059009, name = "GADGET_STATE_CHANGE_59009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59009", action = "action_EVENT_GADGET_STATE_CHANGE_59009", trigger_count = 0 },
	-- 错误的被激活
	{ config_id = 1059010, name = "GADGET_STATE_CHANGE_59010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59010", action = "action_EVENT_GADGET_STATE_CHANGE_59010", trigger_count = 0 }
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
			{ config_id = 59004, state = 0 },
			{ config_id = 59005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_59008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 59001, state = 0 },
			{ config_id = 59002, state = 0 },
			{ config_id = 59006, state = 0 },
			{ config_id = 59007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_59009", "GADGET_STATE_CHANGE_59010" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "start", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 59001, state = 201 },
			{ config_id = 59002, state = 201 },
			{ config_id = 59003, state = 0 },
			{ config_id = 59004, state = 201 },
			{ config_id = 59005, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_59008(context, evt)
	if 59004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59008(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304059, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59009(context, evt)
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
function action_EVENT_GADGET_STATE_CHANGE_59009(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #defs.true_array then
		
	ScriptLib.MarkPlayerAction(context, 30004, 3, 1) 
		ScriptLib.GoToFlowSuite(context, 133304059, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59010(context, evt)
	
	if LF_IsInTable(evt.param2, defs.true_array) then
		return false
	else
		return true
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59010(context, evt)
	--[[
	for i=1,#suite_disk[2].gadgets do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, suite_disk[2].gadgets[i].config_id, 0)
	end
	--]]
	
	ScriptLib.SetGroupVariableValue(context,"start",0)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133304059, 1, FlowSuiteOperatePolicy.COMPLETE)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133304059, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end