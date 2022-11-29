-- 基础信息
local base_info = {
	group_id = 133301102
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
	-- 觉王殿藤蔓门~传送点
	{ config_id = 102002, gadget_id = 70380231, pos = { x = -614.343, y = 129.025, z = 3631.139 }, rot = { x = 0.000, y = 341.057, z = 0.000 }, level = 33, state = GadgetState.Action03, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 22 },
	-- 传送点~大树洞入口
	{ config_id = 102003, gadget_id = 70380231, pos = { x = -608.831, y = 144.824, z = 3693.123 }, rot = { x = 0.000, y = 46.658, z = 0.000 }, level = 33, state = GadgetState.GearAction1, route_id = 330100035, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 25 },
	-- 大树洞入口~负一层
	{ config_id = 102004, gadget_id = 70380231, pos = { x = -602.670, y = 128.919, z = 3947.956 }, rot = { x = 0.000, y = 295.394, z = 0.000 }, level = 33, state = GadgetState.GearAction1, route_id = 330100053, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 25 }
}

-- 区域
regions = {
	-- 第一个平台靠近移动
	{ config_id = 102024, shape = RegionShape.SPHERE, radius = 8, pos = { x = -616.131, y = 129.821, z = 3638.063 }, area_id = 22 }
}

-- 触发器
triggers = {
	-- 7303601开始创生罩子+计时
	{ config_id = 1102001, name = "QUEST_START_102001", event = EventType.EVENT_QUEST_START, source = "7303601", condition = "", action = "action_EVENT_QUEST_START_102001", trigger_count = 0 },
	-- 7303604开始寻找第二个符文route
	{ config_id = 1102006, name = "QUEST_START_102006", event = EventType.EVENT_QUEST_START, source = "7303604", condition = "", action = "action_EVENT_QUEST_START_102006", trigger_count = 0 },
	-- 7303605开始寻找第三个符文route
	{ config_id = 1102008, name = "QUEST_START_102008", event = EventType.EVENT_QUEST_START, source = "7303605", condition = "", action = "action_EVENT_QUEST_START_102008", trigger_count = 0 },
	-- battle1 岩盔王布设死亡后前进
	{ config_id = 1102009, name = "VARIABLE_CHANGE_102009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_102009", action = "action_EVENT_VARIABLE_CHANGE_102009", trigger_count = 0 },
	-- 7303606前往大树洞
	{ config_id = 1102011, name = "QUEST_START_102011", event = EventType.EVENT_QUEST_START, source = "7303606", condition = "", action = "action_EVENT_QUEST_START_102011", trigger_count = 0 },
	-- 7303603开始寻找第一个符文route
	{ config_id = 1102012, name = "QUEST_START_102012", event = EventType.EVENT_QUEST_START, source = "7303603", condition = "", action = "action_EVENT_QUEST_START_102012", trigger_count = 0 },
	-- 7303612开始删除04
	{ config_id = 1102013, name = "QUEST_START_102013", event = EventType.EVENT_QUEST_START, source = "7303612", condition = "", action = "action_EVENT_QUEST_START_102013", trigger_count = 0 },
	-- 7303607前往第一层
	{ config_id = 1102014, name = "QUEST_START_102014", event = EventType.EVENT_QUEST_START, source = "7303607", condition = "", action = "action_EVENT_QUEST_START_102014", trigger_count = 0 },
	-- 7303636开始删除03
	{ config_id = 1102015, name = "QUEST_START_102015", event = EventType.EVENT_QUEST_START, source = "7303636", condition = "", action = "action_EVENT_QUEST_START_102015", trigger_count = 0 },
	-- 04靠近移动
	{ config_id = 1102016, name = "AVATAR_NEAR_PLATFORM_102016", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_102016", action = "action_EVENT_AVATAR_NEAR_PLATFORM_102016", trigger_count = 0 },
	-- 03靠近移动
	{ config_id = 1102017, name = "AVATAR_NEAR_PLATFORM_102017", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_102017", action = "action_EVENT_AVATAR_NEAR_PLATFORM_102017", trigger_count = 0 },
	-- 7303602开始删除02
	{ config_id = 1102019, name = "QUEST_START_102019", event = EventType.EVENT_QUEST_START, source = "7303602", condition = "", action = "action_EVENT_QUEST_START_102019", trigger_count = 0 },
	-- 7303609开始前往死域瘤
	{ config_id = 1102020, name = "QUEST_START_102020", event = EventType.EVENT_QUEST_START, source = "7303609", condition = "", action = "action_EVENT_QUEST_START_102020", trigger_count = 0 },
	-- 7303610开始删除04
	{ config_id = 1102021, name = "QUEST_START_102021", event = EventType.EVENT_QUEST_START, source = "7303610", condition = "", action = "action_EVENT_QUEST_START_102021", trigger_count = 0 },
	-- 创生后切902
	{ config_id = 1102022, name = "TIME_AXIS_PASS_102022", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_102022", action = "action_EVENT_TIME_AXIS_PASS_102022", trigger_count = 0 },
	-- 创生后切203
	{ config_id = 1102023, name = "TIME_AXIS_PASS_102023", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_102023", action = "action_EVENT_TIME_AXIS_PASS_102023", trigger_count = 0 },
	-- 第一个平台靠近移动
	{ config_id = 1102024, name = "ENTER_REGION_102024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_102024", action = "action_EVENT_ENTER_REGION_102024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "battle1", value = 0, no_refresh = true },
	{ config_id = 4, name = "go", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 102005, gadget_id = 70380231, pos = { x = -600.258, y = 33.752, z = 3791.554 }, rot = { x = 0.000, y = 43.973, z = 0.000 }, level = 33, persistent = true, area_id = 25 },
		{ config_id = 102018, gadget_id = 70290596, pos = { x = -600.938, y = 128.324, z = 3947.282 }, rot = { x = 0.000, y = 112.027, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 }
	},
	regions = {
		{ config_id = 102007, shape = RegionShape.SPHERE, radius = 8, pos = { x = -617.553, y = 129.821, z = 3644.058 }, area_id = 22 }
	},
	triggers = {
		{ config_id = 1102007, name = "ENTER_REGION_102007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_102007", action = "action_EVENT_ENTER_REGION_102007", trigger_count = 0 },
		{ config_id = 1102010, name = "AVATAR_NEAR_PLATFORM_102010", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_102010", action = "action_EVENT_AVATAR_NEAR_PLATFORM_102010", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 102024 },
		triggers = { "QUEST_START_102001", "QUEST_START_102006", "QUEST_START_102008", "VARIABLE_CHANGE_102009", "QUEST_START_102011", "QUEST_START_102012", "QUEST_START_102013", "QUEST_START_102014", "QUEST_START_102015", "AVATAR_NEAR_PLATFORM_102016", "AVATAR_NEAR_PLATFORM_102017", "QUEST_START_102019", "QUEST_START_102020", "QUEST_START_102021", "TIME_AXIS_PASS_102022", "TIME_AXIS_PASS_102023", "ENTER_REGION_102024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_102001(context, evt)
	-- 创建id为102002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 102002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建标识为"shieldwait1"，时间节点为{6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "shieldwait1", {6}, false)
	
	
	-- 创建标识为"shieldwait2"，时间节点为{8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "shieldwait2", {8}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_102006(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 102003, 330100036) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_102008(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 102003, 330100038) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_102009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"battle1"为1
	if ScriptLib.GetGroupVariableValue(context, "battle1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_102009(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 102003, 330100037) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_102011(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 102003, 330100052) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_102012(context, evt)
	-- 创建id为102003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 102003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_102013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 102004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_102014(context, evt)
	-- 创建id为102004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 102004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_102015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 102003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_102016(context, evt)
	if 102004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_102016(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 102004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_102017(context, evt)
	if 102003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_102017(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 102003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_102019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 102002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_102020(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 102004, 330100098) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_102021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 102004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_102022(context, evt)
	if "shieldwait1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_102022(context, evt)
	-- 将configid为 102002 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102002, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "go" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "go", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_102023(context, evt)
	if "shieldwait2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_102023(context, evt)
	-- 将configid为 102002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_102024(context, evt)
	if evt.param1 ~= 102024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"go"为1
	if ScriptLib.GetGroupVariableValue(context, "go") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_102024(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 102002, 330100034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 102002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"