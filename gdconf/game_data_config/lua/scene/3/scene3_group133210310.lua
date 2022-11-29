-- 基础信息
local base_info = {
	group_id = 133210310
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
	{ config_id = 310001, gadget_id = 70360184, pos = { x = -3913.656, y = 118.339, z = -834.274 }, rot = { x = 0.000, y = 281.834, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 },
	{ config_id = 310005, gadget_id = 70950134, pos = { x = -3913.656, y = 119.760, z = -834.274 }, rot = { x = 0.000, y = 199.767, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 310007, gadget_id = 70290284, pos = { x = -3909.448, y = 117.007, z = -836.829 }, rot = { x = 348.796, y = 114.308, z = 357.602 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1310002, name = "VARIABLE_CHANGE_310002", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetState", condition = "condition_EVENT_VARIABLE_CHANGE_310002", action = "action_EVENT_VARIABLE_CHANGE_310002", trigger_count = 0 },
	{ config_id = 1310003, name = "VARIABLE_CHANGE_310003", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetState", condition = "condition_EVENT_VARIABLE_CHANGE_310003", action = "action_EVENT_VARIABLE_CHANGE_310003", trigger_count = 0 },
	{ config_id = 1310004, name = "QUEST_START_310004", event = EventType.EVENT_QUEST_START, source = "7223303", condition = "", action = "action_EVENT_QUEST_START_310004", trigger_count = 0 },
	{ config_id = 1310006, name = "QUEST_FINISH_310006", event = EventType.EVENT_QUEST_FINISH, source = "7223312", condition = "", action = "action_EVENT_QUEST_FINISH_310006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetActive", value = 0, no_refresh = true },
	{ config_id = 2, name = "GadgetState", value = 0, no_refresh = true },
	{ config_id = 3, name = "QuestFinish", value = 0, no_refresh = true }
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
			{ config_id = 310001, state = 202 },
			{ config_id = 310005, state = 0 },
			{ config_id = 310007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_310004", "QUEST_FINISH_310006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetActive", value = 0, no_refresh = true },
			{ config_id = 2, name = "GadgetState", value = 0, no_refresh = true },
			{ config_id = 3, name = "QuestFinish", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 310001, state = 201 },
			{ config_id = 310007, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_310004", "QUEST_FINISH_310006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetActive", value = 0, no_refresh = true },
			{ config_id = 2, name = "GadgetState", value = 0, no_refresh = true },
			{ config_id = 3, name = "QuestFinish", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_310002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为0
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_310002(context, evt)
	-- 将configid为 310001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 310001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_310003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_310003(context, evt)
	-- 将configid为 310001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 310001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_310004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210310, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_310006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210310, 2)
	
	return 0
end