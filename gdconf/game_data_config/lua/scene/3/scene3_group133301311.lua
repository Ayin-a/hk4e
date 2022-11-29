-- 基础信息
local base_info = {
	group_id = 133301311
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
	{ config_id = 311001, gadget_id = 70230111, pos = { x = -810.616, y = -39.576, z = 3180.140 }, rot = { x = 290.862, y = 335.895, z = 210.272 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 311002, gadget_id = 70230111, pos = { x = -812.160, y = -33.450, z = 3174.189 }, rot = { x = 286.726, y = 206.868, z = 343.807 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 311003, gadget_id = 70230111, pos = { x = -812.550, y = -35.593, z = 3167.668 }, rot = { x = 294.264, y = 217.922, z = 339.982 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 311006, gadget_id = 70330199, pos = { x = -813.650, y = -42.061, z = 3180.165 }, rot = { x = 3.250, y = 227.908, z = 1.993 }, level = 30, area_id = 23 },
	{ config_id = 311007, gadget_id = 70330199, pos = { x = -812.276, y = -41.550, z = 3173.377 }, rot = { x = 16.537, y = 313.080, z = 9.383 }, level = 30, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 311008, gadget_id = 70330199, pos = { x = -814.137, y = -42.033, z = 3167.450 }, rot = { x = 9.191, y = 354.148, z = 9.189 }, level = 30, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 311009, gadget_id = 70211101, pos = { x = -820.065, y = -42.222, z = 3175.946 }, rot = { x = 356.412, y = 89.151, z = 354.712 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 左边石块与涂鸦联动双亮-激化态
	{ config_id = 1311010, name = "GADGET_STATE_CHANGE_311010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311010", action = "action_EVENT_GADGET_STATE_CHANGE_311010", trigger_count = 0 },
	-- 中间石块与涂鸦联动双亮-激化态
	{ config_id = 1311011, name = "GADGET_STATE_CHANGE_311011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311011", action = "action_EVENT_GADGET_STATE_CHANGE_311011", trigger_count = 0 },
	-- 右边石块与涂鸦联动双亮-激化态
	{ config_id = 1311012, name = "GADGET_STATE_CHANGE_311012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311012", action = "action_EVENT_GADGET_STATE_CHANGE_311012", trigger_count = 0 },
	-- 判定完成
	{ config_id = 1311013, name = "GADGET_STATE_CHANGE_311013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311013", action = "action_EVENT_GADGET_STATE_CHANGE_311013", trigger_count = 0 },
	-- 左边石块与涂鸦联动双灭-消亡态
	{ config_id = 1311014, name = "GADGET_STATE_CHANGE_311014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311014", action = "action_EVENT_GADGET_STATE_CHANGE_311014", trigger_count = 0 },
	-- 中间石块与涂鸦联动双灭-消亡态
	{ config_id = 1311015, name = "GADGET_STATE_CHANGE_311015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311015", action = "action_EVENT_GADGET_STATE_CHANGE_311015", trigger_count = 0 },
	-- 右边石块与涂鸦联动双灭-消亡态
	{ config_id = 1311016, name = "GADGET_STATE_CHANGE_311016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311016", action = "action_EVENT_GADGET_STATE_CHANGE_311016", trigger_count = 0 },
	-- 左边石块与涂鸦联动双灭-正常态
	{ config_id = 1311017, name = "GADGET_STATE_CHANGE_311017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311017", action = "action_EVENT_GADGET_STATE_CHANGE_311017", trigger_count = 0 },
	-- 中间石块与涂鸦联动双灭-正常态
	{ config_id = 1311018, name = "GADGET_STATE_CHANGE_311018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311018", action = "action_EVENT_GADGET_STATE_CHANGE_311018", trigger_count = 0 },
	-- 右边石块与涂鸦联动双灭-正常态
	{ config_id = 1311019, name = "GADGET_STATE_CHANGE_311019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_311019", action = "action_EVENT_GADGET_STATE_CHANGE_311019", trigger_count = 0 },
	{ config_id = 1311020, name = "GROUP_REFRESH_311020", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_311020", trigger_count = 0 },
	-- 保底
	{ config_id = 1311021, name = "GROUP_LOAD_311021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_311021", action = "action_EVENT_GROUP_LOAD_311021", trigger_count = 0 },
	-- 没接出来的保底
	{ config_id = 1311022, name = "GROUP_LOAD_311022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_311022", action = "action_EVENT_GROUP_LOAD_311022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "baodi", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 311004, gadget_id = 70230108, pos = { x = -811.589, y = -35.533, z = 3177.447 }, rot = { x = 36.648, y = 1.552, z = 172.577 }, level = 30, area_id = 23 },
		{ config_id = 311005, gadget_id = 70230108, pos = { x = -811.688, y = -34.294, z = 3171.060 }, rot = { x = 334.753, y = 349.534, z = 184.632 }, level = 30, area_id = 23 }
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
	end_suite = 2,
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
		gadgets = { 311001, 311002, 311003, 311006, 311007, 311008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_311010", "GADGET_STATE_CHANGE_311011", "GADGET_STATE_CHANGE_311012", "GADGET_STATE_CHANGE_311013", "GADGET_STATE_CHANGE_311014", "GADGET_STATE_CHANGE_311015", "GADGET_STATE_CHANGE_311016", "GADGET_STATE_CHANGE_311017", "GADGET_STATE_CHANGE_311018", "GADGET_STATE_CHANGE_311019", "GROUP_LOAD_311021", "GROUP_LOAD_311022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 311001, 311002, 311003, 311006, 311007, 311008 },
		regions = { },
		triggers = { "GROUP_REFRESH_311020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_311010(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 311006 ~= evt.param2 then
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
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311010(context, evt)
	-- 将configid为 311001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_311011(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 311007 ~= evt.param2 then
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
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311011(context, evt)
	-- 将configid为 311002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_311012(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 311008 ~= evt.param2 then
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
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311012(context, evt)
	-- 将configid为 311003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_311013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133301311, 311001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133301311, 311002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133301311, 311003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311013(context, evt)
	-- 将本组内变量名为 "baodi" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "baodi", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为311009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 311009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_311014(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 311006 ~= evt.param2 then
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
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311014(context, evt)
	-- 将configid为 311001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_311015(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 311007 ~= evt.param2 then
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
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311015(context, evt)
	-- 将configid为 311002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_311016(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 311008 ~= evt.param2 then
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
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311016(context, evt)
	-- 将configid为 311003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_311017(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 311006 ~= evt.param2 then
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
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311017(context, evt)
	-- 将configid为 311001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_311018(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 311007 ~= evt.param2 then
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
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311018(context, evt)
	-- 将configid为 311002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_311019(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 311008 ~= evt.param2 then
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
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_311019(context, evt)
	-- 将configid为 311003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_311020(context, evt)
	-- 将configid为 311001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 311002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 311003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为311009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 311009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_311021(context, evt)
	-- 判断变量"baodi"为1
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_311021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301311, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_311022(context, evt)
	-- 判断变量"baodi"为0
	if ScriptLib.GetGroupVariableValue(context, "baodi") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_311022(context, evt)
	-- 将configid为 311001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 311002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 311003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 311003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end