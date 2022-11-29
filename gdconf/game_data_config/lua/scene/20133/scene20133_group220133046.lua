-- 基础信息
local base_info = {
	group_id = 220133046
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
	{ config_id = 46001, gadget_id = 70310306, pos = { x = -8.372, y = 144.928, z = 614.720 }, rot = { x = 4.995, y = 171.559, z = 8.905 }, level = 1, persistent = true },
	{ config_id = 46002, gadget_id = 70310298, pos = { x = -8.372, y = 144.928, z = 614.720 }, rot = { x = 4.995, y = 171.559, z = 8.905 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1046003, name = "QUEST_FINISH_46003", event = EventType.EVENT_QUEST_FINISH, source = "4006923", condition = "condition_EVENT_QUEST_FINISH_46003", action = "action_EVENT_QUEST_FINISH_46003", trigger_count = 0 },
	{ config_id = 1046004, name = "GROUP_REFRESH_46004", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_46004", action = "action_EVENT_GROUP_REFRESH_46004" },
	{ config_id = 1046005, name = "GADGET_STATE_CHANGE_46005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46005", action = "action_EVENT_GADGET_STATE_CHANGE_46005", trigger_count = 0 },
	{ config_id = 1046006, name = "QUEST_START_46006", event = EventType.EVENT_QUEST_START, source = "4006923", condition = "", action = "action_EVENT_QUEST_START_46006", trigger_count = 0 },
	{ config_id = 1046007, name = "GADGET_STATE_CHANGE_46007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46007", action = "action_EVENT_GADGET_STATE_CHANGE_46007", trigger_count = 0 },
	{ config_id = 1046008, name = "GROUP_LOAD_46008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_46008", action = "action_EVENT_GROUP_LOAD_46008", trigger_count = 0 },
	{ config_id = 1046009, name = "GROUP_LOAD_46009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_46009" }
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
		gadgets = { 46001 },
		regions = { },
		triggers = { "QUEST_FINISH_46003", "GADGET_STATE_CHANGE_46005", "QUEST_START_46006", "GADGET_STATE_CHANGE_46007", "GROUP_LOAD_46008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 46002 },
		regions = { },
		triggers = { "GROUP_REFRESH_46004", "GROUP_LOAD_46009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_46003(context, evt)
	--检查ID为4006923的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4006923 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_46003(context, evt)
	-- 将configid为 46001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220133053中， configid为53001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220133053, 53001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_46004(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 220133046, 46002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_46004(context, evt)
		ScriptLib.SetWeatherAreaState(context, 10074, 1)
		ScriptLib.SetWeatherAreaState(context, 10073, 0)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46005(context, evt)
	if 46001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46005(context, evt)
		ScriptLib.SetWeatherAreaState(context, 10073, 1)
		ScriptLib.SetWeatherAreaState(context, 10072, 0)
		ScriptLib.KillEntityByConfigId(context, {group_id=220133091, config_id=91010, entity_type=EntityType.GADGET})
		-- 将本组内变量名为 "Level2Sound" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetBDie", 1, 220133091) then
	
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_46006(context, evt)
	-- 将configid为 46001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46007(context, evt)
	if 46001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46007(context, evt)
		ScriptLib.SetWeatherAreaState(context, 10073, 0)
		ScriptLib.SetWeatherAreaState(context, 10072, 1)
		return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_46008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133046, 46001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_46008(context, evt)
		ScriptLib.SetWeatherAreaState(context, 10073, 1)
		ScriptLib.SetWeatherAreaState(context, 10072, 0)
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_46009(context, evt)
		ScriptLib.SetWeatherAreaState(context, 10074, 1)
		ScriptLib.SetWeatherAreaState(context, 10073, 0)
		ScriptLib.SetWeatherAreaState(context, 10072, 0)
		return 0
end