-- 基础信息
local base_info = {
	group_id = 133301411
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
	{ config_id = 411002, gadget_id = 70330199, pos = { x = -708.989, y = 232.843, z = 3157.194 }, rot = { x = 21.819, y = 112.187, z = 0.606 }, level = 33, state = GadgetState.GearStop, area_id = 22 },
	{ config_id = 411004, gadget_id = 70330199, pos = { x = -686.500, y = 227.432, z = 3145.537 }, rot = { x = 357.995, y = 324.351, z = 4.027 }, level = 33, state = GadgetState.GearStop, area_id = 22 },
	{ config_id = 411005, gadget_id = 70330199, pos = { x = -689.817, y = 227.851, z = 3125.649 }, rot = { x = 19.555, y = 274.602, z = 353.113 }, level = 33, state = GadgetState.GearStop, area_id = 22 },
	{ config_id = 411006, gadget_id = 70290010, pos = { x = -693.478, y = 227.707, z = 3118.826 }, rot = { x = 7.249, y = 14.282, z = 21.008 }, level = 33, area_id = 22 },
	{ config_id = 411007, gadget_id = 70330216, pos = { x = -686.470, y = 227.684, z = 3145.833 }, rot = { x = 0.000, y = 130.746, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 411011, gadget_id = 70211001, pos = { x = -705.740, y = 232.263, z = 3155.889 }, rot = { x = 20.971, y = 126.295, z = 1.486 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 411016, gadget_id = 70500000, pos = { x = -693.478, y = 227.707, z = 3118.826 }, rot = { x = 7.249, y = 14.282, z = 21.008 }, level = 33, point_type = 3006, owner = 411006, area_id = 22 },
	{ config_id = 411017, gadget_id = 70290010, pos = { x = -691.158, y = 226.765, z = 3131.869 }, rot = { x = 2.613, y = 0.302, z = 13.191 }, level = 33, area_id = 22 },
	{ config_id = 411018, gadget_id = 70500000, pos = { x = -691.158, y = 226.765, z = 3131.869 }, rot = { x = 2.613, y = 0.302, z = 13.191 }, level = 33, point_type = 3006, owner = 411017, area_id = 22 },
	{ config_id = 411028, gadget_id = 70230112, pos = { x = -685.272, y = 231.834, z = 3141.759 }, rot = { x = 299.468, y = 67.859, z = 112.806 }, level = 33, area_id = 22 },
	{ config_id = 411029, gadget_id = 70230112, pos = { x = -685.565, y = 230.735, z = 3141.280 }, rot = { x = 302.977, y = 131.993, z = 56.423 }, level = 33, area_id = 22 },
	{ config_id = 411030, gadget_id = 70230112, pos = { x = -685.658, y = 229.630, z = 3141.491 }, rot = { x = 302.729, y = 55.978, z = 122.993 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 1号石头
	{ config_id = 1411010, name = "GADGET_STATE_CHANGE_411010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411010", action = "action_EVENT_GADGET_STATE_CHANGE_411010", trigger_count = 0 },
	-- 2号石头
	{ config_id = 1411019, name = "GADGET_STATE_CHANGE_411019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411019", action = "action_EVENT_GADGET_STATE_CHANGE_411019", trigger_count = 0 },
	-- 3号石头
	{ config_id = 1411020, name = "GADGET_STATE_CHANGE_411020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411020", action = "action_EVENT_GADGET_STATE_CHANGE_411020", trigger_count = 0 },
	{ config_id = 1411021, name = "VARIABLE_CHANGE_411021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_411021", action = "action_EVENT_VARIABLE_CHANGE_411021", trigger_count = 0 },
	-- 3号石头激化+1
	{ config_id = 1411022, name = "GADGET_STATE_CHANGE_411022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411022", action = "action_EVENT_GADGET_STATE_CHANGE_411022", trigger_count = 0 },
	-- 2号石头激化+1
	{ config_id = 1411023, name = "GADGET_STATE_CHANGE_411023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411023", action = "action_EVENT_GADGET_STATE_CHANGE_411023", trigger_count = 0 },
	-- 3号石头
	{ config_id = 1411024, name = "GADGET_STATE_CHANGE_411024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411024", action = "action_EVENT_GADGET_STATE_CHANGE_411024", trigger_count = 0 },
	-- 2号石头
	{ config_id = 1411025, name = "GADGET_STATE_CHANGE_411025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411025", action = "action_EVENT_GADGET_STATE_CHANGE_411025", trigger_count = 0 },
	-- 1号石头激化+1
	{ config_id = 1411026, name = "GADGET_STATE_CHANGE_411026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411026", action = "action_EVENT_GADGET_STATE_CHANGE_411026", trigger_count = 0 },
	-- 1号石头
	{ config_id = 1411027, name = "GADGET_STATE_CHANGE_411027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411027", action = "action_EVENT_GADGET_STATE_CHANGE_411027", trigger_count = 0 },
	{ config_id = 1411031, name = "GROUP_LOAD_411031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_411031", action = "action_EVENT_GROUP_LOAD_411031", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "AAA", value = 0, no_refresh = true },
	{ config_id = 2, name = "BBB", value = 0, no_refresh = true },
	{ config_id = 3, name = "CCC", value = 0, no_refresh = true },
	{ config_id = 4, name = "fin", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 411008, gadget_id = 70290009, pos = { x = -708.801, y = 232.486, z = 3156.935 }, rot = { x = 0.000, y = 31.623, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 411015, gadget_id = 70500000, pos = { x = -708.801, y = 232.486, z = 3156.935 }, rot = { x = 0.000, y = 31.623, z = 0.000 }, level = 33, point_type = 3005, owner = 411008, area_id = 22 }
	},
	triggers = {
		{ config_id = 1411001, name = "GADGET_STATE_CHANGE_411001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411001", action = "action_EVENT_GADGET_STATE_CHANGE_411001", trigger_count = 0 },
		{ config_id = 1411003, name = "GADGET_STATE_CHANGE_411003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411003", action = "action_EVENT_GADGET_STATE_CHANGE_411003", trigger_count = 0 },
		{ config_id = 1411009, name = "GADGET_STATE_CHANGE_411009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411009", action = "action_EVENT_GADGET_STATE_CHANGE_411009", trigger_count = 0 },
		{ config_id = 1411012, name = "GADGET_STATE_CHANGE_411012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411012", action = "action_EVENT_GADGET_STATE_CHANGE_411012", trigger_count = 0 },
		{ config_id = 1411013, name = "GADGET_STATE_CHANGE_411013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411013", action = "action_EVENT_GADGET_STATE_CHANGE_411013", trigger_count = 0 },
		{ config_id = 1411014, name = "GADGET_STATE_CHANGE_411014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411014", action = "action_EVENT_GADGET_STATE_CHANGE_411014", trigger_count = 0 }
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
		gadgets = { 411002, 411004, 411005, 411006, 411007, 411016, 411017, 411018, 411028, 411029, 411030 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_411010", "GADGET_STATE_CHANGE_411019", "GADGET_STATE_CHANGE_411020", "VARIABLE_CHANGE_411021", "GADGET_STATE_CHANGE_411022", "GADGET_STATE_CHANGE_411023", "GADGET_STATE_CHANGE_411024", "GADGET_STATE_CHANGE_411025", "GADGET_STATE_CHANGE_411026", "GADGET_STATE_CHANGE_411027", "GROUP_LOAD_411031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 411011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_411010(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411002 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_411010(context, evt)
	-- 将本组内变量名为 "AAA" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "AAA", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 411028 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411028, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_411019(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411004 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_411019(context, evt)
	-- 将本组内变量名为 "BBB" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "BBB", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 411029 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411029, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_411020(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411005 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_411020(context, evt)
	-- 将本组内变量名为 "CCC" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CCC", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 411030 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411030, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_411021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"AAA"为1
	if ScriptLib.GetGroupVariableValue(context, "AAA") ~= 1 then
			return false
	end
	
	-- 判断变量"BBB"为1
	if ScriptLib.GetGroupVariableValue(context, "BBB") ~= 1 then
			return false
	end
	
	-- 判断变量"CCC"为1
	if ScriptLib.GetGroupVariableValue(context, "CCC") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_411021(context, evt)
	-- 创建id为411011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 411011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 411028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 411029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 411030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_411022(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411005 ~= evt.param2 then
		return false
	end
	if 2<1 or 2>3 then
	  return false
	end
	if 2 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 2 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 2 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_411022(context, evt)
	-- 将本组内变量名为 "CCC" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CCC", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 411030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_411023(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411004 ~= evt.param2 then
		return false
	end
	if 2<1 or 2>3 then
	  return false
	end
	if 2 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 2 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 2 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_411023(context, evt)
	-- 将本组内变量名为 "BBB" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "BBB", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 411029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_411024(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411005 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_411024(context, evt)
	-- 将本组内变量名为 "CCC" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CCC", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 411030 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411030, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_411025(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411004 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_411025(context, evt)
	-- 将本组内变量名为 "BBB" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "BBB", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 411029 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411029, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_411026(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411002 ~= evt.param2 then
		return false
	end
	if 2<1 or 2>3 then
	  return false
	end
	if 2 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 2 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 2 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_411026(context, evt)
	-- 将本组内变量名为 "AAA" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "AAA", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 411028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_411027(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411002 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	-- 判断变量"fin"为0
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_411027(context, evt)
	-- 将本组内变量名为 "AAA" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "AAA", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 411028 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411028, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_411031(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_411031(context, evt)
	-- 将configid为 411028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 411029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 411030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 411030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为411011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 411011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end