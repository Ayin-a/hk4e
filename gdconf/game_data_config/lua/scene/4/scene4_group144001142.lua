-- 基础信息
local base_info = {
	group_id = 144001142
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
	{ config_id = 142001, gadget_id = 70360006, pos = { x = 198.329, y = 193.772, z = 365.973 }, rot = { x = 9.844, y = 10.244, z = 357.552 }, level = 1, area_id = 102 },
	{ config_id = 142002, gadget_id = 70211112, pos = { x = 221.736, y = 188.261, z = 421.276 }, rot = { x = 0.000, y = 208.981, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 142003, gadget_id = 70950076, pos = { x = 205.914, y = 193.929, z = 388.724 }, rot = { x = 0.000, y = 52.119, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 142005, gadget_id = 70350085, pos = { x = 222.241, y = 192.232, z = 422.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 142007, gadget_id = 70950079, pos = { x = 215.480, y = 192.401, z = 394.798 }, rot = { x = 357.793, y = 83.423, z = 359.849 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 142009, gadget_id = 70950079, pos = { x = 193.881, y = 195.199, z = 381.236 }, rot = { x = 358.982, y = 148.165, z = 5.659 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 142026, gadget_id = 70950073, pos = { x = 222.241, y = 192.232, z = 422.196 }, rot = { x = 0.000, y = 223.532, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 142067, gadget_id = 70950079, pos = { x = 213.057, y = 192.039, z = 413.183 }, rot = { x = 8.170, y = 140.232, z = 358.698 }, level = 1, is_use_point_array = true, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1142006, name = "ANY_GADGET_DIE_142006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_142006", action = "action_EVENT_ANY_GADGET_DIE_142006", trigger_count = 0 },
	{ config_id = 1142029, name = "GROUP_LOAD_142029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_142029", trigger_count = 0 },
	{ config_id = 1142030, name = "GADGET_STATE_CHANGE_142030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142030", action = "action_EVENT_GADGET_STATE_CHANGE_142030", trigger_count = 0 },
	{ config_id = 1142031, name = "GADGET_STATE_CHANGE_142031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142031", action = "action_EVENT_GADGET_STATE_CHANGE_142031", trigger_count = 0 },
	{ config_id = 1142035, name = "GADGET_STATE_CHANGE_142035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142035", action = "action_EVENT_GADGET_STATE_CHANGE_142035", trigger_count = 0 },
	{ config_id = 1142036, name = "GADGET_STATE_CHANGE_142036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142036", action = "action_EVENT_GADGET_STATE_CHANGE_142036", trigger_count = 0 },
	{ config_id = 1142038, name = "GADGET_STATE_CHANGE_142038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142038", action = "action_EVENT_GADGET_STATE_CHANGE_142038", trigger_count = 0 },
	{ config_id = 1142039, name = "GADGET_STATE_CHANGE_142039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142039", action = "action_EVENT_GADGET_STATE_CHANGE_142039", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1142062, name = "ANY_GADGET_DIE_142062", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_142062", action = "action_EVENT_ANY_GADGET_DIE_142062" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1142063, name = "GADGET_STATE_CHANGE_142063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142063", action = "action_EVENT_GADGET_STATE_CHANGE_142063" },
	{ config_id = 1142064, name = "GADGET_STATE_CHANGE_142064", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142064", action = "action_EVENT_GADGET_STATE_CHANGE_142064", trigger_count = 0 },
	{ config_id = 1142065, name = "GADGET_STATE_CHANGE_142065", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142065", action = "action_EVENT_GADGET_STATE_CHANGE_142065", trigger_count = 0 },
	{ config_id = 1142069, name = "GADGET_STATE_CHANGE_142069", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142069", action = "action_EVENT_GADGET_STATE_CHANGE_142069", trigger_count = 0 },
	{ config_id = 1142070, name = "GADGET_STATE_CHANGE_142070", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_142070", action = "action_EVENT_GADGET_STATE_CHANGE_142070", trigger_count = 0 },
	{ config_id = 1142071, name = "PLATFORM_REACH_POINT_142071", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142071", action = "", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "finish", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1142037, name = "PLATFORM_REACH_POINT_142037", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_142037", action = "", trigger_count = 0 },
		{ config_id = 1142040, name = "GADGET_CREATE_142040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_142040", action = "", trigger_count = 0 },
		{ config_id = 1142066, name = "SELECT_OPTION_142066", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_142066", action = "", trigger_count = 0 }
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
	end_suite = 4,
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
		gadgets = { 142001, 142002, 142026 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_142006", "GROUP_LOAD_142029", "ANY_GADGET_DIE_142062", "GADGET_STATE_CHANGE_142063", "GADGET_STATE_CHANGE_142064", "GADGET_STATE_CHANGE_142065" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [加载羽球元素靶标&判定玩法成功],
		monsters = { },
		gadgets = { 142005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [加载羽球元素靶标&判定玩法成功的方法2],
		monsters = { },
		gadgets = { 142067 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_142069", "GADGET_STATE_CHANGE_142070", "PLATFORM_REACH_POINT_142071" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [玩法完成后的空Suite],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载固定位置的元素台座],
		monsters = { },
		gadgets = { 142003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_142030", "GADGET_STATE_CHANGE_142031" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载自转的元素台座（风）],
		monsters = { },
		gadgets = { 142007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_142035", "GADGET_STATE_CHANGE_142036" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 142009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_142038", "GADGET_STATE_CHANGE_142039" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_142006(context, evt)
	if 142026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_142006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 142005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_142029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001142, 3)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001142, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001142, 7)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001142, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142030(context, evt)
	if 142001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142030(context, evt)
	-- 将configid为 142003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 142003, 400100007, {2,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 142004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142031(context, evt)
	if 142001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142031(context, evt)
	-- 将configid为 142003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 142003, 400100007, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 142004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142035(context, evt)
	if 142001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142035(context, evt)
	-- 将configid为 142007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 142008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142036(context, evt)
	if 142001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142036(context, evt)
	-- 将configid为 142007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 142008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142038(context, evt)
	if 142001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142038(context, evt)
	-- 将configid为 142009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144001142 ；指定config：142011；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144001142, 142011, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142039(context, evt)
	if 142001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142039(context, evt)
	-- 将configid为 142009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_142062(context, evt)
	if 142026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_142062(context, evt)
	-- 将configid为 142002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142063(context, evt)
	if 142002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142063(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144001142, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142064(context, evt)
	if 142001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142064(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142065(context, evt)
	if 142001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142065(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142069(context, evt)
	if 142001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142069(context, evt)
	-- 将configid为 142067 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142067, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_142070(context, evt)
	if 142001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_142070(context, evt)
	-- 将configid为 142067 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142067, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001142, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_142071(context, evt)
	-- 判断是gadgetid 为 142067的移动平台，是否到达了999800002 的路线中的 2 点
	
	if 142067 ~= evt.param1 then
	  return false
	end
	
	if 999800002 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end