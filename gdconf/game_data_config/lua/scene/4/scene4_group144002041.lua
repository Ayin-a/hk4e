-- 基础信息
local base_info = {
	group_id = 144002041
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
	{ config_id = 41001, gadget_id = 70360006, pos = { x = 446.047, y = 120.104, z = -355.361 }, rot = { x = 0.000, y = 338.631, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41002, gadget_id = 70211112, pos = { x = 396.586, y = 121.566, z = -410.921 }, rot = { x = 0.000, y = 338.631, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 41003, gadget_id = 70950079, pos = { x = 390.064, y = 123.962, z = -381.209 }, rot = { x = 0.000, y = 0.229, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 41004, gadget_id = 70350243, pos = { x = 390.064, y = 120.195, z = -381.209 }, rot = { x = 0.000, y = 178.665, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 41005, gadget_id = 70360001, pos = { x = 390.064, y = 120.195, z = -381.209 }, rot = { x = 0.000, y = 178.665, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41007, gadget_id = 70950079, pos = { x = 446.850, y = 124.702, z = -362.690 }, rot = { x = 0.000, y = 172.973, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 41008, gadget_id = 70350243, pos = { x = 447.071, y = 120.528, z = -362.634 }, rot = { x = 0.000, y = 111.051, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 41009, gadget_id = 70950079, pos = { x = 414.854, y = 124.483, z = -368.191 }, rot = { x = 0.000, y = 242.164, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 41010, gadget_id = 70350243, pos = { x = 414.854, y = 120.243, z = -368.191 }, rot = { x = 0.000, y = 178.665, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 41011, gadget_id = 70360001, pos = { x = 414.854, y = 120.243, z = -368.191 }, rot = { x = 0.000, y = 178.665, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41012, gadget_id = 70950077, pos = { x = 386.559, y = 125.000, z = -407.510 }, rot = { x = 0.000, y = 170.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 41013, gadget_id = 70350241, pos = { x = 386.559, y = 120.885, z = -407.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 41014, gadget_id = 70360001, pos = { x = 386.559, y = 120.885, z = -407.510 }, rot = { x = 6.421, y = 69.683, z = 358.391 }, level = 1, area_id = 101 },
	{ config_id = 41019, gadget_id = 70360001, pos = { x = 447.071, y = 120.528, z = -362.634 }, rot = { x = 6.421, y = 69.683, z = 358.391 }, level = 1, area_id = 101 },
	{ config_id = 41027, gadget_id = 70950074, pos = { x = 391.365, y = 125.000, z = -411.632 }, rot = { x = 0.000, y = 353.068, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 41048, gadget_id = 70350085, pos = { x = 391.365, y = 125.000, z = -411.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1041006, name = "GADGET_STATE_CHANGE_41006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41006", action = "action_EVENT_GADGET_STATE_CHANGE_41006", trigger_count = 0 },
	{ config_id = 1041015, name = "GADGET_STATE_CHANGE_41015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41015", action = "action_EVENT_GADGET_STATE_CHANGE_41015", trigger_count = 0 },
	{ config_id = 1041016, name = "GADGET_CREATE_41016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_41016", action = "action_EVENT_GADGET_CREATE_41016", trigger_count = 0 },
	{ config_id = 1041018, name = "SELECT_OPTION_41018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41018", action = "action_EVENT_SELECT_OPTION_41018", trigger_count = 0 },
	{ config_id = 1041020, name = "GADGET_CREATE_41020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_41020", action = "action_EVENT_GADGET_CREATE_41020", trigger_count = 0 },
	{ config_id = 1041021, name = "SELECT_OPTION_41021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41021", action = "action_EVENT_SELECT_OPTION_41021", trigger_count = 0 },
	{ config_id = 1041022, name = "SELECT_OPTION_41022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41022", action = "action_EVENT_SELECT_OPTION_41022", trigger_count = 0 },
	{ config_id = 1041023, name = "SELECT_OPTION_41023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41023", action = "action_EVENT_SELECT_OPTION_41023", trigger_count = 0 },
	{ config_id = 1041024, name = "VARIABLE_CHANGE_41024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41024", action = "action_EVENT_VARIABLE_CHANGE_41024", trigger_count = 0 },
	{ config_id = 1041025, name = "SELECT_OPTION_41025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41025", action = "action_EVENT_SELECT_OPTION_41025", trigger_count = 0 },
	{ config_id = 1041026, name = "SELECT_OPTION_41026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41026", action = "action_EVENT_SELECT_OPTION_41026", trigger_count = 0 },
	{ config_id = 1041028, name = "SELECT_OPTION_41028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41028", action = "action_EVENT_SELECT_OPTION_41028", trigger_count = 0 },
	{ config_id = 1041029, name = "GROUP_LOAD_41029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_41029", trigger_count = 0 },
	{ config_id = 1041030, name = "SELECT_OPTION_41030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41030", action = "action_EVENT_SELECT_OPTION_41030", trigger_count = 0 },
	{ config_id = 1041031, name = "VARIABLE_CHANGE_41031", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41031", action = "action_EVENT_VARIABLE_CHANGE_41031", trigger_count = 0 },
	{ config_id = 1041032, name = "SELECT_OPTION_41032", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41032", action = "action_EVENT_SELECT_OPTION_41032", trigger_count = 0 },
	{ config_id = 1041033, name = "SELECT_OPTION_41033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41033", action = "action_EVENT_SELECT_OPTION_41033", trigger_count = 0 },
	{ config_id = 1041034, name = "SELECT_OPTION_41034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41034", action = "action_EVENT_SELECT_OPTION_41034", trigger_count = 0 },
	{ config_id = 1041035, name = "GADGET_STATE_CHANGE_41035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41035", action = "action_EVENT_GADGET_STATE_CHANGE_41035", trigger_count = 0 },
	{ config_id = 1041036, name = "GADGET_STATE_CHANGE_41036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41036", action = "action_EVENT_GADGET_STATE_CHANGE_41036", trigger_count = 0 },
	{ config_id = 1041037, name = "SELECT_OPTION_41037", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41037", action = "action_EVENT_SELECT_OPTION_41037", trigger_count = 0 },
	{ config_id = 1041038, name = "GADGET_STATE_CHANGE_41038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41038", action = "action_EVENT_GADGET_STATE_CHANGE_41038", trigger_count = 0 },
	{ config_id = 1041039, name = "GADGET_STATE_CHANGE_41039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41039", action = "action_EVENT_GADGET_STATE_CHANGE_41039", trigger_count = 0 },
	{ config_id = 1041040, name = "GADGET_CREATE_41040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_41040", action = "action_EVENT_GADGET_CREATE_41040", trigger_count = 0 },
	{ config_id = 1041041, name = "GADGET_STATE_CHANGE_41041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41041", action = "action_EVENT_GADGET_STATE_CHANGE_41041", trigger_count = 0 },
	{ config_id = 1041042, name = "GADGET_STATE_CHANGE_41042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41042", action = "action_EVENT_GADGET_STATE_CHANGE_41042", trigger_count = 0 },
	{ config_id = 1041043, name = "GADGET_CREATE_41043", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_41043", action = "action_EVENT_GADGET_CREATE_41043", trigger_count = 0 },
	{ config_id = 1041044, name = "SELECT_OPTION_41044", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41044", action = "action_EVENT_SELECT_OPTION_41044", trigger_count = 0 },
	{ config_id = 1041045, name = "SELECT_OPTION_41045", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41045", action = "action_EVENT_SELECT_OPTION_41045", trigger_count = 0 },
	{ config_id = 1041046, name = "SELECT_OPTION_41046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41046", action = "action_EVENT_SELECT_OPTION_41046", trigger_count = 0 },
	{ config_id = 1041047, name = "VARIABLE_CHANGE_41047", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41047", action = "action_EVENT_VARIABLE_CHANGE_41047", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1041062, name = "ANY_GADGET_DIE_41062", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_41062", action = "action_EVENT_ANY_GADGET_DIE_41062", trigger_count = 0 },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1041063, name = "GADGET_STATE_CHANGE_41063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41063", action = "action_EVENT_GADGET_STATE_CHANGE_41063", trigger_count = 0 },
	{ config_id = 1041064, name = "GADGET_STATE_CHANGE_41064", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41064", action = "action_EVENT_GADGET_STATE_CHANGE_41064", trigger_count = 0 },
	{ config_id = 1041065, name = "GADGET_STATE_CHANGE_41065", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41065", action = "action_EVENT_GADGET_STATE_CHANGE_41065", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "turncount1", value = 0, no_refresh = false },
	{ config_id = 5, name = "turncount2", value = 0, no_refresh = false },
	{ config_id = 6, name = "turncount3", value = 0, no_refresh = false }
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
		gadgets = { 41001, 41002, 41027 },
		regions = { },
		triggers = { "GROUP_LOAD_41029", "ANY_GADGET_DIE_41062", "GADGET_STATE_CHANGE_41063", "GADGET_STATE_CHANGE_41064", "GADGET_STATE_CHANGE_41065" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [加载羽球元素靶标&判定玩法成功],
		monsters = { },
		gadgets = { 41048 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [加载羽球元素靶标&判定玩法成功的方法2],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
		-- description = [加载自转的元素台座（风）],
		monsters = { },
		gadgets = { 41007, 41008, 41019 },
		regions = { },
		triggers = { "SELECT_OPTION_41018", "GADGET_CREATE_41020", "SELECT_OPTION_41021", "SELECT_OPTION_41022", "SELECT_OPTION_41023", "VARIABLE_CHANGE_41024", "GADGET_STATE_CHANGE_41035", "GADGET_STATE_CHANGE_41036" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 41009, 41010, 41011 },
		regions = { },
		triggers = { "SELECT_OPTION_41025", "SELECT_OPTION_41026", "SELECT_OPTION_41028", "SELECT_OPTION_41030", "VARIABLE_CHANGE_41031", "GADGET_STATE_CHANGE_41038", "GADGET_STATE_CHANGE_41039", "GADGET_CREATE_41040" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载可以调整其左右位置的元素台座],
		monsters = { },
		gadgets = { 41012, 41013, 41014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_41041", "GADGET_STATE_CHANGE_41042", "GADGET_CREATE_41043", "SELECT_OPTION_41044", "SELECT_OPTION_41045", "SELECT_OPTION_41046" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 41003, 41004, 41005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_41006", "GADGET_STATE_CHANGE_41015", "GADGET_CREATE_41016", "SELECT_OPTION_41032", "SELECT_OPTION_41033", "SELECT_OPTION_41034", "SELECT_OPTION_41037", "VARIABLE_CHANGE_41047" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41006(context, evt)
	if 41001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41006(context, evt)
	-- 将configid为 41003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41015(context, evt)
	if 41001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41015(context, evt)
	-- 将configid为 41003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_41016(context, evt)
	if 41005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_41016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002041, 41005, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_41018(context, evt)
	-- 判断是gadgetid 41019 option_id 211
	if 41019 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_41018(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41007, 400200005, {1}, tempParam) then
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
function condition_EVENT_GADGET_CREATE_41020(context, evt)
	if 41019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_41020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002041, 41019, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_41021(context, evt)
	-- 判断是gadgetid 41019 option_id 211
	if 41019 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_41021(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41007, 400200005, {2}, tempParam) then
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
function condition_EVENT_SELECT_OPTION_41022(context, evt)
	-- 判断是gadgetid 41019 option_id 211
	if 41019 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_41022(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41007, 400200005, {3}, tempParam) then
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
function condition_EVENT_SELECT_OPTION_41023(context, evt)
	-- 判断是gadgetid 41019 option_id 211
	if 41019 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_41023(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41007, 400200005, {4}, tempParam) then
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
function condition_EVENT_VARIABLE_CHANGE_41024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount1"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount1") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41024(context, evt)
	-- 变量"turncount1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_41025(context, evt)
	-- 判断是gadgetid 41011 option_id 211
	if 41011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_41025(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41009, 400200009, {1}, tempParam) then
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
function condition_EVENT_SELECT_OPTION_41026(context, evt)
	-- 判断是gadgetid 41011 option_id 211
	if 41011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_41026(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41009, 400200009, {2}, tempParam) then
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
function condition_EVENT_SELECT_OPTION_41028(context, evt)
	-- 判断是gadgetid 41011 option_id 211
	if 41011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_41028(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41009, 400200009, {3}, tempParam) then
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

-- 触发操作
function action_EVENT_GROUP_LOAD_41029(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002041, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002041, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002041, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002041, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_41030(context, evt)
	-- 判断是gadgetid 41011 option_id 211
	if 41011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_41030(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41009, 400200009, {4}, tempParam) then
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
function condition_EVENT_VARIABLE_CHANGE_41031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount1"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount2") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41031(context, evt)
	-- 变量"turncount2"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount2", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_41032(context, evt)
	-- 判断是gadgetid 41005 option_id 211
	if 41005 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount3"为0
	if ScriptLib.GetGroupVariableValue(context, "turncount3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_41032(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41003, 400200010, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_41033(context, evt)
	-- 判断是gadgetid 41005 option_id 211
	if 41005 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount3"为1
	if ScriptLib.GetGroupVariableValue(context, "turncount3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_41033(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41003, 400200010, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_41034(context, evt)
	-- 判断是gadgetid 41005 option_id 211
	if 41005 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount3"为2
	if ScriptLib.GetGroupVariableValue(context, "turncount3") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_41034(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41003, 400200010, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41035(context, evt)
	if 41001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41035(context, evt)
	-- 将configid为 41007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41036(context, evt)
	if 41001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41036(context, evt)
	-- 将configid为 41007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_41037(context, evt)
	-- 判断是gadgetid 41005 option_id 211
	if 41005 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount3"为3
	if ScriptLib.GetGroupVariableValue(context, "turncount3") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_41037(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41003, 400200010, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41038(context, evt)
	if 41001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41038(context, evt)
	-- 将configid为 41009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41039(context, evt)
	if 41001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41039(context, evt)
	-- 将configid为 41009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_41040(context, evt)
	if 41011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_41040(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002041, 41011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41041(context, evt)
	if 41001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41041(context, evt)
	-- 将configid为 41012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41042(context, evt)
	if 41001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41042(context, evt)
	-- 将configid为 41012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_41043(context, evt)
	if 41014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_41043(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002041, 41014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_41044(context, evt)
	-- 判断是gadgetid 41014 option_id 217
	if 41014 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_41044(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41012, 400200011, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_41045(context, evt)
	-- 判断是gadgetid 41014 option_id 218
	if 41014 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_41045(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41012, 400200011, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_41046(context, evt)
	-- 判断是gadgetid 41014 option_id 219
	if 41014 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_41046(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 41012, 400200011, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_41047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount1"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount3") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41047(context, evt)
	-- 变量"turncount3"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount3", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_41062(context, evt)
	if 41027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_41062(context, evt)
	-- 将configid为 41002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002041, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41063(context, evt)
	if 41002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41063(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002041, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41064(context, evt)
	if 41001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41064(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002041, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41065(context, evt)
	if 41001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41065(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002041, 2)
	
	return 0
end