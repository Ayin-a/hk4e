-- 基础信息
local base_info = {
	group_id = 133002929
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
	{ config_id = 929006, npc_id = 2003039, pos = { x = 1190.446, y = 375.815, z = -795.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 929001, gadget_id = 70710230, pos = { x = 1190.300, y = 374.500, z = -795.300 }, rot = { x = 0.000, y = 77.100, z = 0.000 }, level = 35, state = GadgetState.Action01, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1929002, name = "QUEST_FINISH_929002", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_929002", action = "action_EVENT_QUEST_FINISH_929002", trigger_count = 0 },
	{ config_id = 1929003, name = "QUEST_FINISH_929003", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_929003", action = "action_EVENT_QUEST_FINISH_929003", trigger_count = 0 },
	{ config_id = 1929004, name = "QUEST_FINISH_929004", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_929004", action = "action_EVENT_QUEST_FINISH_929004", trigger_count = 0 },
	{ config_id = 1929005, name = "QUEST_FINISH_929005", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_929005", action = "action_EVENT_QUEST_FINISH_929005", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 929001 },
		regions = { },
		triggers = { "QUEST_FINISH_929002", "QUEST_FINISH_929003", "QUEST_FINISH_929004", "QUEST_FINISH_929005" },
		npcs = { 929006 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_929002(context, evt)
	--检查ID为1104210的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1104210 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_929002(context, evt)
	-- 将configid为 929001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 929001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_929003(context, evt)
	--检查ID为1104403的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1104403 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_929003(context, evt)
	-- 将configid为 929001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 929001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_929004(context, evt)
	--检查ID为1104303的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1104303 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_929004(context, evt)
	-- 将configid为 929001 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 929001, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_929005(context, evt)
	--检查ID为1104504的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1104504 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_929005(context, evt)
	-- 将configid为 929001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 929001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end