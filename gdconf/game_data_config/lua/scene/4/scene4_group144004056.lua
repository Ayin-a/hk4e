-- 基础信息
local base_info = {
	group_id = 144004056
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
	{ config_id = 56001, gadget_id = 70360006, pos = { x = -703.076, y = 121.465, z = -91.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 56002, gadget_id = 70211102, pos = { x = -706.540, y = 121.876, z = -102.807 }, rot = { x = 0.000, y = 358.810, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 56003, gadget_id = 70950076, pos = { x = -708.659, y = 125.900, z = -95.771 }, rot = { x = 0.000, y = 347.100, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 56004, gadget_id = 70350240, pos = { x = -708.685, y = 121.540, z = -95.781 }, rot = { x = 0.000, y = 67.550, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 56005, gadget_id = 70950079, pos = { x = -717.980, y = 125.489, z = -89.730 }, rot = { x = 0.000, y = 75.444, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 56006, gadget_id = 70350243, pos = { x = -717.980, y = 121.495, z = -89.730 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
	{ config_id = 56007, gadget_id = 70360001, pos = { x = -717.980, y = 121.495, z = -89.730 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 56008, gadget_id = 70950079, pos = { x = -699.550, y = 125.357, z = -98.110 }, rot = { x = 0.000, y = 113.897, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 56009, gadget_id = 70350243, pos = { x = -699.550, y = 121.516, z = -98.110 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 103 },
	{ config_id = 56010, gadget_id = 70360001, pos = { x = -699.550, y = 121.516, z = -98.110 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 56019, gadget_id = 70950073, pos = { x = -715.225, y = 124.905, z = -97.536 }, rot = { x = 0.000, y = 159.468, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 56020, gadget_id = 70360001, pos = { x = -708.685, y = 121.540, z = -95.781 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 56022, gadget_id = 70350085, pos = { x = -715.225, y = 124.905, z = -97.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1056023, name = "SELECT_OPTION_56023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_56023", action = "action_EVENT_SELECT_OPTION_56023", trigger_count = 0 },
	{ config_id = 1056024, name = "GADGET_STATE_CHANGE_56024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56024", action = "action_EVENT_GADGET_STATE_CHANGE_56024", trigger_count = 0 },
	{ config_id = 1056025, name = "GADGET_STATE_CHANGE_56025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56025", action = "action_EVENT_GADGET_STATE_CHANGE_56025", trigger_count = 0 },
	{ config_id = 1056026, name = "GADGET_CREATE_56026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_56026", action = "action_EVENT_GADGET_CREATE_56026", trigger_count = 0 },
	{ config_id = 1056031, name = "SELECT_OPTION_56031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_56031", action = "action_EVENT_SELECT_OPTION_56031", trigger_count = 0 },
	{ config_id = 1056032, name = "GROUP_LOAD_56032", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_56032", trigger_count = 0 },
	{ config_id = 1056033, name = "GADGET_STATE_CHANGE_56033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56033", action = "action_EVENT_GADGET_STATE_CHANGE_56033", trigger_count = 0 },
	{ config_id = 1056034, name = "GADGET_STATE_CHANGE_56034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56034", action = "action_EVENT_GADGET_STATE_CHANGE_56034", trigger_count = 0 },
	{ config_id = 1056035, name = "SELECT_OPTION_56035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_56035", action = "action_EVENT_SELECT_OPTION_56035", trigger_count = 0 },
	{ config_id = 1056036, name = "SELECT_OPTION_56036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_56036", action = "action_EVENT_SELECT_OPTION_56036", trigger_count = 0 },
	{ config_id = 1056038, name = "SELECT_OPTION_56038", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_56038", action = "action_EVENT_SELECT_OPTION_56038", trigger_count = 0 },
	{ config_id = 1056039, name = "VARIABLE_CHANGE_56039", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_56039", action = "action_EVENT_VARIABLE_CHANGE_56039", trigger_count = 0 },
	{ config_id = 1056041, name = "GADGET_STATE_CHANGE_56041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56041", action = "action_EVENT_GADGET_STATE_CHANGE_56041", trigger_count = 0 },
	{ config_id = 1056042, name = "GADGET_STATE_CHANGE_56042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56042", action = "action_EVENT_GADGET_STATE_CHANGE_56042", trigger_count = 0 },
	{ config_id = 1056043, name = "GADGET_CREATE_56043", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_56043", action = "action_EVENT_GADGET_CREATE_56043", trigger_count = 0 },
	{ config_id = 1056045, name = "SELECT_OPTION_56045", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_56045", action = "action_EVENT_SELECT_OPTION_56045", trigger_count = 0 },
	{ config_id = 1056046, name = "SELECT_OPTION_56046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_56046", action = "action_EVENT_SELECT_OPTION_56046", trigger_count = 0 },
	{ config_id = 1056047, name = "SELECT_OPTION_56047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_56047", action = "action_EVENT_SELECT_OPTION_56047", trigger_count = 0 },
	{ config_id = 1056048, name = "VARIABLE_CHANGE_56048", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_56048", action = "action_EVENT_VARIABLE_CHANGE_56048", trigger_count = 0 },
	{ config_id = 1056061, name = "ANY_GADGET_DIE_56061", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_56061", action = "action_EVENT_ANY_GADGET_DIE_56061" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1056064, name = "GADGET_STATE_CHANGE_56064", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56064", action = "action_EVENT_GADGET_STATE_CHANGE_56064" },
	{ config_id = 1056065, name = "GADGET_STATE_CHANGE_56065", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56065", action = "action_EVENT_GADGET_STATE_CHANGE_56065", trigger_count = 0 },
	{ config_id = 1056066, name = "GADGET_STATE_CHANGE_56066", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56066", action = "action_EVENT_GADGET_STATE_CHANGE_56066", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "killedHoops", value = 0, no_refresh = false },
	{ config_id = 5, name = "turncount1", value = 0, no_refresh = false },
	{ config_id = 6, name = "turncount2", value = 0, no_refresh = false },
	{ config_id = 7, name = "turncount3", value = 0, no_refresh = false },
	{ config_id = 8, name = "done", value = 0, no_refresh = false }
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
		gadgets = { 56001, 56002, 56019 },
		regions = { },
		triggers = { "GROUP_LOAD_56032", "ANY_GADGET_DIE_56061", "GADGET_STATE_CHANGE_56064", "GADGET_STATE_CHANGE_56065", "GADGET_STATE_CHANGE_56066" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [羽球元素靶标],
		monsters = { },
		gadgets = { 56022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [加载固定位置的元素台座],
		monsters = { },
		gadgets = { 56003, 56004, 56020 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_56033", "GADGET_STATE_CHANGE_56034" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 56008, 56009, 56010 },
		regions = { },
		triggers = { "SELECT_OPTION_56031", "SELECT_OPTION_56035", "SELECT_OPTION_56036", "SELECT_OPTION_56038", "VARIABLE_CHANGE_56039", "GADGET_STATE_CHANGE_56041", "GADGET_STATE_CHANGE_56042", "GADGET_CREATE_56043" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 56005, 56006, 56007 },
		regions = { },
		triggers = { "SELECT_OPTION_56023", "GADGET_STATE_CHANGE_56024", "GADGET_STATE_CHANGE_56025", "GADGET_CREATE_56026", "SELECT_OPTION_56045", "SELECT_OPTION_56046", "SELECT_OPTION_56047", "VARIABLE_CHANGE_56048" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
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
function condition_EVENT_SELECT_OPTION_56023(context, evt)
	-- 判断是gadgetid 56007 option_id 211
	if 56007 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount2"为0
	if ScriptLib.GetGroupVariableValue(context, "turncount2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_56023(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 56005, 400400004, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56024(context, evt)
	if 56001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56024(context, evt)
	-- 将configid为 56005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56025(context, evt)
	if 56001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56025(context, evt)
	-- 将configid为 56005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_56026(context, evt)
	if 56007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_56026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004056, 56007, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_56031(context, evt)
	-- 判断是gadgetid 56010 option_id 211
	if 56010 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为0
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_56031(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 56008, 400400003, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_56032(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004056, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004056, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004056, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004056, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56033(context, evt)
	if 56001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56033(context, evt)
	-- 将configid为 56003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 56004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56034(context, evt)
	if 56001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56034(context, evt)
	-- 将configid为 56003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 56004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_56035(context, evt)
	-- 判断是gadgetid 56010 option_id 211
	if 56010 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为1
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_56035(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 56008, 400400003, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_56036(context, evt)
	-- 判断是gadgetid 56010 option_id 211
	if 56010 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为2
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_56036(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 56008, 400400003, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_56038(context, evt)
	-- 判断是gadgetid 56010 option_id 211
	if 56010 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为3
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_56038(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 56008, 400400003, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_56039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount1"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount1") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_56039(context, evt)
	-- 变量"turncount1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56041(context, evt)
	if 56001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56041(context, evt)
	-- 将configid为 56008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56042(context, evt)
	if 56001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56042(context, evt)
	-- 将configid为 56008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_56043(context, evt)
	if 56010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_56043(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004056, 56010, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_56045(context, evt)
	-- 判断是gadgetid 56007 option_id 211
	if 56007 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount2"为1
	if ScriptLib.GetGroupVariableValue(context, "turncount2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_56045(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 56005, 400400004, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_56046(context, evt)
	-- 判断是gadgetid 56007 option_id 211
	if 56007 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount2"为2
	if ScriptLib.GetGroupVariableValue(context, "turncount2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_56046(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 56005, 400400004, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_56047(context, evt)
	-- 判断是gadgetid 56007 option_id 211
	if 56007 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount2"为3
	if ScriptLib.GetGroupVariableValue(context, "turncount2") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_56047(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 56005, 400400004, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_56048(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount1"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount2") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_56048(context, evt)
	-- 变量"turncount2"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount2", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_56061(context, evt)
	if 56019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_56061(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004056, 2)
	
	-- 将configid为 56002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56064(context, evt)
	if 56002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56064(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004056, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "done", 1, 144004079) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56065(context, evt)
	if 56001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56065(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004056, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56066(context, evt)
	if 56001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56066(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004056, 2)
	
	return 0
end