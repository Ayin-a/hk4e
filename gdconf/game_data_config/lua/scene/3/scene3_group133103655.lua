-- 基础信息
local base_info = {
	group_id = 133103655
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
	{ config_id = 655001, gadget_id = 70360154, pos = { x = 614.420, y = 227.810, z = 1753.320 }, rot = { x = 0.000, y = 106.770, z = 0.000 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 655004, gadget_id = 70950047, pos = { x = 614.520, y = 230.395, z = 1753.302 }, rot = { x = 270.000, y = 106.770, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
	-- 进入入口范围切换入口属性显示
	{ config_id = 655002, shape = RegionShape.SPHERE, radius = 30, pos = { x = 596.112, y = 227.498, z = 1763.465 }, area_id = 6 }
}

-- 触发器
triggers = {
	-- 进入入口范围切换入口属性显示
	{ config_id = 1655002, name = "ENTER_REGION_655002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_655002", action = "action_EVENT_ENTER_REGION_655002", trigger_count = 0 },
	{ config_id = 1655003, name = "QUEST_FINISH_655003", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_655003", action = "action_EVENT_QUEST_FINISH_655003" },
	{ config_id = 1655007, name = "QUEST_FINISH_655007", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_655007", action = "action_EVENT_QUEST_FINISH_655007" },
	{ config_id = 1655008, name = "VARIABLE_CHANGE_655008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_655008", action = "action_EVENT_VARIABLE_CHANGE_655008" },
	{ config_id = 1655009, name = "GROUP_LOAD_655009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_655009", action = "action_EVENT_GROUP_LOAD_655009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Sub", value = 0, no_refresh = true },
	{ config_id = 2, name = "Quest_Finish", value = 0, no_refresh = true },
	{ config_id = 3, name = "Gate_Change", value = 0, no_refresh = true }
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
		triggers = { "QUEST_FINISH_655003", "QUEST_FINISH_655007", "VARIABLE_CHANGE_655008", "GROUP_LOAD_655009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 655001, 655004 },
		regions = { 655002 },
		triggers = { "ENTER_REGION_655002" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_655002(context, evt)
	if evt.param1 ~= 655002 then return false end
	
	-- 判断变量"Gate_Change"为1
	if ScriptLib.GetGroupVariableValue(context, "Gate_Change") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_655002(context, evt)
	local t_p_value = ScriptLib.GetOpeningDungeonListByRosterId(context, 1)
	
	if t_p_value[1] == 110 then
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 655001, GadgetState.GearAction1) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	    end       
	elseif t_p_value[1] == 114 then
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 655001, GadgetState.GearAction2) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	    end  
	elseif t_p_value[1] == 118 then
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 655001, GadgetState.GearStart) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	    end  
	elseif t_p_value[1] == 122 then
	    if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 655001, GadgetState.GearStop) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	            return -1
	    end  
	end
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_655003(context, evt)
	--检查ID为1112310的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1112310 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_655003(context, evt)
	-- 将本组内变量名为 "Gate_Change" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Gate_Change", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_655007(context, evt)
	--检查ID为1112311的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1112311 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_655007(context, evt)
	-- 将本组内变量名为 "Quest_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Quest_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_655008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Quest_Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Quest_Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_655008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103655, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_655009(context, evt)
	-- 判断变量"Quest_Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Quest_Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_655009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103655, 2)
	
	return 0
end