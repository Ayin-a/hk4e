-- 基础信息
local base_info = {
	group_id = 133309278
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 278002,
	gadget_receiver_2 = 278003
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
	{ config_id = 278001, gadget_id = 70211102, pos = { x = -2189.159, y = 10.522, z = 5402.754 }, rot = { x = 0.000, y = 195.856, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 27 },
	-- 接收装置#1
	{ config_id = 278002, gadget_id = 70330281, pos = { x = -2184.977, y = 10.436, z = 5399.367 }, rot = { x = 359.991, y = 196.620, z = 359.967 }, level = 32, persistent = true, area_id = 27 },
	-- 接收装置#2
	{ config_id = 278003, gadget_id = 70330281, pos = { x = -2205.272, y = 10.437, z = 5397.490 }, rot = { x = 359.991, y = 246.000, z = 359.967 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1278004, name = "GADGET_STATE_CHANGE_278004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_278004", action = "action_EVENT_GADGET_STATE_CHANGE_278004" },
	-- 玩法完成
	{ config_id = 1278005, name = "VARIABLE_CHANGE_278005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_278005", action = "action_EVENT_VARIABLE_CHANGE_278005" },
	-- 运营埋点
	{ config_id = 1278006, name = "VARIABLE_CHANGE_278006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_278006", action = "action_EVENT_VARIABLE_CHANGE_278006" },
	-- 保底
	{ config_id = 1278007, name = "VARIABLE_CHANGE_278007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_278007", action = "action_EVENT_VARIABLE_CHANGE_278007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "isFinish", value = 0, no_refresh = true }
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
		gadgets = { 278001, 278002, 278003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_278004", "VARIABLE_CHANGE_278005", "VARIABLE_CHANGE_278006", "VARIABLE_CHANGE_278007" },
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
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_278004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309278, 278002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309278, 278003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_278004(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_278005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_278005(context, evt)
	-- 将configid为 278002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 278003 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278003, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isFinished", 1, 133309276) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isFinished", 1, 133309277) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 278001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_278006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_278006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31007, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_278007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_278007(context, evt)
	-- 将configid为 278001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end