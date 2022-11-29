-- 基础信息
local base_info = {
	group_id = 133309270
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
	{ config_id = 270001, gadget_id = 70330281, pos = { x = -2391.212, y = -2.759, z = 5355.367 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 270002, gadget_id = 70330281, pos = { x = -2409.327, y = -2.739, z = 5355.222 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 270003, gadget_id = 70330281, pos = { x = -2431.244, y = -2.759, z = 5355.383 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 雷1
	{ config_id = 270005, gadget_id = 70330400, pos = { x = -2391.192, y = -2.408, z = 5347.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	-- 风2
	{ config_id = 270015, gadget_id = 70330402, pos = { x = -2409.056, y = -2.408, z = 5347.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	-- 水3
	{ config_id = 270016, gadget_id = 70330403, pos = { x = -2431.100, y = -2.408, z = 5347.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	-- 风4
	{ config_id = 270017, gadget_id = 70330402, pos = { x = -2369.491, y = -2.408, z = 5346.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	-- 雷5
	{ config_id = 270018, gadget_id = 70330400, pos = { x = -2351.310, y = -2.408, z = 5346.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 270019, gadget_id = 70330281, pos = { x = -2329.215, y = -2.763, z = 5354.992 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 270020, gadget_id = 70330281, pos = { x = -2351.193, y = -2.763, z = 5354.978 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 270021, gadget_id = 70330281, pos = { x = -2369.243, y = -2.763, z = 5355.084 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 水6
	{ config_id = 270024, gadget_id = 70330403, pos = { x = -2329.192, y = -2.408, z = 5346.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 雷1激活
	{ config_id = 1270004, name = "GADGET_STATE_CHANGE_270004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270004", action = "action_EVENT_GADGET_STATE_CHANGE_270004", trigger_count = 0 },
	-- 雷1锁定
	{ config_id = 1270006, name = "GADGET_STATE_CHANGE_270006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270006", action = "action_EVENT_GADGET_STATE_CHANGE_270006", trigger_count = 0 },
	-- 风2激活
	{ config_id = 1270007, name = "GADGET_STATE_CHANGE_270007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270007", action = "action_EVENT_GADGET_STATE_CHANGE_270007", trigger_count = 0 },
	-- 风2锁定
	{ config_id = 1270008, name = "GADGET_STATE_CHANGE_270008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270008", action = "action_EVENT_GADGET_STATE_CHANGE_270008", trigger_count = 0 },
	-- 水3激活
	{ config_id = 1270009, name = "GADGET_STATE_CHANGE_270009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270009", action = "action_EVENT_GADGET_STATE_CHANGE_270009", trigger_count = 0 },
	-- 水3锁定
	{ config_id = 1270010, name = "GADGET_STATE_CHANGE_270010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270010", action = "action_EVENT_GADGET_STATE_CHANGE_270010", trigger_count = 0 },
	-- 风4激活
	{ config_id = 1270011, name = "GADGET_STATE_CHANGE_270011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270011", action = "action_EVENT_GADGET_STATE_CHANGE_270011", trigger_count = 0 },
	-- 风4锁定
	{ config_id = 1270012, name = "GADGET_STATE_CHANGE_270012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270012", action = "action_EVENT_GADGET_STATE_CHANGE_270012", trigger_count = 0 },
	-- 雷5激活
	{ config_id = 1270013, name = "GADGET_STATE_CHANGE_270013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270013", action = "action_EVENT_GADGET_STATE_CHANGE_270013", trigger_count = 0 },
	-- 雷5锁定
	{ config_id = 1270014, name = "GADGET_STATE_CHANGE_270014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270014", action = "action_EVENT_GADGET_STATE_CHANGE_270014", trigger_count = 0 },
	-- 水6激活
	{ config_id = 1270022, name = "GADGET_STATE_CHANGE_270022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270022", action = "action_EVENT_GADGET_STATE_CHANGE_270022", trigger_count = 0 },
	-- 水6锁定
	{ config_id = 1270023, name = "GADGET_STATE_CHANGE_270023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270023", action = "action_EVENT_GADGET_STATE_CHANGE_270023", trigger_count = 0 },
	-- 雷-刷东西
	{ config_id = 1270025, name = "GADGET_STATE_CHANGE_270025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270025", action = "action_EVENT_GADGET_STATE_CHANGE_270025", trigger_count = 0 },
	-- 雷-卸东西
	{ config_id = 1270026, name = "GADGET_STATE_CHANGE_270026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270026", action = "action_EVENT_GADGET_STATE_CHANGE_270026", trigger_count = 0 },
	-- 风-刷东西
	{ config_id = 1270027, name = "GADGET_STATE_CHANGE_270027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270027", action = "action_EVENT_GADGET_STATE_CHANGE_270027", trigger_count = 0 },
	-- 风-卸东西
	{ config_id = 1270028, name = "GADGET_STATE_CHANGE_270028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270028", action = "action_EVENT_GADGET_STATE_CHANGE_270028", trigger_count = 0 },
	-- 水-降水位-一次性
	{ config_id = 1270029, name = "GADGET_STATE_CHANGE_270029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270029", action = "action_EVENT_GADGET_STATE_CHANGE_270029" },
	-- 雷-注目
	{ config_id = 1270033, name = "GADGET_STATE_CHANGE_270033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270033", action = "action_EVENT_GADGET_STATE_CHANGE_270033" },
	-- 风-注目
	{ config_id = 1270034, name = "GADGET_STATE_CHANGE_270034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270034", action = "action_EVENT_GADGET_STATE_CHANGE_270034" }
}

-- 变量
variables = {
	{ config_id = 9, name = "feng", value = 0, no_refresh = true },
	{ config_id = 10, name = "lei", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1270030, name = "GADGET_STATE_CHANGE_270030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270030", action = "", trigger_count = 0 },
		{ config_id = 1270031, name = "GADGET_STATE_CHANGE_270031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270031", action = "", trigger_count = 0 },
		{ config_id = 1270032, name = "VARIABLE_CHANGE_270032", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_270032", action = "", trigger_count = 0 }
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
		gadgets = { 270001, 270002, 270003, 270005, 270015, 270016, 270017, 270018, 270019, 270020, 270021, 270024 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_270004", "GADGET_STATE_CHANGE_270006", "GADGET_STATE_CHANGE_270007", "GADGET_STATE_CHANGE_270008", "GADGET_STATE_CHANGE_270009", "GADGET_STATE_CHANGE_270010", "GADGET_STATE_CHANGE_270011", "GADGET_STATE_CHANGE_270012", "GADGET_STATE_CHANGE_270013", "GADGET_STATE_CHANGE_270014", "GADGET_STATE_CHANGE_270022", "GADGET_STATE_CHANGE_270023", "GADGET_STATE_CHANGE_270025", "GADGET_STATE_CHANGE_270026", "GADGET_STATE_CHANGE_270027", "GADGET_STATE_CHANGE_270028", "GADGET_STATE_CHANGE_270029", "GADGET_STATE_CHANGE_270033", "GADGET_STATE_CHANGE_270034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270004(context, evt)
	if 270001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270004(context, evt)
	-- 将configid为 270005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270006(context, evt)
	if 270001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270006(context, evt)
	-- 将configid为 270005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270007(context, evt)
	if 270002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270007(context, evt)
	-- 将configid为 270015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270008(context, evt)
	if 270002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270008(context, evt)
	-- 将configid为 270015 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270015, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270009(context, evt)
	if 270003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270009(context, evt)
	-- 将configid为 270016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270010(context, evt)
	if 270003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270010(context, evt)
	-- 将configid为 270016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270016, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270011(context, evt)
	if 270021 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270011(context, evt)
	-- 将configid为 270017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270012(context, evt)
	if 270021 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270012(context, evt)
	-- 将configid为 270017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270013(context, evt)
	if 270020 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270013(context, evt)
	-- 将configid为 270018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270014(context, evt)
	if 270020 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270014(context, evt)
	-- 将configid为 270018 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270018, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270022(context, evt)
	if 270019 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270022(context, evt)
	-- 将configid为 270024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270023(context, evt)
	if 270019 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270023(context, evt)
	-- 将configid为 270024 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270024, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270025(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270018) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270020) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133309409, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "lei" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lei", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270026(context, evt)
	-- 判断变量"lei"为1
	if ScriptLib.GetGroupVariableValue(context, "lei") ~= 1 then
			return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270005) then
		return true
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270018) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133309409, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "lei" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lei", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270027(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270015) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270017) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270021) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270027(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133309548, 2)
	
	-- 将本组内变量名为 "feng" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feng", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270028(context, evt)
	-- 判断变量"feng"为1
	if ScriptLib.GetGroupVariableValue(context, "feng") ~= 1 then
			return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270015) then
		return true
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270017) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270028(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133309548, 1)
	
	-- 将本组内变量名为 "feng" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feng", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270029(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270016) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270024) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270029(context, evt)
	-- 将本组内变量名为 "water" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "water", 1, 133309327) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270033(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270018) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270020) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270033(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-2379.859, y=-4.321212, z=5371.237}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2379.859, y=-4.321212, z=5371.237}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270034(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270015) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270017) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309270, 270021) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270034(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-2380.331, y=7.902584, z=5377.669}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2380.331, y=7.902584, z=5377.669}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end