-- 基础信息
local base_info = {
	group_id = 144003048
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
	-- 触发靶标出现的开关
	{ config_id = 48001, gadget_id = 70360006, pos = { x = -690.940, y = 193.881, z = 41.050 }, rot = { x = 359.246, y = 0.000, z = 10.428 }, level = 1, area_id = 103 },
	{ config_id = 48002, gadget_id = 70211102, pos = { x = -680.662, y = 194.119, z = 42.715 }, rot = { x = 0.000, y = 201.331, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 48007, gadget_id = 70950079, pos = { x = -683.427, y = 197.647, z = 37.135 }, rot = { x = 0.000, y = 300.737, z = 0.302 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 48008, gadget_id = 70350243, pos = { x = -683.432, y = 193.916, z = 37.127 }, rot = { x = 0.000, y = 339.004, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 48012, gadget_id = 70950075, pos = { x = -690.117, y = 197.525, z = 24.556 }, rot = { x = 4.090, y = 205.094, z = 355.966 }, level = 1, area_id = 103 },
	{ config_id = 48013, gadget_id = 70350085, pos = { x = -690.117, y = 197.525, z = 24.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 48015, gadget_id = 70950078, pos = { x = -687.813, y = 197.569, z = 29.136 }, rot = { x = 0.000, y = 26.126, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 48016, gadget_id = 70350242, pos = { x = -687.834, y = 193.339, z = 29.342 }, rot = { x = 0.000, y = 132.420, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 进入了场地边线后，1）激活台座
	{ config_id = 1048017, name = "GADGET_STATE_CHANGE_48017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48017", action = "action_EVENT_GADGET_STATE_CHANGE_48017", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座
	{ config_id = 1048018, name = "GADGET_STATE_CHANGE_48018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48018", action = "action_EVENT_GADGET_STATE_CHANGE_48018", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1048019, name = "ANY_GADGET_DIE_48019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_48019", action = "action_EVENT_ANY_GADGET_DIE_48019" },
	-- 进入了场地边线后，1）激活台座
	{ config_id = 1048025, name = "GADGET_STATE_CHANGE_48025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48025", action = "action_EVENT_GADGET_STATE_CHANGE_48025", trigger_count = 0 },
	-- 进入了场地边线后，1）激活台座2）开始旋转
	{ config_id = 1048034, name = "GADGET_STATE_CHANGE_48034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48034", action = "action_EVENT_GADGET_STATE_CHANGE_48034", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座2）停止旋转
	{ config_id = 1048035, name = "GADGET_STATE_CHANGE_48035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48035", action = "action_EVENT_GADGET_STATE_CHANGE_48035", trigger_count = 0 },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1048061, name = "GADGET_STATE_CHANGE_48061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48061", action = "action_EVENT_GADGET_STATE_CHANGE_48061" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "turncount", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 48009, gadget_id = 70950079, pos = { x = -691.000, y = 196.800, z = 22.740 }, rot = { x = 0.000, y = 209.000, z = 1.000 }, level = 1, is_use_point_array = true, area_id = 103 },
		{ config_id = 48010, gadget_id = 70350243, pos = { x = -691.000, y = 192.697, z = 22.740 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
		{ config_id = 48011, gadget_id = 70360001, pos = { x = -691.000, y = 192.697, z = 22.740 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 103 },
		{ config_id = 48014, gadget_id = 70350085, pos = { x = -680.014, y = 197.954, z = 43.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
		{ config_id = 48022, gadget_id = 70360001, pos = { x = -693.117, y = 193.530, z = 32.894 }, rot = { x = 0.000, y = 41.433, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 103 },
		{ config_id = 48026, gadget_id = 70950075, pos = { x = -680.014, y = 197.954, z = 43.257 }, rot = { x = 4.090, y = 205.094, z = 355.966 }, level = 1, area_id = 103 }
	},
	triggers = {
		{ config_id = 1048003, name = "SELECT_OPTION_48003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48003", action = "action_EVENT_SELECT_OPTION_48003", trigger_count = 0 },
		{ config_id = 1048004, name = "SELECT_OPTION_48004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48004", action = "action_EVENT_SELECT_OPTION_48004", trigger_count = 0 },
		{ config_id = 1048005, name = "SELECT_OPTION_48005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48005", action = "action_EVENT_SELECT_OPTION_48005", trigger_count = 0 },
		{ config_id = 1048006, name = "VARIABLE_CHANGE_48006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_48006", action = "action_EVENT_VARIABLE_CHANGE_48006", trigger_count = 0 },
		{ config_id = 1048020, name = "GADGET_STATE_CHANGE_48020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48020", action = "action_EVENT_GADGET_STATE_CHANGE_48020", trigger_count = 0 },
		{ config_id = 1048021, name = "ANY_GADGET_DIE_48021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_48021", action = "action_EVENT_ANY_GADGET_DIE_48021" },
		{ config_id = 1048023, name = "GADGET_STATE_CHANGE_48023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48023", action = "action_EVENT_GADGET_STATE_CHANGE_48023" },
		{ config_id = 1048024, name = "GADGET_STATE_CHANGE_48024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48024", action = "action_EVENT_GADGET_STATE_CHANGE_48024", trigger_count = 0 },
		{ config_id = 1048027, name = "GADGET_STATE_CHANGE_48027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48027", action = "action_EVENT_GADGET_STATE_CHANGE_48027", trigger_count = 0 },
		{ config_id = 1048036, name = "GADGET_STATE_CHANGE_48036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48036", action = "action_EVENT_GADGET_STATE_CHANGE_48036", trigger_count = 0 },
		{ config_id = 1048037, name = "GADGET_STATE_CHANGE_48037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48037", action = "action_EVENT_GADGET_STATE_CHANGE_48037", trigger_count = 0 },
		{ config_id = 1048038, name = "GADGET_CREATE_48038", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_48038", action = "action_EVENT_GADGET_CREATE_48038", trigger_count = 0 },
		{ config_id = 1048060, name = "ANY_GADGET_DIE_48060", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_48060", action = "action_EVENT_ANY_GADGET_DIE_48060" },
		{ config_id = 1048064, name = "SELECT_OPTION_48064", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_48064", action = "action_EVENT_SELECT_OPTION_48064", trigger_count = 0 }
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
	end_suite = 3,
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
		-- description = [默认加载的Entities],
		monsters = { },
		gadgets = { 48001, 48002, 48007, 48008, 48012, 48015, 48016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_48017", "GADGET_STATE_CHANGE_48018", "ANY_GADGET_DIE_48019", "GADGET_STATE_CHANGE_48025", "GADGET_STATE_CHANGE_48034", "GADGET_STATE_CHANGE_48035", "GADGET_STATE_CHANGE_48061" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [加载羽球元素靶标&判定玩法成功],
		monsters = { },
		gadgets = { 48013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 升级版,
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
function condition_EVENT_GADGET_STATE_CHANGE_48017(context, evt)
	if 48001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_48017(context, evt)
	-- 将configid为 48015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48016, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_48018(context, evt)
	if 48001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_48018(context, evt)
	-- 将configid为 48015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144003048, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_48019(context, evt)
	if 48012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_48019(context, evt)
	-- 将configid为 48002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144003048, 2)
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_48025(context, evt)
	if 48001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_48025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144003048, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_48034(context, evt)
	if 48001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_48034(context, evt)
	-- 将configid为 48007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 48007, 400300001, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 48008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48008, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_48035(context, evt)
	if 48001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_48035(context, evt)
	-- 将configid为 48007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 48007, 400300001, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 48008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_48061(context, evt)
	if 48002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_48061(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144003048, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "done", 1, 144003019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end