-- 基础信息
local base_info = {
	group_id = 133301672
}

-- Trigger变量
local defs = {
	point_sum = 17,
	route_2 = 330100161,
	gadget_seelie = 672002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 672001, gadget_id = 70710006, pos = { x = -889.988, y = 222.354, z = 3214.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 672002, gadget_id = 70710010, pos = { x = -840.143, y = 212.679, z = 3264.143 }, rot = { x = 6.203, y = 122.756, z = 2.553 }, level = 30, route_id = 330100162, area_id = 23 },
	{ config_id = 672003, gadget_id = 70710007, pos = { x = -890.387, y = 224.488, z = 3210.916 }, rot = { x = 0.000, y = 148.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 672004, gadget_id = 70211101, pos = { x = -898.580, y = 225.602, z = 3216.226 }, rot = { x = 0.000, y = 121.796, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 672010, gadget_id = 70710221, pos = { x = -839.398, y = 213.393, z = 3263.140 }, rot = { x = 334.116, y = 57.110, z = 74.106 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 672011, gadget_id = 70950145, pos = { x = -839.185, y = 213.274, z = 3264.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 解锁方碑刷宝箱
	{ config_id = 1672005, name = "PLATFORM_REACH_POINT_672005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_672005", action = "action_EVENT_PLATFORM_REACH_POINT_672005", trigger_count = 0 },
	{ config_id = 1672006, name = "AVATAR_NEAR_PLATFORM_672006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_672006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_672006", trigger_count = 0 },
	{ config_id = 1672007, name = "SELECT_OPTION_672007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_672007", action = "action_EVENT_SELECT_OPTION_672007", trigger_count = 0 },
	-- 仙灵归位跳转
	{ config_id = 1672008, name = "GADGET_STATE_CHANGE_672008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672008", action = "action_EVENT_GADGET_STATE_CHANGE_672008" },
	{ config_id = 1672009, name = "GADGET_CREATE_672009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_672009", action = "action_EVENT_GADGET_CREATE_672009", trigger_count = 0 },
	-- 删操作台
	{ config_id = 1672013, name = "SELECT_OPTION_672013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_672013", action = "action_EVENT_SELECT_OPTION_672013", trigger_count = 0 },
	-- 挂操作台
	{ config_id = 1672016, name = "GADGET_CREATE_672016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_672016", action = "action_EVENT_GADGET_CREATE_672016", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 672012, gadget_id = 70900050, pos = { x = -889.533, y = 225.806, z = 3214.781 }, rot = { x = 0.000, y = 298.096, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 23 },
		{ config_id = 672014, gadget_id = 70330246, pos = { x = -895.114, y = 224.878, z = 3213.919 }, rot = { x = 358.451, y = 118.125, z = 0.882 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 672017, gadget_id = 70360001, pos = { x = -845.641, y = 213.470, z = 3267.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
	},
	triggers = {
		{ config_id = 1672015, name = "GADGET_STATE_CHANGE_672015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_672015", action = "action_EVENT_GADGET_STATE_CHANGE_672015", trigger_count = 0 },
		{ config_id = 1672018, name = "GADGET_CREATE_672018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_672018", action = "action_EVENT_GADGET_CREATE_672018" }
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
		gadgets = { 672001, 672002, 672003, 672010, 672011 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_672005", "AVATAR_NEAR_PLATFORM_672006", "SELECT_OPTION_672007", "GADGET_STATE_CHANGE_672008", "SELECT_OPTION_672013", "GADGET_CREATE_672016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 672001, 672004, 672010 },
		regions = { },
		triggers = { "GADGET_CREATE_672009" },
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
function condition_EVENT_PLATFORM_REACH_POINT_672005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_672005(context, evt)
	-- 将configid为 672001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 672002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 672002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_672006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_672006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 672002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_672007(context, evt)
	if 672011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_672007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 672002, 330100161) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将configid为 672010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 672003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_672008(context, evt)
	if 672001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_672008(context, evt)
	-- 改变指定group组133301749中， configid为749001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133301749, 749001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301672, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_672009(context, evt)
	if 672001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_672009(context, evt)
	-- 将configid为 672001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 672010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_672013(context, evt)
	if 672011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_672013(context, evt)
	-- 删除指定group： 133301672 ；指定config：672011；物件身上指定option：769；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133301672, 672011, 769) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_672016(context, evt)
	if 672011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_672016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {769}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end