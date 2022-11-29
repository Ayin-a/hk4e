-- 基础信息
local base_info = {
	group_id = 133217333
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 333005, monster_id = 24020401, pos = { x = -4192.398, y = 198.571, z = -3838.517 }, rot = { x = 0.000, y = 15.361, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, isOneoff = true, pose_id = 101, area_id = 14 },
	{ config_id = 333006, monster_id = 24020401, pos = { x = -4193.080, y = 198.418, z = -3834.926 }, rot = { x = 0.000, y = 338.624, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, isOneoff = true, pose_id = 101, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 333001, gadget_id = 70350292, pos = { x = -4197.638, y = 201.515, z = -3820.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 321700044, persistent = true, area_id = 14 },
	{ config_id = 333002, gadget_id = 70350292, pos = { x = -4184.764, y = 204.216, z = -3831.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 321700045, persistent = true, area_id = 14 },
	{ config_id = 333003, gadget_id = 70900008, pos = { x = -4193.986, y = 198.611, z = -3837.103 }, rot = { x = 0.000, y = 317.693, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1333004, name = "GADGET_STATE_CHANGE_333004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_333004", action = "action_EVENT_GADGET_STATE_CHANGE_333004", trigger_count = 0 },
	{ config_id = 1333008, name = "ANY_MONSTER_DIE_333008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_333008", action = "action_EVENT_ANY_MONSTER_DIE_333008", trigger_count = 0 },
	{ config_id = 1333009, name = "TIME_AXIS_PASS_333009", event = EventType.EVENT_TIME_AXIS_PASS, source = "time", condition = "condition_EVENT_TIME_AXIS_PASS_333009", action = "action_EVENT_TIME_AXIS_PASS_333009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 333007, monster_id = 24020101, pos = { x = -4198.328, y = 199.495, z = -3848.634 }, rot = { x = 2.022, y = 73.007, z = 6.749 }, level = 30, drop_tag = "拟生机关", disableWander = true, isOneoff = true, pose_id = 101, area_id = 14 }
	},
	triggers = {
		{ config_id = 1333010, name = "ANY_MONSTER_DIE_333010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_333010", action = "action_EVENT_ANY_MONSTER_DIE_333010", trigger_count = 0 }
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
		monsters = { 333005, 333006 },
		gadgets = { 333001, 333002, 333003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_333004", "ANY_MONSTER_DIE_333008", "TIME_AXIS_PASS_333009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 333003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_333004(context, evt)
	if 333003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_333004(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 333001, 321700054) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 333002, 321700054) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 创建标识为"time"，时间节点为{120}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "time", {120}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_333008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_333008(context, evt)
	-- 将configid为 333003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_333009(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_333009(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 333001, 321700044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 333002, 321700045) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将configid为 333003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end