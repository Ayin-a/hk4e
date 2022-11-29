-- 基础信息
local base_info = {
	group_id = 144002081
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
	{ config_id = 81001, gadget_id = 70360006, pos = { x = 358.566, y = 120.039, z = -535.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 81002, gadget_id = 70211102, pos = { x = 364.208, y = 120.015, z = -537.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 81008, gadget_id = 70350085, pos = { x = 384.586, y = 124.000, z = -529.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 81009, gadget_id = 70950079, pos = { x = 367.802, y = 124.213, z = -528.570 }, rot = { x = 0.000, y = 8.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 81010, gadget_id = 70350243, pos = { x = 367.802, y = 120.299, z = -528.570 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 81011, gadget_id = 70360001, pos = { x = 367.802, y = 120.299, z = -528.570 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 81012, gadget_id = 70950077, pos = { x = 375.000, y = 124.000, z = -531.961 }, rot = { x = 0.000, y = 92.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 81013, gadget_id = 70350241, pos = { x = 374.930, y = 120.297, z = -531.947 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 81014, gadget_id = 70360001, pos = { x = 374.930, y = 120.297, z = -531.947 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 81015, gadget_id = 70950078, pos = { x = 380.354, y = 124.000, z = -528.752 }, rot = { x = 0.000, y = 278.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 81016, gadget_id = 70350242, pos = { x = 380.354, y = 120.493, z = -528.752 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 81017, gadget_id = 70360001, pos = { x = 380.354, y = 120.493, z = -528.752 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
	{ config_id = 81026, gadget_id = 70950074, pos = { x = 384.586, y = 124.000, z = -529.940 }, rot = { x = 0.000, y = 98.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1081003, name = "SELECT_OPTION_81003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_81003", action = "action_EVENT_SELECT_OPTION_81003", trigger_count = 0 },
	{ config_id = 1081004, name = "SELECT_OPTION_81004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_81004", action = "action_EVENT_SELECT_OPTION_81004", trigger_count = 0 },
	{ config_id = 1081005, name = "SELECT_OPTION_81005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_81005", action = "action_EVENT_SELECT_OPTION_81005", trigger_count = 0 },
	{ config_id = 1081006, name = "VARIABLE_CHANGE_81006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_81006", action = "action_EVENT_VARIABLE_CHANGE_81006", trigger_count = 0 },
	{ config_id = 1081007, name = "GADGET_STATE_CHANGE_81007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81007", action = "action_EVENT_GADGET_STATE_CHANGE_81007", trigger_count = 0 },
	{ config_id = 1081018, name = "GADGET_STATE_CHANGE_81018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81018", action = "action_EVENT_GADGET_STATE_CHANGE_81018", trigger_count = 0 },
	{ config_id = 1081029, name = "GROUP_LOAD_81029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_81029", trigger_count = 0 },
	{ config_id = 1081036, name = "GADGET_STATE_CHANGE_81036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81036", action = "action_EVENT_GADGET_STATE_CHANGE_81036", trigger_count = 0 },
	{ config_id = 1081037, name = "GADGET_STATE_CHANGE_81037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81037", action = "action_EVENT_GADGET_STATE_CHANGE_81037", trigger_count = 0 },
	{ config_id = 1081038, name = "GADGET_CREATE_81038", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_81038", action = "action_EVENT_GADGET_CREATE_81038", trigger_count = 0 },
	{ config_id = 1081039, name = "GADGET_STATE_CHANGE_81039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81039", action = "action_EVENT_GADGET_STATE_CHANGE_81039", trigger_count = 0 },
	{ config_id = 1081040, name = "GADGET_STATE_CHANGE_81040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81040", action = "action_EVENT_GADGET_STATE_CHANGE_81040", trigger_count = 0 },
	{ config_id = 1081041, name = "GADGET_CREATE_81041", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_81041", action = "action_EVENT_GADGET_CREATE_81041", trigger_count = 0 },
	{ config_id = 1081042, name = "SELECT_OPTION_81042", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_81042", action = "action_EVENT_SELECT_OPTION_81042", trigger_count = 0 },
	{ config_id = 1081043, name = "SELECT_OPTION_81043", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_81043", action = "action_EVENT_SELECT_OPTION_81043", trigger_count = 0 },
	{ config_id = 1081044, name = "SELECT_OPTION_81044", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_81044", action = "action_EVENT_SELECT_OPTION_81044", trigger_count = 0 },
	{ config_id = 1081045, name = "GADGET_STATE_CHANGE_81045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81045", action = "action_EVENT_GADGET_STATE_CHANGE_81045", trigger_count = 0 },
	{ config_id = 1081046, name = "GADGET_STATE_CHANGE_81046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81046", action = "action_EVENT_GADGET_STATE_CHANGE_81046", trigger_count = 0 },
	{ config_id = 1081047, name = "GADGET_CREATE_81047", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_81047", action = "action_EVENT_GADGET_CREATE_81047", trigger_count = 0 },
	{ config_id = 1081048, name = "SELECT_OPTION_81048", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_81048", action = "action_EVENT_SELECT_OPTION_81048", trigger_count = 0 },
	{ config_id = 1081049, name = "SELECT_OPTION_81049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_81049", action = "action_EVENT_SELECT_OPTION_81049", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1081060, name = "ANY_GADGET_DIE_81060", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_81060", action = "action_EVENT_ANY_GADGET_DIE_81060", trigger_count = 0 },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1081061, name = "GADGET_STATE_CHANGE_81061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81061", action = "action_EVENT_GADGET_STATE_CHANGE_81061", trigger_count = 0 },
	{ config_id = 1081064, name = "SELECT_OPTION_81064", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_81064", action = "action_EVENT_SELECT_OPTION_81064", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "triggercount", value = 0, no_refresh = false },
	{ config_id = 5, name = "done", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 6,
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
		gadgets = { 81001, 81002, 81026 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_81006", "GADGET_STATE_CHANGE_81007", "GADGET_STATE_CHANGE_81018", "GROUP_LOAD_81029", "ANY_GADGET_DIE_81060", "GADGET_STATE_CHANGE_81061" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [加载羽球元素靶标&判定玩法成功],
		monsters = { },
		gadgets = { 81008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 81009, 81010, 81011 },
		regions = { },
		triggers = { "SELECT_OPTION_81003", "SELECT_OPTION_81004", "SELECT_OPTION_81005", "GADGET_STATE_CHANGE_81036", "GADGET_STATE_CHANGE_81037", "GADGET_CREATE_81038", "SELECT_OPTION_81064" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [加载可以调整其左右位置的元素台座],
		monsters = { },
		gadgets = { 81012, 81013, 81014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_81039", "GADGET_STATE_CHANGE_81040", "GADGET_CREATE_81041", "SELECT_OPTION_81042", "SELECT_OPTION_81043", "SELECT_OPTION_81044" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载可以调整其上下位置的元素台座],
		monsters = { },
		gadgets = { 81015, 81016, 81017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_81045", "GADGET_STATE_CHANGE_81046", "GADGET_CREATE_81047", "SELECT_OPTION_81048", "SELECT_OPTION_81049" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载固定位置的分裂台座],
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
function condition_EVENT_SELECT_OPTION_81003(context, evt)
	-- 判断是gadgetid 81011 option_id 211
	if 81011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"triggercount"为1
	if ScriptLib.GetGroupVariableValue(context, "triggercount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_81003(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 81009, 400200006, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "triggercount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "triggercount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_81004(context, evt)
	-- 判断是gadgetid 81011 option_id 211
	if 81011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"triggercount"为2
	if ScriptLib.GetGroupVariableValue(context, "triggercount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_81004(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 81009, 400200006, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "triggercount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "triggercount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_81005(context, evt)
	-- 判断是gadgetid 81011 option_id 211
	if 81011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"triggercount"为3
	if ScriptLib.GetGroupVariableValue(context, "triggercount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_81005(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 81009, 400200006, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "triggercount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "triggercount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_81006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"triggercount"为4
	if ScriptLib.GetGroupVariableValue(context, "triggercount") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_81006(context, evt)
	-- 变量"triggercount"赋值为0
	ScriptLib.SetGroupVariableValue(context, "triggercount", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81007(context, evt)
	if 81001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002081, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81018(context, evt)
	if 81001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81018(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002081, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_81029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002081, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002081, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002081, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81036(context, evt)
	if 81001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81036(context, evt)
	-- 将configid为 81009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81037(context, evt)
	if 81001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81037(context, evt)
	-- 将configid为 81009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_81038(context, evt)
	if 81011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_81038(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002081, 81011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81039(context, evt)
	if 81001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81039(context, evt)
	-- 将configid为 81012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81040(context, evt)
	if 81001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81040(context, evt)
	-- 将configid为 81012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_81041(context, evt)
	if 81014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_81041(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002081, 81014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_81042(context, evt)
	-- 判断是gadgetid 81014 option_id 217
	if 81014 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_81042(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 81012, 400200007, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_81043(context, evt)
	-- 判断是gadgetid 81014 option_id 218
	if 81014 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_81043(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 81012, 400200007, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_81044(context, evt)
	-- 判断是gadgetid 81014 option_id 219
	if 81014 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_81044(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 81012, 400200007, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81045(context, evt)
	if 81001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81045(context, evt)
	-- 将configid为 81015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81046(context, evt)
	if 81001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81046(context, evt)
	-- 将configid为 81015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_81047(context, evt)
	if 81017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_81047(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002081, 81017, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_81048(context, evt)
	-- 判断是gadgetid 81017 option_id 215
	if 81017 ~= evt.param1 then
		return false	
	end
	
	if 215 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_81048(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 81015, 400200008, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 81016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_81049(context, evt)
	-- 判断是gadgetid 81017 option_id 216
	if 81017 ~= evt.param1 then
		return false	
	end
	
	if 216 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_81049(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 81015, 400200008, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 81016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81016, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_81060(context, evt)
	if 81026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_81060(context, evt)
	-- 将configid为 81002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002081, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81061(context, evt)
	if 81002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81061(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002081, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "done", 1, 144002036) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_81064(context, evt)
	-- 判断是gadgetid 81011 option_id 211
	if 81011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"triggercount"为0
	if ScriptLib.GetGroupVariableValue(context, "triggercount") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_81064(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 81009, 400200006, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "triggercount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "triggercount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end