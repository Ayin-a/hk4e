-- 基础信息
local base_info = {
	group_id = 133309174
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 174014, monster_id = 24040101, pos = { x = -2668.950, y = -76.718, z = 5684.010 }, rot = { x = 0.000, y = 0.612, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5246 }, pose_id = 1, area_id = 27 },
	{ config_id = 174015, monster_id = 24040301, pos = { x = -2618.152, y = -85.838, z = 5667.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5246 }, pose_id = 1, area_id = 27 },
	{ config_id = 174016, monster_id = 24040301, pos = { x = -2618.150, y = -85.838, z = 5700.510 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5246 }, pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 174001, gadget_id = 70290539, pos = { x = -2634.819, y = -69.548, z = 5752.971 }, rot = { x = 0.000, y = 90.826, z = 0.000 }, level = 32, start_route = false, persistent = true, area_id = 27 },
	{ config_id = 174008, gadget_id = 70290537, pos = { x = -2619.025, y = -73.830, z = 5742.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 174009, gadget_id = 70290537, pos = { x = -2667.074, y = -73.100, z = 5814.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 174020, gadget_id = 70360001, pos = { x = -2634.819, y = -69.548, z = 5752.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 水面下降后怪物触发
	{ config_id = 174017, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2668.950, y = -76.584, z = 5684.010 }, area_id = 27, vision_type_list = { 33090017 } },
	-- 水面下降后怪物触发
	{ config_id = 174018, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2618.152, y = -85.828, z = 5667.238 }, area_id = 27, vision_type_list = { 33090017 } },
	-- 水面下降后怪物触发
	{ config_id = 174019, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2618.150, y = -85.838, z = 5700.510 }, area_id = 27, vision_type_list = { 33090017 } }
}

