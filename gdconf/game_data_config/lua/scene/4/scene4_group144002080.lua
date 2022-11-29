-- 基础信息
local base_info = {
	group_id = 144002080
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
	{ config_id = 80001, gadget_id = 70360006, pos = { x = 543.792, y = 128.212, z = -574.169 }, rot = { x = 1.856, y = 0.389, z = 353.607 }, level = 1, area_id = 101 },
	{ config_id = 80002, gadget_id = 70211112, pos = { x = 537.364, y = 128.471, z = -574.608 }, rot = { x = 0.000, y = 85.408, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 80003, gadget_id = 70950077, pos = { x = 561.260, y = 130.560, z = -565.790 }, rot = { x = 0.000, y = 220.648, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 80004, gadget_id = 70350241, pos = { x = 561.260, y = 126.772, z = -565.790 }, rot = { x = 0.000, y = 67.550, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 80005, gadget_id = 70950079, pos = { x = 577.193, y = 144.976, z = -546.050 }, rot = { x = 292.584, y = 354.235, z = 273.683 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 80006, gadget_id = 70350243, pos = { x = 577.249, y = 143.283, z = -542.361 }, rot = { x = 47.609, y = 246.716, z = 50.095 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 80007, gadget_id = 70950079, pos = { x = 551.600, y = 131.250, z = -574.310 }, rot = { x = 0.000, y = 142.897, z = 353.658 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 80008, gadget_id = 70350243, pos = { x = 551.600, y = 127.404, z = -574.310 }, rot = { x = 0.000, y = 132.420, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 80009, gadget_id = 70950079, pos = { x = 583.400, y = 135.790, z = -548.680 }, rot = { x = 355.000, y = 16.480, z = 266.115 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 80010, gadget_id = 70350243, pos = { x = 583.631, y = 131.987, z = -547.714 }, rot = { x = 23.027, y = 183.136, z = 354.143 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 80011, gadget_id = 70360001, pos = { x = 583.631, y = 131.987, z = -547.714 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 80012, gadget_id = 70360001, pos = { x = 577.249, y = 142.415, z = -542.361 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 80022, gadget_id = 70360001, pos = { x = 561.260, y = 126.772, z = -565.790 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 80027, gadget_id = 70950074, pos = { x = 567.682, y = 145.012, z = -553.327 }, rot = { x = 0.000, y = 235.760, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 80029, gadget_id = 70350085, pos = { x = 567.682, y = 145.012, z = -553.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1080013, name = "GADGET_CREATE_80013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80013", action = "action_EVENT_GADGET_CREATE_80013", trigger_count = 0 },
	{ config_id = 1080014, name = "GADGET_STATE_CHANGE_80014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80014", action = "action_EVENT_GADGET_STATE_CHANGE_80014", trigger_count = 0 },
	{ config_id = 1080015, name = "GADGET_STATE_CHANGE_80015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80015", action = "action_EVENT_GADGET_STATE_CHANGE_80015", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1080016, name = "SELECT_OPTION_80016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80016", action = "action_EVENT_SELECT_OPTION_80016", trigger_count = 0 },
	{ config_id = 1080017, name = "SELECT_OPTION_80017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80017", action = "action_EVENT_SELECT_OPTION_80017", trigger_count = 0 },
	{ config_id = 1080018, name = "SELECT_OPTION_80018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80018", action = "action_EVENT_SELECT_OPTION_80018", trigger_count = 0 },
	{ config_id = 1080021, name = "GADGET_CREATE_80021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80021", action = "action_EVENT_GADGET_CREATE_80021", trigger_count = 0 },
	-- 向上
	{ config_id = 1080023, name = "SELECT_OPTION_80023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80023", action = "action_EVENT_SELECT_OPTION_80023", trigger_count = 0 },
	-- 重置
	{ config_id = 1080024, name = "SELECT_OPTION_80024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80024", action = "action_EVENT_SELECT_OPTION_80024", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座
	{ config_id = 1080031, name = "GROUP_LOAD_80031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_80031", trigger_count = 0 },
	{ config_id = 1080032, name = "GADGET_STATE_CHANGE_80032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80032", action = "action_EVENT_GADGET_STATE_CHANGE_80032", trigger_count = 0 },
	{ config_id = 1080033, name = "GADGET_STATE_CHANGE_80033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80033", action = "action_EVENT_GADGET_STATE_CHANGE_80033", trigger_count = 0 },
	{ config_id = 1080037, name = "GADGET_STATE_CHANGE_80037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80037", action = "action_EVENT_GADGET_STATE_CHANGE_80037", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座2）停止旋转
	{ config_id = 1080038, name = "GADGET_STATE_CHANGE_80038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80038", action = "action_EVENT_GADGET_STATE_CHANGE_80038", trigger_count = 0 },
	{ config_id = 1080040, name = "GADGET_STATE_CHANGE_80040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80040", action = "action_EVENT_GADGET_STATE_CHANGE_80040", trigger_count = 0 },
	{ config_id = 1080041, name = "GADGET_STATE_CHANGE_80041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80041", action = "action_EVENT_GADGET_STATE_CHANGE_80041", trigger_count = 0 },
	{ config_id = 1080042, name = "GADGET_CREATE_80042", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80042", action = "action_EVENT_GADGET_CREATE_80042", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1080060, name = "SELECT_OPTION_80060", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80060", action = "action_EVENT_SELECT_OPTION_80060", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1080071, name = "ANY_GADGET_DIE_80071", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_80071", action = "action_EVENT_ANY_GADGET_DIE_80071" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1080072, name = "GADGET_STATE_CHANGE_80072", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80072", action = "action_EVENT_GADGET_STATE_CHANGE_80072" },
	{ config_id = 1080073, name = "GADGET_STATE_CHANGE_80073", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80073", action = "action_EVENT_GADGET_STATE_CHANGE_80073", trigger_count = 0 },
	{ config_id = 1080074, name = "GADGET_STATE_CHANGE_80074", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_80074", action = "action_EVENT_GADGET_STATE_CHANGE_80074", trigger_count = 0 },
	{ config_id = 1080075, name = "SELECT_OPTION_80075", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80075", action = "action_EVENT_SELECT_OPTION_80075", trigger_count = 0 },
	{ config_id = 1080076, name = "SELECT_OPTION_80076", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80076", action = "action_EVENT_SELECT_OPTION_80076", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "turncount", value = 0, no_refresh = false },
	{ config_id = 5, name = "turncount1", value = 0, no_refresh = false }
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
		gadgets = { 80001, 80002, 80007, 80008, 80027 },
		regions = { },
		triggers = { "GROUP_LOAD_80031", "GADGET_STATE_CHANGE_80037", "GADGET_STATE_CHANGE_80038", "ANY_GADGET_DIE_80071", "GADGET_STATE_CHANGE_80072", "GADGET_STATE_CHANGE_80073", "GADGET_STATE_CHANGE_80074" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [羽球镜头控制器和目标点],
		monsters = { },
		gadgets = { 80029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [需销毁1个靶标的判定方法],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [加载固定位置的元素台座],
		monsters = { },
		gadgets = { 80003, 80004, 80022 },
		regions = { },
		triggers = { "GADGET_CREATE_80021", "SELECT_OPTION_80023", "SELECT_OPTION_80024", "GADGET_STATE_CHANGE_80032", "GADGET_STATE_CHANGE_80033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 80009, 80010, 80011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_80040", "GADGET_STATE_CHANGE_80041", "GADGET_CREATE_80042", "SELECT_OPTION_80060", "SELECT_OPTION_80075", "SELECT_OPTION_80076" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 80005, 80006, 80012 },
		regions = { },
		triggers = { "GADGET_CREATE_80013", "GADGET_STATE_CHANGE_80014", "GADGET_STATE_CHANGE_80015", "SELECT_OPTION_80016", "SELECT_OPTION_80017", "SELECT_OPTION_80018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_80013(context, evt)
	if 80012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002080, 80012, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80014(context, evt)
	if 80001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80014(context, evt)
	-- 将configid为 80005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80015(context, evt)
	if 80001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80015(context, evt)
	-- 将configid为 80005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80016(context, evt)
	-- 判断是gadgetid 80012 option_id 217
	if 80012 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80016(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 80005, 400200019, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80017(context, evt)
	-- 判断是gadgetid 80012 option_id 218
	if 80012 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80017(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 80005, 400200019, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80018(context, evt)
	-- 判断是gadgetid 80012 option_id 219
	if 80012 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80018(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 80005, 400200019, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_80021(context, evt)
	if 80022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002080, 80022, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80023(context, evt)
	-- 判断是gadgetid 80022 option_id 215
	if 80022 ~= evt.param1 then
		return false	
	end
	
	if 215 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80023(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 80003, 400200017, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 80004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80024(context, evt)
	-- 判断是gadgetid 80022 option_id 216
	if 80022 ~= evt.param1 then
		return false	
	end
	
	if 216 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80024(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 80003, 400200017, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 80004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_80031(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002080, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002080, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002080, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80032(context, evt)
	if 80001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80032(context, evt)
	-- 将configid为 80003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80033(context, evt)
	if 80001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80033(context, evt)
	-- 将configid为 80003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80037(context, evt)
	if 80001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80037(context, evt)
	-- 将configid为 80007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 80008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80008, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80038(context, evt)
	if 80001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80038(context, evt)
	-- 将configid为 80007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 80008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80040(context, evt)
	if 80001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80040(context, evt)
	-- 将configid为 80009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80041(context, evt)
	if 80001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80041(context, evt)
	-- 将configid为 80009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_80042(context, evt)
	if 80011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80042(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002080, 80011, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80060(context, evt)
	-- 判断是gadgetid 80011 option_id 217
	if 80011 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80060(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 80009, 400200018, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_80071(context, evt)
	if 80027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_80071(context, evt)
	-- 将configid为 80002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002080, 2)
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80072(context, evt)
	if 80002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80072(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002080, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80073(context, evt)
	if 80001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80073(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002080, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_80074(context, evt)
	if 80001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_80074(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002080, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80075(context, evt)
	-- 判断是gadgetid 80011 option_id 218
	if 80011 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80075(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 80009, 400200018, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80076(context, evt)
	-- 判断是gadgetid 80011 option_id 219
	if 80011 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80076(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 80009, 400200018, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end