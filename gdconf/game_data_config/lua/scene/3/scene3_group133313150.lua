-- 基础信息
local base_info = {
	group_id = 133313150
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 150002,
	gadget_fireBase1 = 150001,
	gadget_fire1 = 150003,
	gadget_fireBase2 = 150004,
	gadget_fire2 = 150005,
	gadget_fireBase3 = 150011,
	gadget_fire3 = 150012,
	gadget_fireBase4 = 0,
	gadget_fire4 = 0
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
	-- 1号基座
	{ config_id = 150001, gadget_id = 70330279, pos = { x = -672.759, y = -216.110, z = 5862.680 }, rot = { x = 0.000, y = 3.517, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	{ config_id = 150002, gadget_id = 70330278, pos = { x = -655.820, y = -217.451, z = 5833.751 }, rot = { x = 0.000, y = 184.488, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 32 },
	-- 1号火种
	{ config_id = 150003, gadget_id = 70330257, pos = { x = -672.682, y = -214.684, z = 5862.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300039, persistent = true, area_id = 32 },
	-- 2号基座
	{ config_id = 150004, gadget_id = 70330279, pos = { x = -715.724, y = -214.180, z = 5847.880 }, rot = { x = 0.000, y = 2.595, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 2号火种
	{ config_id = 150005, gadget_id = 70330257, pos = { x = -715.642, y = -212.458, z = 5847.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300040, persistent = true, area_id = 32 },
	{ config_id = 150006, gadget_id = 70211101, pos = { x = -656.140, y = -217.448, z = 5853.544 }, rot = { x = 0.000, y = 2.618, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	-- 3号基座
	{ config_id = 150011, gadget_id = 70330279, pos = { x = -652.463, y = -217.555, z = 5795.374 }, rot = { x = 0.000, y = 297.261, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	-- 3号火种
	{ config_id = 150012, gadget_id = 70330257, pos = { x = -652.480, y = -215.919, z = 5795.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331300041, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1150007, name = "GADGET_STATE_CHANGE_150007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150007", action = "action_EVENT_GADGET_STATE_CHANGE_150007" },
	-- 保底
	{ config_id = 1150008, name = "GROUP_LOAD_150008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_150008", action = "action_EVENT_GROUP_LOAD_150008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1150009, name = "GADGET_STATE_CHANGE_150009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150009", action = "action_EVENT_GADGET_STATE_CHANGE_150009" },
	-- 玩法进度埋点
	{ config_id = 1150010, name = "GADGET_STATE_CHANGE_150010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150010", action = "action_EVENT_GADGET_STATE_CHANGE_150010" },
	{ config_id = 1150013, name = "VARIABLE_CHANGE_150013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_150013", action = "action_EVENT_VARIABLE_CHANGE_150013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock", value = 0, no_refresh = true }
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
		gadgets = { 150001, 150002, 150004, 150011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_150007", "GROUP_LOAD_150008", "GADGET_STATE_CHANGE_150009", "GADGET_STATE_CHANGE_150010", "VARIABLE_CHANGE_150013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150007(context, evt)
	if 150002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150007(context, evt)
	-- 创建id为150006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 150006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_150008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133313150, 150002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_150008(context, evt)
	-- 创建id为150006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 150006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150009(context, evt)
	if 150001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150010(context, evt)
	if 150004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_150013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_150013(context, evt)
	-- 将configid为 150001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"