-- 触发器
triggers = {
	-- 破序1
	{ config_id = 1174002, name = "GADGET_STATE_CHANGE_174002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174002", action = "action_EVENT_GADGET_STATE_CHANGE_174002" },
	-- 破序2
	{ config_id = 1174003, name = "GADGET_STATE_CHANGE_174003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174003", action = "action_EVENT_GADGET_STATE_CHANGE_174003" },
	-- 正常顺序1保底
	{ config_id = 1174004, name = "GROUP_LOAD_174004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_174004", action = "action_EVENT_GROUP_LOAD_174004", trigger_count = 0 },
	-- 正常顺序2保底
	{ config_id = 1174005, name = "GROUP_LOAD_174005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_174005", action = "action_EVENT_GROUP_LOAD_174005", trigger_count = 0 },
	-- 正常顺序1到达
	{ config_id = 1174006, name = "PLATFORM_ARRIVAL_174006", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_174006", action = "action_EVENT_PLATFORM_ARRIVAL_174006" },
	-- 正常顺序2到达
	{ config_id = 1174007, name = "PLATFORM_ARRIVAL_174007", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_174007", action = "action_EVENT_PLATFORM_ARRIVAL_174007" },
	-- 破序2保底
	{ config_id = 1174010, name = "GROUP_LOAD_174010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_174010", action = "action_EVENT_GROUP_LOAD_174010", trigger_count = 0 },
	-- 破序1保底
	{ config_id = 1174011, name = "GROUP_LOAD_174011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_174011", action = "action_EVENT_GROUP_LOAD_174011", trigger_count = 0 },
	-- 破序1到达
	{ config_id = 1174012, name = "PLATFORM_ARRIVAL_174012", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_174012", action = "action_EVENT_PLATFORM_ARRIVAL_174012" },
	-- 破序2到达
	{ config_id = 1174013, name = "PLATFORM_ARRIVAL_174013", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_174013", action = "action_EVENT_PLATFORM_ARRIVAL_174013" },
	-- 水面下降后怪物触发
	{ config_id = 1174017, name = "ENTER_REGION_174017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_174017", action = "action_EVENT_ENTER_REGION_174017" },
	-- 水面下降后怪物触发
	{ config_id = 1174018, name = "ENTER_REGION_174018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_174018", action = "action_EVENT_ENTER_REGION_174018" },
	-- 水面下降后怪物触发
	{ config_id = 1174019, name = "ENTER_REGION_174019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_174019", action = "action_EVENT_ENTER_REGION_174019" },
	-- 正序1
	{ config_id = 1174021, name = "GADGET_STATE_CHANGE_174021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174021", action = "action_EVENT_GADGET_STATE_CHANGE_174021" },
	-- 正序2
	{ config_id = 1174022, name = "GADGET_STATE_CHANGE_174022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_174022", action = "action_EVENT_GADGET_STATE_CHANGE_174022" },
	-- 最终到达保底刷水
	{ config_id = 1174023, name = "GROUP_LOAD_174023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_174023", action = "action_EVENT_GROUP_LOAD_174023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "waterdown", value = 0, no_refresh = true },
	{ config_id = 2, name = "reachpoint1", value = 0, no_refresh = true },
	{ config_id = 5, name = "reachpoint2", value = 0, no_refresh = true }
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
		gadgets = { 174001, 174020 },
		regions = { 174017, 174018, 174019 },
		triggers = { "GADGET_STATE_CHANGE_174002", "GADGET_STATE_CHANGE_174003", "GROUP_LOAD_174004", "GROUP_LOAD_174005", "PLATFORM_ARRIVAL_174006", "PLATFORM_ARRIVAL_174007", "GROUP_LOAD_174010", "GROUP_LOAD_174011", "PLATFORM_ARRIVAL_174012", "PLATFORM_ARRIVAL_174013", "ENTER_REGION_174017", "ENTER_REGION_174018", "ENTER_REGION_174019", "GADGET_STATE_CHANGE_174021", "GADGET_STATE_CHANGE_174022", "GROUP_LOAD_174023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 174008, 174009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_174002(context, evt)
	-- 检测config_id为174020的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 174020 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_174002(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 174001, 330900037) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 调用提示id为 1000070004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000070004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_174003(context, evt)
	-- 检测config_id为174020的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 174020 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_174003(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 174001, 330900213) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为103 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 103, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309174, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_174004(context, evt)
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	-- 判断变量"reachpoint1"为0
	if ScriptLib.GetGroupVariableValue(context, "reachpoint1") ~= 0 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309174, 174020) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_174004(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 174001, 330900037) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_174005(context, evt)
	-- 判断变量"waterdown"为2
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 2 then
			return false
	end
	
	-- 判断变量"reachpoint2"为0
	if ScriptLib.GetGroupVariableValue(context, "reachpoint2") ~= 0 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133309174, 174020) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_174005(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 174001, 330900213) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309174, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_174006(context, evt)
	-- 判断是gadgetid 为 174001的移动平台，是否到达了330900037 的路线中的 1 点
	
	if 174001 ~= evt.param1 then
	  return false
	end
	
	if 330900037 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_174006(context, evt)
	-- 将本组内变量名为 "reachpoint1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reachpoint1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_174007(context, evt)
	-- 判断是gadgetid 为 174001的移动平台，是否到达了330900213 的路线中的 1 点
	
	if 174001 ~= evt.param1 then
	  return false
	end
	
	if 330900213 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"waterdown"为2
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_174007(context, evt)
	-- 将本组内变量名为 "reachpoint2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reachpoint2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_174010(context, evt)
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	-- 判断变量"reachpoint2"为0
	if ScriptLib.GetGroupVariableValue(context, "reachpoint2") ~= 0 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309174, 174020) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_174010(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 174001, 330900213) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309174, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_174011(context, evt)
	-- 判断变量"waterdown"为2
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 2 then
			return false
	end
	
	-- 判断变量"reachpoint1"为0
	if ScriptLib.GetGroupVariableValue(context, "reachpoint1") ~= 0 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133309174, 174020) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_174011(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 174001, 330900037) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_174012(context, evt)
	-- 判断是gadgetid 为 174001的移动平台，是否到达了330900037 的路线中的 1 点
	
	if 174001 ~= evt.param1 then
	  return false
	end
	
	if 330900037 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"waterdown"为2
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_174012(context, evt)
	-- 将本组内变量名为 "reachpoint1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reachpoint1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_174013(context, evt)
	-- 判断是gadgetid 为 174001的移动平台，是否到达了330900213 的路线中的 1 点
	
	if 174001 ~= evt.param1 then
	  return false
	end
	
	if 330900213 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_174013(context, evt)
	-- 将本组内变量名为 "reachpoint2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reachpoint2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_174017(context, evt)
	if evt.param1 ~= 174017 then return false end
	
	-- 判断变量"reachpoint1"为1
	if ScriptLib.GetGroupVariableValue(context, "reachpoint1") ~= 1 then
			return false
	end
	
	-- 判断变量"reachpoint2"为1
	if ScriptLib.GetGroupVariableValue(context, "reachpoint2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_174017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 174014, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_174018(context, evt)
	if evt.param1 ~= 174018 then return false end
	
	-- 判断变量"reachpoint1"为1
	if ScriptLib.GetGroupVariableValue(context, "reachpoint1") ~= 1 then
			return false
	end
	
	-- 判断变量"reachpoint2"为1
	if ScriptLib.GetGroupVariableValue(context, "reachpoint2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_174018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 174015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_174019(context, evt)
	if evt.param1 ~= 174019 then return false end
	
	-- 判断变量"reachpoint1"为1
	if ScriptLib.GetGroupVariableValue(context, "reachpoint1") ~= 1 then
			return false
	end
	
	-- 判断变量"reachpoint2"为1
	if ScriptLib.GetGroupVariableValue(context, "reachpoint2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_174019(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 174016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_174021(context, evt)
	-- 检测config_id为174020的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 174020 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_174021(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 174001, 330900037) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 调用提示id为 1000070004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000070004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_174022(context, evt)
	-- 检测config_id为174020的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 174020 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_174022(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 174001, 330900213) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为103 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 103, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309174, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_174023(context, evt)
	-- 判断变量"reachpoint1"为1
	if ScriptLib.GetGroupVariableValue(context, "reachpoint1") ~= 1 then
			return false
	end
	
	-- 判断变量"reachpoint2"为1
	if ScriptLib.GetGroupVariableValue(context, "reachpoint2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_174023(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309174, 2)
	
	return 0
end