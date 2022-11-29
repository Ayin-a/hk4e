-- 基础信息
local base_info = {
	group_id = 133104819
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
	{ config_id = 819001, gadget_id = 70800104, pos = { x = 1002.500, y = 207.343, z = 339.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819002, gadget_id = 70800104, pos = { x = 967.421, y = 210.207, z = 318.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819003, gadget_id = 70800104, pos = { x = 973.087, y = 210.206, z = 312.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819004, gadget_id = 70800104, pos = { x = 923.206, y = 208.188, z = 293.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819005, gadget_id = 70800104, pos = { x = 921.769, y = 207.971, z = 288.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819006, gadget_id = 70800104, pos = { x = 914.268, y = 208.099, z = 292.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819007, gadget_id = 70800104, pos = { x = 921.451, y = 207.982, z = 311.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819008, gadget_id = 70800104, pos = { x = 886.987, y = 208.385, z = 283.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819009, gadget_id = 70800104, pos = { x = 892.344, y = 207.954, z = 275.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819010, gadget_id = 70800104, pos = { x = 925.086, y = 208.037, z = 281.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819011, gadget_id = 70800104, pos = { x = 997.846, y = 207.271, z = 344.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819012, gadget_id = 70800104, pos = { x = 921.767, y = 258.967, z = 356.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819013, gadget_id = 70800104, pos = { x = 915.165, y = 258.968, z = 363.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819014, gadget_id = 70800104, pos = { x = 928.778, y = 207.919, z = 304.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 819026, gadget_id = 70220013, pos = { x = 897.150, y = 208.551, z = 302.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	-- 2 小圈，烟花喷射
	{ config_id = 819015, shape = RegionShape.SPHERE, radius = 100, pos = { x = 931.309, y = 211.689, z = 325.051 }, area_id = 5 },
	-- 4 大圈，烟花结束
	{ config_id = 819017, shape = RegionShape.SPHERE, radius = 150, pos = { x = 931.263, y = 211.689, z = 328.578 }, area_id = 5 }
}

-- 触发器
triggers = {
	-- 2 小圈，烟花喷射
	{ config_id = 1819015, name = "ENTER_REGION_819015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_819015", action = "action_EVENT_ENTER_REGION_819015", trigger_count = 0 },
	-- 1 任务完成传递参数
	{ config_id = 1819016, name = "QUEST_FINISH_819016", event = EventType.EVENT_QUEST_FINISH, source = "4003712", condition = "condition_EVENT_QUEST_FINISH_819016", action = "action_EVENT_QUEST_FINISH_819016", trigger_count = 0 },
	-- 4 大圈，烟花结束
	{ config_id = 1819017, name = "LEAVE_REGION_819017", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_819017", action = "action_EVENT_LEAVE_REGION_819017", trigger_count = 0 },
	-- 打开烟花，openFire
	{ config_id = 1819018, name = "VARIABLE_CHANGE_819018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_819018", action = "action_EVENT_VARIABLE_CHANGE_819018", trigger_count = 0 },
	-- 3 时间轴，fireTime
	{ config_id = 1819019, name = "TIME_AXIS_PASS_819019", event = EventType.EVENT_TIME_AXIS_PASS, source = "fireTime", condition = "condition_EVENT_TIME_AXIS_PASS_819019", action = "action_EVENT_TIME_AXIS_PASS_819019", trigger_count = 0 },
	-- 关闭烟花，closeFire
	{ config_id = 1819020, name = "VARIABLE_CHANGE_819020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_819020", action = "action_EVENT_VARIABLE_CHANGE_819020", trigger_count = 0 },
	-- 保底 任务参数变化
	{ config_id = 1819021, name = "VARIABLE_CHANGE_819021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_819021", action = "action_EVENT_VARIABLE_CHANGE_819021", trigger_count = 0 },
	-- 重置
	{ config_id = 1819022, name = "GROUP_LOAD_819022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_819022", trigger_count = 0 }
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
		gadgets = { 819001, 819002, 819003, 819004, 819005, 819006, 819007, 819008, 819009, 819010, 819011, 819012, 819013, 819014 },
		regions = { 819015, 819017 },
		triggers = { "ENTER_REGION_819015", "QUEST_FINISH_819016", "LEAVE_REGION_819017", "VARIABLE_CHANGE_819018", "TIME_AXIS_PASS_819019", "VARIABLE_CHANGE_819020", "VARIABLE_CHANGE_819021", "GROUP_LOAD_819022" },
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
		gadgets = { 819026 },
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
function condition_EVENT_ENTER_REGION_819015(context, evt)
	if evt.param1 ~= 819015 then return false end
	
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
function action_EVENT_ENTER_REGION_819015(context, evt)
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
function condition_EVENT_QUEST_FINISH_819016(context, evt)
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
function action_EVENT_QUEST_FINISH_819016(context, evt)
	-- 将本组内变量名为 "hasOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasOpen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_819017(context, evt)
	-- 判断变量"hasOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "hasOpen") ~= 1 then
			return false
	end
	
	-- 判断是区域819017
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 819017 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_819017(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_819018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"openFire"为1
	if ScriptLib.GetGroupVariableValue(context, "openFire") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_819018(context, evt)
	-- 将本组内变量名为 "openFire" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "openFire", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 819001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_819019(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_819019(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_819020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"closeFire"为1
	if ScriptLib.GetGroupVariableValue(context, "closeFire") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_819020(context, evt)
	-- 将本组内变量名为 "closeFire" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "closeFire", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 819001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 819014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 819014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_819021(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_819021(context, evt)
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
function action_EVENT_GROUP_LOAD_819022(context, evt)
	-- 将本组内变量名为 "isAvailable" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAvailable", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end