-- 基础信息
local base_info = {
	group_id = 133102217
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
	{ config_id = 217001, gadget_id = 70800104, pos = { x = 1708.828, y = 245.252, z = 635.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 217002, gadget_id = 70800104, pos = { x = 1718.505, y = 241.347, z = 672.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 217003, gadget_id = 70800104, pos = { x = 1820.018, y = 215.857, z = 688.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 217004, gadget_id = 70800104, pos = { x = 1705.840, y = 248.645, z = 631.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 217005, gadget_id = 70800104, pos = { x = 1731.070, y = 237.489, z = 674.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 217012, gadget_id = 70220013, pos = { x = 1707.925, y = 244.741, z = 638.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	-- 2 小圈，烟花喷射
	{ config_id = 217006, shape = RegionShape.SPHERE, radius = 100, pos = { x = 1744.968, y = 234.203, z = 684.893 }, area_id = 5 },
	-- 4 大圈，烟花结束
	{ config_id = 217008, shape = RegionShape.SPHERE, radius = 150, pos = { x = 1744.922, y = 234.203, z = 688.420 }, area_id = 5 }
}

-- 触发器
triggers = {
	-- 2 小圈，烟花喷射
	{ config_id = 1217006, name = "ENTER_REGION_217006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_217006", action = "action_EVENT_ENTER_REGION_217006", trigger_count = 0 },
	-- 1 任务完成传递参数
	{ config_id = 1217007, name = "QUEST_FINISH_217007", event = EventType.EVENT_QUEST_FINISH, source = "4003712", condition = "condition_EVENT_QUEST_FINISH_217007", action = "action_EVENT_QUEST_FINISH_217007", trigger_count = 0 },
	-- 4 大圈，烟花结束
	{ config_id = 1217008, name = "LEAVE_REGION_217008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_217008", action = "action_EVENT_LEAVE_REGION_217008", trigger_count = 0 },
	-- 打开烟花，openFire
	{ config_id = 1217009, name = "VARIABLE_CHANGE_217009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_217009", action = "action_EVENT_VARIABLE_CHANGE_217009", trigger_count = 0 },
	-- 3 时间轴，fireTime
	{ config_id = 1217010, name = "TIME_AXIS_PASS_217010", event = EventType.EVENT_TIME_AXIS_PASS, source = "fireTime", condition = "condition_EVENT_TIME_AXIS_PASS_217010", action = "action_EVENT_TIME_AXIS_PASS_217010", trigger_count = 0 },
	-- 关闭烟花，closeFire
	{ config_id = 1217011, name = "VARIABLE_CHANGE_217011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_217011", action = "action_EVENT_VARIABLE_CHANGE_217011", trigger_count = 0 },
	-- 保底 任务参数变化
	{ config_id = 1217013, name = "VARIABLE_CHANGE_217013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_217013", action = "action_EVENT_VARIABLE_CHANGE_217013", trigger_count = 0 },
	-- 重置
	{ config_id = 1217014, name = "GROUP_LOAD_217014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_217014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasOpen", value = 0, no_refresh = true },
	{ config_id = 2, name = "isAvailable", value = 1, no_refresh = false },
	{ config_id = 3, name = "openFire", value = 0, no_refresh = false },
	{ config_id = 4, name = "closeFire", value = 0, no_refresh = false }
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
		gadgets = { 217001, 217002, 217003, 217004, 217005 },
		regions = { 217006, 217008 },
		triggers = { "ENTER_REGION_217006", "QUEST_FINISH_217007", "LEAVE_REGION_217008", "VARIABLE_CHANGE_217009", "TIME_AXIS_PASS_217010", "VARIABLE_CHANGE_217011", "VARIABLE_CHANGE_217013", "GROUP_LOAD_217014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 217012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_217006(context, evt)
	if evt.param1 ~= 217006 then return false end
	
	-- 判断变量"hasOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "hasOpen") ~= 1 then
			return false
	end
	
	-- 判断变量"isAvailable"为1
	if ScriptLib.GetGroupVariableValue(context, "isAvailable") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_217006(context, evt)
	-- 将本组内变量名为 "openFire" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "openFire", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isAvailable" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAvailable", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"fireTime"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fireTime", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_217007(context, evt)
	--检查ID为4003712的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4003712 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_217007(context, evt)
	-- 将本组内变量名为 "hasOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasOpen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_217008(context, evt)
	-- 判断变量"hasOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "hasOpen") ~= 1 then
			return false
	end
	
	-- 判断是区域217008
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 217008 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_217008(context, evt)
	-- 将本组内变量名为 "closeFire" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "closeFire", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 停止标识为"fireTime"的时间轴
	ScriptLib.EndTimeAxis(context, "fireTime")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_217009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"openFire"为1
	if ScriptLib.GetGroupVariableValue(context, "openFire") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_217009(context, evt)
	-- 将本组内变量名为 "openFire" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "openFire", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 217001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_217010(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_217010(context, evt)
	-- 将本组内变量名为 "closeFire" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "closeFire", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 停止标识为"fireTime"的时间轴
	ScriptLib.EndTimeAxis(context, "fireTime")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_217011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"closeFire"为1
	if ScriptLib.GetGroupVariableValue(context, "closeFire") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_217011(context, evt)
	-- 将本组内变量名为 "closeFire" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "closeFire", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 217001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 217005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_217013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"hasOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "hasOpen") ~= 1 then
			return false
	end
	
	-- 判断变量"isAvailable"为1
	if ScriptLib.GetGroupVariableValue(context, "isAvailable") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_217013(context, evt)
	-- 将本组内变量名为 "openFire" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "openFire", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isAvailable" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAvailable", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"fireTime"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "fireTime", {60}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_217014(context, evt)
	-- 将本组内变量名为 "isAvailable" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAvailable", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end