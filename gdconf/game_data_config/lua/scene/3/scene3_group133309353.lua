-- 基础信息
local base_info = {
	group_id = 133309353
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 353002,
	gadget_receiver_2 = 353003
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1,
	defs.gadget_receiver_2,
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
	-- 接收装置#1
	{ config_id = 353002, gadget_id = 70330281, pos = { x = -2634.536, y = 11.302, z = 5670.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 接收装置#2
	{ config_id = 353003, gadget_id = 70330281, pos = { x = -2607.887, y = 11.745, z = 5666.325 }, rot = { x = 0.000, y = 355.013, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 接收装置#1激活-解锁右边方碑
	{ config_id = 1353001, name = "GADGET_STATE_CHANGE_353001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_353001", action = "action_EVENT_GADGET_STATE_CHANGE_353001", trigger_count = 0 },
	-- 接收装置#1取消激活-锁定右边方碑
	{ config_id = 1353004, name = "GADGET_STATE_CHANGE_353004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_353004", action = "action_EVENT_GADGET_STATE_CHANGE_353004", trigger_count = 0 },
	-- 接收装置#2激活-解锁左边方碑
	{ config_id = 1353006, name = "GADGET_STATE_CHANGE_353006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_353006", action = "action_EVENT_GADGET_STATE_CHANGE_353006", trigger_count = 0 },
	-- 接收装置#2取消激活-锁定左边方碑
	{ config_id = 1353007, name = "GADGET_STATE_CHANGE_353007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_353007", action = "action_EVENT_GADGET_STATE_CHANGE_353007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true },
	{ config_id = 2, name = "finished", value = 0, no_refresh = true }
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
		gadgets = { 353002, 353003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_353001", "GADGET_STATE_CHANGE_353004", "GADGET_STATE_CHANGE_353006", "GADGET_STATE_CHANGE_353007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_353001(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309353, 353002) then
		return false
	end
	
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "finished", 133309353) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_353001(context, evt)
	-- 改变指定group组133309354中， configid为354003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309354, 354003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_353004(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309353, 353002) then
		return false
	end
	
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "finished", 133309353) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_353004(context, evt)
	-- 改变指定group组133309354中， configid为354003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309354, 354003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_353006(context, evt)
	if 353003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "finished", 133309353) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_353006(context, evt)
	-- 改变指定group组133309354中， configid为354002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309354, 354002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_353007(context, evt)
	if 353003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "finished", 133309353) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_353007(context, evt)
	-- 改变指定group组133309354中， configid为354002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309354, 354002, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end