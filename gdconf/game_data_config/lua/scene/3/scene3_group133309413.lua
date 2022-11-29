-- 基础信息
local base_info = {
	group_id = 133309413
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
	-- 射线装置#3
	{ config_id = 413001, gadget_id = 70330281, pos = { x = -2202.205, y = -86.177, z = 5996.903 }, rot = { x = 0.323, y = 251.458, z = 359.588 }, level = 32, persistent = true, area_id = 27 },
	-- 接收装置#1
	{ config_id = 413002, gadget_id = 70330281, pos = { x = -2211.248, y = -86.263, z = 5993.567 }, rot = { x = 1.234, y = 68.268, z = 0.511 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 接收装置#2
	{ config_id = 413003, gadget_id = 70330281, pos = { x = -2208.105, y = -86.103, z = 5999.722 }, rot = { x = 359.392, y = 158.727, z = 359.654 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 接收装置3-控制解锁
	{ config_id = 1413004, name = "GADGET_STATE_CHANGE_413004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_413004", action = "action_EVENT_GADGET_STATE_CHANGE_413004", trigger_count = 0 },
	-- 接收装置3-控制上锁
	{ config_id = 1413005, name = "GADGET_STATE_CHANGE_413005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_413005", action = "action_EVENT_GADGET_STATE_CHANGE_413005", trigger_count = 0 },
	-- 接收装置1-控制解锁
	{ config_id = 1413006, name = "GADGET_STATE_CHANGE_413006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_413006", action = "action_EVENT_GADGET_STATE_CHANGE_413006", trigger_count = 0 },
	-- 接收装置1-控制上锁
	{ config_id = 1413007, name = "GADGET_STATE_CHANGE_413007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_413007", action = "action_EVENT_GADGET_STATE_CHANGE_413007", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1413008, name = "VARIABLE_CHANGE_413008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_413008", action = "action_EVENT_VARIABLE_CHANGE_413008" },
	-- 接收装置2-控制解锁
	{ config_id = 1413016, name = "GADGET_STATE_CHANGE_413016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_413016", action = "action_EVENT_GADGET_STATE_CHANGE_413016", trigger_count = 0 },
	-- 接收装置2-控制上锁
	{ config_id = 1413017, name = "GADGET_STATE_CHANGE_413017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_413017", action = "action_EVENT_GADGET_STATE_CHANGE_413017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true },
	{ config_id = 2, name = "receiver2", value = 0, no_refresh = true },
	{ config_id = 3, name = "receiver1", value = 0, no_refresh = true },
	{ config_id = 4, name = "receiver3", value = 0, no_refresh = true }
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
		gadgets = { 413001, 413002, 413003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_413004", "GADGET_STATE_CHANGE_413005", "GADGET_STATE_CHANGE_413006", "GADGET_STATE_CHANGE_413007", "VARIABLE_CHANGE_413008", "GADGET_STATE_CHANGE_413016", "GADGET_STATE_CHANGE_413017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_413004(context, evt)
	if 413001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_413004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264003) then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133309264, 264003, GadgetState.Default)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_413005(context, evt)
	if 413001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_413005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264003) then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133309264, 264003, GadgetState.GearStop)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_413006(context, evt)
	if 413002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_413006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264001) then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133309264, 264001, GadgetState.Default)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_413007(context, evt)
	if 413002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_413007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264001) then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133309264, 264001, GadgetState.GearStop)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_413008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_413008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_413016(context, evt)
	if 413003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_413016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264002) then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133309264, 264002, GadgetState.Default)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_413017(context, evt)
	if 413003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_413017(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309264, 264002) then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133309264, 264002, GadgetState.GearStop)
	end
	
	return 0
end