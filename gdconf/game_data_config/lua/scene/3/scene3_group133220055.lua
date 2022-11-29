-- 基础信息
local base_info = {
	group_id = 133220055
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
	{ config_id = 55001, gadget_id = 70330064, pos = { x = -2354.582, y = 191.646, z = -4248.278 }, rot = { x = 320.716, y = 264.967, z = 5.662 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 55002, gadget_id = 70290104, pos = { x = -2340.931, y = 198.068, z = -4247.715 }, rot = { x = 0.000, y = 66.000, z = 180.000 }, level = 27, area_id = 11 },
	{ config_id = 55003, gadget_id = 70211001, pos = { x = -2338.988, y = 211.197, z = -4249.082 }, rot = { x = 349.367, y = 26.556, z = 353.832 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 55004, gadget_id = 70900380, pos = { x = -2326.405, y = 231.309, z = -4256.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 55006, gadget_id = 70350279, pos = { x = -2326.630, y = 219.456, z = -4256.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 55011, gadget_id = 70330064, pos = { x = -2361.226, y = 190.820, z = -4235.170 }, rot = { x = 0.000, y = 31.412, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 55012, gadget_id = 70350081, pos = { x = -2331.309, y = 221.553, z = -4256.337 }, rot = { x = 351.349, y = 36.688, z = 305.721 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 55013, gadget_id = 70211131, pos = { x = -2350.221, y = 190.638, z = -4251.515 }, rot = { x = 0.000, y = 62.561, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 55015, gadget_id = 70211001, pos = { x = -2365.128, y = 190.760, z = -4229.783 }, rot = { x = 0.000, y = 65.145, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 55021, gadget_id = 70350081, pos = { x = -2323.859, y = 220.745, z = -4260.547 }, rot = { x = 349.516, y = 273.671, z = 305.377 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 55022, gadget_id = 70350081, pos = { x = -2322.654, y = 221.441, z = -4254.385 }, rot = { x = 350.740, y = 179.081, z = 307.060 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 55023, gadget_id = 70330092, pos = { x = -2329.665, y = 219.933, z = -4256.890 }, rot = { x = 0.000, y = 87.495, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 55024, gadget_id = 70330092, pos = { x = -2324.335, y = 219.897, z = -4254.969 }, rot = { x = 0.331, y = 237.207, z = 359.319 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 55025, gadget_id = 70330092, pos = { x = -2324.399, y = 219.866, z = -4258.868 }, rot = { x = 0.512, y = 320.064, z = 359.436 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 55028, gadget_id = 70330064, pos = { x = -2328.337, y = 220.578, z = -4261.026 }, rot = { x = 303.182, y = 238.919, z = 328.895 }, level = 27, interact_id = 35, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1055007, name = "GROUP_LOAD_55007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_55007", action = "action_EVENT_GROUP_LOAD_55007", trigger_count = 0 },
	{ config_id = 1055014, name = "GADGET_CREATE_55014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_55014", action = "action_EVENT_GADGET_CREATE_55014", trigger_count = 0 },
	{ config_id = 1055026, name = "GADGET_CREATE_55026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_55026", action = "action_EVENT_GADGET_CREATE_55026", trigger_count = 0 },
	{ config_id = 1055027, name = "GADGET_CREATE_55027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_55027", action = "action_EVENT_GADGET_CREATE_55027", trigger_count = 0 },
	-- 1
	{ config_id = 1055029, name = "SELECT_OPTION_55029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_55029", action = "action_EVENT_SELECT_OPTION_55029", trigger_count = 0 },
	-- 2
	{ config_id = 1055030, name = "SELECT_OPTION_55030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_55030", action = "action_EVENT_SELECT_OPTION_55030", trigger_count = 0 },
	-- 3
	{ config_id = 1055031, name = "SELECT_OPTION_55031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_55031", action = "action_EVENT_SELECT_OPTION_55031", trigger_count = 0 },
	{ config_id = 1055032, name = "VARIABLE_CHANGE_55032", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_55032", action = "action_EVENT_VARIABLE_CHANGE_55032", trigger_count = 0 },
	-- 拍照创生机关1
	{ config_id = 1055033, name = "USE_WIDGET_TOY_FOX_CAMERA_55033", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55033", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55033", trigger_count = 0 },
	-- 拍照创生机关2
	{ config_id = 1055034, name = "USE_WIDGET_TOY_FOX_CAMERA_55034", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55034", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55034", trigger_count = 0 },
	-- 拍照创生机关3
	{ config_id = 1055035, name = "USE_WIDGET_TOY_FOX_CAMERA_55035", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55035", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55035", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true },
	{ config_id = 2, name = "open1", value = 0, no_refresh = true },
	{ config_id = 3, name = "open2", value = 0, no_refresh = true },
	{ config_id = 4, name = "open3", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 55016, gadget_id = 70211001, pos = { x = -2296.672, y = 206.393, z = -4279.382 }, rot = { x = 359.719, y = 126.060, z = 359.426 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
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
		-- description = ,
		monsters = { },
		gadgets = { 55001, 55002, 55003, 55004, 55006, 55011, 55013, 55015, 55023, 55024, 55025, 55028 },
		regions = { },
		triggers = { "GROUP_LOAD_55007", "GADGET_CREATE_55014", "GADGET_CREATE_55026", "GADGET_CREATE_55027", "SELECT_OPTION_55029", "SELECT_OPTION_55030", "SELECT_OPTION_55031", "VARIABLE_CHANGE_55032", "USE_WIDGET_TOY_FOX_CAMERA_55033", "USE_WIDGET_TOY_FOX_CAMERA_55034", "USE_WIDGET_TOY_FOX_CAMERA_55035" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_55007(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_55007(context, evt)
	-- 将configid为 55006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_55014(context, evt)
	if 55012 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"open1"为0
	if ScriptLib.GetGroupVariableValue(context, "open1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_55014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {214}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_55026(context, evt)
	if 55021 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"open2"为0
	if ScriptLib.GetGroupVariableValue(context, "open2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_55026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {214}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_55027(context, evt)
	if 55022 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"open3"为0
	if ScriptLib.GetGroupVariableValue(context, "open3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_55027(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {214}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_55029(context, evt)
	-- 判断是gadgetid 55012 option_id 214
	if 55012 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_55029(context, evt)
	-- 删除指定group： 133220055 ；指定config：55012；物件身上指定option：214；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220055, 55012, 214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "open1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "open1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 55012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_55030(context, evt)
	-- 判断是gadgetid 55021 option_id 214
	if 55021 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_55030(context, evt)
	-- 删除指定group： 133220055 ；指定config：55021；物件身上指定option：214；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220055, 55021, 214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "open2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "open2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 55021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_55031(context, evt)
	-- 判断是gadgetid 55022 option_id 214
	if 55022 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_55031(context, evt)
	-- 删除指定group： 133220055 ；指定config：55022；物件身上指定option：214；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220055, 55022, 214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "open3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "open3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 55022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_55032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_55032(context, evt)
	-- 将configid为 55006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55033(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==55023 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55033(context, evt)
	-- 创建id为55012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 55012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 55023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55034(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==55024 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55034(context, evt)
	-- 创建id为55022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 55022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 55024 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55024, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55035(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==55025 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_55035(context, evt)
	-- 创建id为55021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 55021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 55025 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55025, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/ElectricCore"