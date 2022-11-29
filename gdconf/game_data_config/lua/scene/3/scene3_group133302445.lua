-- 基础信息
local base_info = {
	group_id = 133302445
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 445001, monster_id = 28010301, pos = { x = -536.734, y = 103.178, z = 2355.080 }, rot = { x = 0.000, y = 331.895, z = 0.000 }, level = 27, drop_tag = "采集动物", isOneoff = true, area_id = 24 },
	{ config_id = 445002, monster_id = 28010301, pos = { x = -536.991, y = 103.237, z = 2354.117 }, rot = { x = 0.000, y = 120.795, z = 0.000 }, level = 27, drop_tag = "采集动物", isOneoff = true, area_id = 24 },
	{ config_id = 445003, monster_id = 28010203, pos = { x = -553.805, y = 102.850, z = 2352.245 }, rot = { x = 0.000, y = 216.205, z = 0.000 }, level = 27, drop_tag = "采集动物", isOneoff = true, area_id = 24 },
	{ config_id = 445004, monster_id = 28010203, pos = { x = -553.689, y = 102.850, z = 2353.182 }, rot = { x = 0.000, y = 21.142, z = 0.000 }, level = 27, drop_tag = "采集动物", isOneoff = true, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 445005, gadget_id = 70211101, pos = { x = -523.475, y = 102.572, z = 2376.802 }, rot = { x = 338.853, y = 48.730, z = 354.770 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 445006, gadget_id = 70330199, pos = { x = -545.603, y = 102.662, z = 2367.089 }, rot = { x = 0.000, y = 253.764, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 24 },
	{ config_id = 445009, gadget_id = 70330199, pos = { x = -536.811, y = 103.220, z = 2354.861 }, rot = { x = 0.000, y = 331.895, z = 356.683 }, level = 27, state = GadgetState.GearStop, area_id = 24 },
	{ config_id = 445010, gadget_id = 70330199, pos = { x = -554.178, y = 102.536, z = 2352.761 }, rot = { x = 0.000, y = 58.708, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 24 },
	{ config_id = 445011, gadget_id = 70310198, pos = { x = -555.476, y = 102.800, z = 2334.695 }, rot = { x = 0.000, y = 261.267, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 445012, gadget_id = 70230110, pos = { x = -541.317, y = 102.583, z = 2359.160 }, rot = { x = 1.818, y = 247.934, z = 104.231 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 445013, gadget_id = 70230110, pos = { x = -543.057, y = 102.387, z = 2358.647 }, rot = { x = 346.645, y = 6.889, z = 84.715 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 445014, gadget_id = 70230110, pos = { x = -542.666, y = 102.910, z = 2359.985 }, rot = { x = 349.377, y = 302.239, z = 99.696 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 宝箱
	{ config_id = 1445007, name = "GROUP_LOAD_445007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_445007", action = "action_EVENT_GROUP_LOAD_445007", trigger_count = 0 },
	-- 宝箱
	{ config_id = 1445015, name = "GADGET_STATE_CHANGE_445015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_445015", action = "action_EVENT_GADGET_STATE_CHANGE_445015" },
	-- 左
	{ config_id = 1445016, name = "GADGET_STATE_CHANGE_445016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_445016", action = "action_EVENT_GADGET_STATE_CHANGE_445016" },
	-- 右
	{ config_id = 1445017, name = "GADGET_STATE_CHANGE_445017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_445017", action = "action_EVENT_GADGET_STATE_CHANGE_445017" },
	-- 中
	{ config_id = 1445018, name = "GADGET_STATE_CHANGE_445018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_445018", action = "action_EVENT_GADGET_STATE_CHANGE_445018" }
}

-- 变量
variables = {
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
		gadgets = { 445006, 445009, 445010, 445011, 445012, 445013, 445014 },
		regions = { },
		triggers = { "GROUP_LOAD_445007", "GADGET_STATE_CHANGE_445015", "GADGET_STATE_CHANGE_445016", "GADGET_STATE_CHANGE_445017", "GADGET_STATE_CHANGE_445018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_445007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302445, 445012) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302445, 445013) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302445, 445014) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_445007(context, evt)
	-- 创建id为445005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 445005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_445015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302445, 445012) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302445, 445013) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302445, 445014) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_445015(context, evt)
	-- 创建id为445005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 445005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_445016(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 445010 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_445016(context, evt)
	-- 将configid为 445013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 445013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 445003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 445004, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_445017(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 445009 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_445017(context, evt)
	-- 将configid为 445012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 445012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 445001, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 445002, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_445018(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 445006 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_445018(context, evt)
	-- 将configid为 445014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 445014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end