-- 基础信息
local base_info = {
	group_id = 133216006
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
	{ config_id = 6001, gadget_id = 70900008, pos = { x = -4960.563, y = 200.395, z = -2523.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 6002, gadget_id = 70900008, pos = { x = -4944.396, y = 201.655, z = -2534.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 6003, gadget_id = 70900008, pos = { x = -4983.684, y = 202.937, z = -2563.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 18 },
	{ config_id = 6004, gadget_id = 70211121, pos = { x = -4980.852, y = 200.044, z = -2545.252 }, rot = { x = 0.000, y = 273.191, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006006, name = "GADGET_STATE_CHANGE_6006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6006", action = "action_EVENT_GADGET_STATE_CHANGE_6006" },
	{ config_id = 1006007, name = "GADGET_STATE_CHANGE_6007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6007", action = "action_EVENT_GADGET_STATE_CHANGE_6007" },
	{ config_id = 1006008, name = "VARIABLE_CHANGE_6008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6008", action = "action_EVENT_VARIABLE_CHANGE_6008" },
	{ config_id = 1006009, name = "VARIABLE_CHANGE_6009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6009", action = "action_EVENT_VARIABLE_CHANGE_6009" },
	{ config_id = 1006010, name = "VARIABLE_CHANGE_6010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6010", action = "action_EVENT_VARIABLE_CHANGE_6010" },
	{ config_id = 1006011, name = "GADGET_STATE_CHANGE_6011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6011", action = "action_EVENT_GADGET_STATE_CHANGE_6011" },
	{ config_id = 1006012, name = "VARIABLE_CHANGE_6012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6012", action = "action_EVENT_VARIABLE_CHANGE_6012" },
	-- 地城解锁保底
	{ config_id = 1006013, name = "GROUP_LOAD_6013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6013", action = "action_EVENT_GROUP_LOAD_6013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "succ", value = 0, no_refresh = true },
	{ config_id = 2, name = "challenge_finish_1", value = 0, no_refresh = true },
	{ config_id = 3, name = "challenge_finish_2", value = 0, no_refresh = true },
	{ config_id = 4, name = "challenge_finish_3", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 6005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4980.883, y = 200.041, z = -2544.161 }, area_id = 18 }
	}
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
		gadgets = { 6001, 6002, 6003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_6006", "GADGET_STATE_CHANGE_6007", "VARIABLE_CHANGE_6008", "VARIABLE_CHANGE_6009", "VARIABLE_CHANGE_6010", "GADGET_STATE_CHANGE_6011", "VARIABLE_CHANGE_6012", "GROUP_LOAD_6013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6006(context, evt)
	if 6001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6006(context, evt)
	-- 针对当前group内变量名为 "succ" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "succ", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6007(context, evt)
	if 6002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6007(context, evt)
	-- 针对当前group内变量名为 "succ" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "succ", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challenge_finish_1"为1
	if ScriptLib.GetGroupVariableValue(context, "challenge_finish_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6008(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challenge_finish_2"为1
	if ScriptLib.GetGroupVariableValue(context, "challenge_finish_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6009(context, evt)
	-- 将configid为 6002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challenge_finish_3"为1
	if ScriptLib.GetGroupVariableValue(context, "challenge_finish_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6010(context, evt)
	-- 将configid为 6003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6011(context, evt)
	if 6003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6011(context, evt)
	-- 针对当前group内变量名为 "succ" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "succ", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"succ"为3
	if ScriptLib.GetGroupVariableValue(context, "succ") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6012(context, evt)
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 424)
	
	-- 创建id为6004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6068, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_6013(context, evt)
	-- 判断变量"succ"为3
	if ScriptLib.GetGroupVariableValue(context, "succ") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_6013(context, evt)
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 424)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6068, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end