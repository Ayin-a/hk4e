-- 基础信息
local base_info = {
	group_id = 133107168
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
	{ config_id = 168001, gadget_id = 70211131, pos = { x = -478.621, y = 209.747, z = 321.906 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 16, drop_tag = "解谜超级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 168002, gadget_id = 70211131, pos = { x = -477.109, y = 209.748, z = 320.471 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 16, drop_tag = "解谜超级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 168003, gadget_id = 70211131, pos = { x = -475.754, y = 209.748, z = 319.029 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 16, drop_tag = "解谜超级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1168004, name = "GADGET_STATE_CHANGE_168004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_168004", action = "action_EVENT_GADGET_STATE_CHANGE_168004", trigger_count = 0 },
	{ config_id = 1168005, name = "GADGET_STATE_CHANGE_168005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_168005", action = "action_EVENT_GADGET_STATE_CHANGE_168005", trigger_count = 0 },
	{ config_id = 1168007, name = "GADGET_STATE_CHANGE_168007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_168007", action = "action_EVENT_GADGET_STATE_CHANGE_168007", trigger_count = 0 },
	{ config_id = 1168008, name = "VARIABLE_CHANGE_168008", event = EventType.EVENT_VARIABLE_CHANGE, source = "fin_count", condition = "condition_EVENT_VARIABLE_CHANGE_168008", action = "action_EVENT_VARIABLE_CHANGE_168008", trigger_count = 0 },
	{ config_id = 1168009, name = "QUEST_FINISH_168009", event = EventType.EVENT_QUEST_FINISH, source = "4135907", condition = "condition_EVENT_QUEST_FINISH_168009", action = "action_EVENT_QUEST_FINISH_168009", trigger_count = 0 },
	{ config_id = 1168010, name = "QUEST_FINISH_168010", event = EventType.EVENT_QUEST_FINISH, source = "4135907", condition = "condition_EVENT_QUEST_FINISH_168010", action = "action_EVENT_QUEST_FINISH_168010", trigger_count = 0 },
	{ config_id = 1168011, name = "QUEST_FINISH_168011", event = EventType.EVENT_QUEST_FINISH, source = "4135907", condition = "condition_EVENT_QUEST_FINISH_168011", action = "action_EVENT_QUEST_FINISH_168011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin_count", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 168001, 168002, 168003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_168004", "GADGET_STATE_CHANGE_168005", "GADGET_STATE_CHANGE_168007", "VARIABLE_CHANGE_168008", "QUEST_FINISH_168009", "QUEST_FINISH_168010", "QUEST_FINISH_168011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_168004(context, evt)
	if 168002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_168004(context, evt)
	-- 针对当前group内变量名为 "fin_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fin_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_168005(context, evt)
	if 168001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_168005(context, evt)
	-- 针对当前group内变量名为 "fin_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fin_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_168007(context, evt)
	if 168003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_168007(context, evt)
	-- 针对当前group内变量名为 "fin_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fin_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_168008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fin_count"为3
	if ScriptLib.GetGroupVariableValue(context, "fin_count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_168008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_all") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_168009(context, evt)
	--检查ID为4135907的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4135907 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_168009(context, evt)
	-- 将configid为 168002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 168002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_168010(context, evt)
	--检查ID为4135907的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4135907 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_168010(context, evt)
	-- 将configid为 168001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 168001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_168011(context, evt)
	--检查ID为4135907的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4135907 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_168011(context, evt)
	-- 将configid为 168003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 168003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end