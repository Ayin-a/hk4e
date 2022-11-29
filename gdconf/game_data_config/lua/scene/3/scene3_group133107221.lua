-- 基础信息
local base_info = {
	group_id = 133107221
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
	{ config_id = 221001, gadget_id = 70220013, pos = { x = -518.619, y = 211.154, z = 343.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- G2
	{ config_id = 221003, gadget_id = 70800104, pos = { x = -487.442, y = 210.022, z = 345.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- G2
	{ config_id = 221004, gadget_id = 70800104, pos = { x = -495.164, y = 210.107, z = 344.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- G2
	{ config_id = 221005, gadget_id = 70800104, pos = { x = -505.569, y = 210.107, z = 333.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- G1
	{ config_id = 221006, gadget_id = 70800104, pos = { x = -514.290, y = 210.107, z = 325.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- G1
	{ config_id = 221007, gadget_id = 70800104, pos = { x = -530.643, y = 210.107, z = 308.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- G1
	{ config_id = 221008, gadget_id = 70800104, pos = { x = -505.386, y = 209.872, z = 302.672 }, rot = { x = 0.000, y = 42.479, z = 0.000 }, level = 1, area_id = 7 },
	-- G1
	{ config_id = 221009, gadget_id = 70800104, pos = { x = -498.974, y = 210.690, z = 295.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- G1
	{ config_id = 221010, gadget_id = 70800104, pos = { x = -508.227, y = 209.872, z = 299.569 }, rot = { x = 0.000, y = 42.479, z = 0.000 }, level = 1, area_id = 7 },
	-- G1
	{ config_id = 221011, gadget_id = 70800104, pos = { x = -501.666, y = 210.698, z = 293.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- G3
	{ config_id = 221013, gadget_id = 70800104, pos = { x = -545.808, y = 210.284, z = 293.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	-- G3
	{ config_id = 221014, gadget_id = 70800104, pos = { x = -552.387, y = 210.089, z = 287.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	-- 2 小圈，烟花喷射
	{ config_id = 221002, shape = RegionShape.SPHERE, radius = 70, pos = { x = -508.892, y = 210.022, z = 298.560 }, area_id = 7 },
	-- 4 大圈，烟花结束
	{ config_id = 221015, shape = RegionShape.SPHERE, radius = 120, pos = { x = -508.938, y = 210.022, z = 302.087 }, area_id = 7 }
}

-- 触发器
triggers = {
	-- 2 小圈，烟花喷射
	{ config_id = 1221002, name = "ENTER_REGION_221002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_221002", action = "action_EVENT_ENTER_REGION_221002", trigger_count = 0 },
	-- 1 任务完成传递参数
	{ config_id = 1221012, name = "QUEST_FINISH_221012", event = EventType.EVENT_QUEST_FINISH, source = "4003712", condition = "condition_EVENT_QUEST_FINISH_221012", action = "action_EVENT_QUEST_FINISH_221012", trigger_count = 0 },
	-- 4 大圈，烟花结束
	{ config_id = 1221015, name = "LEAVE_REGION_221015", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_221015", action = "action_EVENT_LEAVE_REGION_221015", trigger_count = 0 },
	-- 打开烟花，openFire
	{ config_id = 1221016, name = "VARIABLE_CHANGE_221016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_221016", action = "action_EVENT_VARIABLE_CHANGE_221016", trigger_count = 0 },
	-- 3 时间轴，fireTime
	{ config_id = 1221017, name = "TIME_AXIS_PASS_221017", event = EventType.EVENT_TIME_AXIS_PASS, source = "fireTime", condition = "condition_EVENT_TIME_AXIS_PASS_221017", action = "action_EVENT_TIME_AXIS_PASS_221017", trigger_count = 0 },
	-- 重置
	{ config_id = 1221018, name = "GROUP_LOAD_221018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_221018", trigger_count = 0 },
	-- 关闭烟花，closeFire
	{ config_id = 1221024, name = "VARIABLE_CHANGE_221024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_221024", action = "action_EVENT_VARIABLE_CHANGE_221024", trigger_count = 0 },
	-- 保底 任务参数变化
	{ config_id = 1221025, name = "VARIABLE_CHANGE_221025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_221025", action = "action_EVENT_VARIABLE_CHANGE_221025", trigger_count = 0 }
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
		gadgets = { 221003, 221004, 221005, 221006, 221007, 221008, 221009, 221010, 221011, 221013, 221014 },
		regions = { 221002, 221015 },
		triggers = { "ENTER_REGION_221002", "QUEST_FINISH_221012", "LEAVE_REGION_221015", "VARIABLE_CHANGE_221016", "TIME_AXIS_PASS_221017", "GROUP_LOAD_221018", "VARIABLE_CHANGE_221024", "VARIABLE_CHANGE_221025" },
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
		gadgets = { 221001 },
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
function condition_EVENT_ENTER_REGION_221002(context, evt)
	if evt.param1 ~= 221002 then return false end
	
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
function action_EVENT_ENTER_REGION_221002(context, evt)
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
function condition_EVENT_QUEST_FINISH_221012(context, evt)
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
function action_EVENT_QUEST_FINISH_221012(context, evt)
	-- 将本组内变量名为 "hasOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasOpen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_221015(context, evt)
	-- 判断变量"hasOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "hasOpen") ~= 1 then
			return false
	end
	
	-- 判断是区域221015
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 221015 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_221015(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_221016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"openFire"为1
	if ScriptLib.GetGroupVariableValue(context, "openFire") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_221016(context, evt)
	-- 将本组内变量名为 "openFire" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "openFire", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 221003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_221017(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_221017(context, evt)
	-- 将本组内变量名为 "closeFire" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "closeFire", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 停止标识为"fireTime"的时间轴
	ScriptLib.EndTimeAxis(context, "fireTime")
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_221018(context, evt)
	-- 将本组内变量名为 "isAvailable" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAvailable", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_221024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"closeFire"为1
	if ScriptLib.GetGroupVariableValue(context, "closeFire") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_221024(context, evt)
	-- 将本组内变量名为 "closeFire" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "closeFire", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 221003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 221014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_221025(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_221025(context, evt)
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