-- 基础信息
local base_info = {
	group_id = 177008096
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 700800002,
	gadget_seelie = 96002
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
	{ config_id = 96001, gadget_id = 70710006, pos = { x = -510.448, y = 215.511, z = 539.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 96002, gadget_id = 70710010, pos = { x = -472.327, y = 219.994, z = 540.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 700800003, area_id = 210 },
	{ config_id = 96003, gadget_id = 70710007, pos = { x = -508.981, y = 215.532, z = 539.569 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 96004, gadget_id = 70211160, pos = { x = -510.567, y = 215.505, z = 541.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "渊下宫活动低级稻妻", showcutscene = true, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 96010, gadget_id = 70220020, pos = { x = -472.624, y = 220.405, z = 538.198 }, rot = { x = 0.000, y = 6.667, z = 351.802 }, level = 36, area_id = 210 },
	{ config_id = 96011, gadget_id = 70220020, pos = { x = -473.776, y = 220.354, z = 540.576 }, rot = { x = 359.749, y = 313.895, z = 345.035 }, level = 36, area_id = 210 },
	{ config_id = 96012, gadget_id = 70220020, pos = { x = -470.658, y = 219.841, z = 540.347 }, rot = { x = 3.972, y = 63.428, z = 7.884 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1096005, name = "PLATFORM_REACH_POINT_96005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_96005", action = "action_EVENT_PLATFORM_REACH_POINT_96005", trigger_count = 0 },
	{ config_id = 1096006, name = "AVATAR_NEAR_PLATFORM_96006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_96006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_96006", trigger_count = 0 },
	{ config_id = 1096007, name = "ANY_GADGET_DIE_96007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_96007", action = "action_EVENT_ANY_GADGET_DIE_96007", trigger_count = 0 },
	{ config_id = 1096008, name = "GADGET_STATE_CHANGE_96008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96008", action = "action_EVENT_GADGET_STATE_CHANGE_96008" },
	{ config_id = 1096009, name = "GADGET_CREATE_96009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_96009", action = "action_EVENT_GADGET_CREATE_96009", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 96001, 96002, 96003, 96010, 96011, 96012 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_96005", "AVATAR_NEAR_PLATFORM_96006", "ANY_GADGET_DIE_96007", "GADGET_STATE_CHANGE_96008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 96001, 96004 },
		regions = { },
		triggers = { "GADGET_CREATE_96009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_96005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_96005(context, evt)
	-- 将configid为 96001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 96002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 96002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_96006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_96006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 96002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_96007(context, evt)
	-- 判断指定group组剩余gadget数量是否是5 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 177008096}) ~= 5 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_96007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 96002, 700800002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 96003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_96008(context, evt)
	if 96001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177008096, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "Light" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Light", 1, 177008095) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_96009(context, evt)
	if 96001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_96009(context, evt)
	-- 将configid为 96001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end