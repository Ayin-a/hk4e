-- 基础信息
local base_info = {
	group_id = 133301215
}

-- Trigger变量
local defs = {
	group_id = 133301215,
	gadget_riddle_hint = 215001,
	gadget_riddle_1 = 215002,
	gadget_riddle_2 = 215003,
	gadget_riddle_3 = 215004,
	gadget_riddle_4 = 215005,
	gadget_chest = 215007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 215018, monster_id = 24020101, pos = { x = -592.282, y = 165.102, z = 3353.599 }, rot = { x = 0.000, y = 82.698, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 101, area_id = 22 },
	{ config_id = 215019, monster_id = 24020301, pos = { x = -581.580, y = 164.926, z = 3350.323 }, rot = { x = 0.000, y = 18.765, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 215001, gadget_id = 70310012, pos = { x = -751.022, y = 137.133, z = 3407.323 }, rot = { x = 0.000, y = 355.477, z = 0.000 }, level = 27, persistent = true, area_id = 23 },
	{ config_id = 215002, gadget_id = 70900050, pos = { x = -798.606, y = 145.656, z = 3380.189 }, rot = { x = 359.490, y = 334.160, z = 354.090 }, level = 27, persistent = true, area_id = 23 },
	{ config_id = 215003, gadget_id = 70900050, pos = { x = -734.531, y = 142.507, z = 3413.177 }, rot = { x = 0.000, y = 310.577, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 23 },
	{ config_id = 215004, gadget_id = 70900050, pos = { x = -744.073, y = 132.418, z = 3452.182 }, rot = { x = 0.000, y = 70.567, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 23 },
	{ config_id = 215005, gadget_id = 70900050, pos = { x = -761.265, y = 135.667, z = 3369.071 }, rot = { x = 0.772, y = 83.744, z = 2.599 }, level = 27, persistent = true, area_id = 23 },
	{ config_id = 215006, gadget_id = 70211112, pos = { x = -764.768, y = 103.761, z = 3402.985 }, rot = { x = 0.000, y = 221.168, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 215007, gadget_id = 70350081, pos = { x = -750.945, y = 137.582, z = 3407.350 }, rot = { x = 0.000, y = 133.867, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 23 },
	{ config_id = 215008, gadget_id = 70330246, pos = { x = -793.262, y = 144.208, z = 3382.456 }, rot = { x = 353.717, y = 67.616, z = 2.893 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 215020, gadget_id = 70290597, pos = { x = -608.675, y = 144.076, z = 3569.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, route_id = 330100047, start_route = false, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 22 },
	{ config_id = 215022, gadget_id = 70350081, pos = { x = -586.587, y = 165.155, z = 3359.220 }, rot = { x = 1.408, y = 93.997, z = 355.719 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 22 },
	{ config_id = 215027, gadget_id = 70330220, pos = { x = -792.668, y = 145.388, z = 3373.913 }, rot = { x = 0.000, y = 52.558, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 215031, gadget_id = 70330219, pos = { x = -744.367, y = 131.903, z = 3452.029 }, rot = { x = 353.359, y = 152.216, z = 1.048 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 215032, gadget_id = 70330219, pos = { x = -734.294, y = 142.185, z = 3413.269 }, rot = { x = 2.675, y = 293.559, z = 5.509 }, level = 33, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 魔改了一下它的Action，让方碑变成default时计数不减一
	{ config_id = 1215009, name = "GADGET_STATE_CHANGE_215009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_215009", action = "action_EVENT_GADGET_STATE_CHANGE_215009", trigger_count = 0 },
	-- 魔改了一下defs的ID，让这个trigger成功时解锁交互机关
	{ config_id = 1215010, name = "VARIABLE_CHANGE_215010", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_215010", action = "action_EVENT_VARIABLE_CHANGE_215010", trigger_count = 0 },
	{ config_id = 1215011, name = "GROUP_LOAD_215011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_215011", trigger_count = 0 },
	-- 保底，如果通用交互机关解锁了，就给它上操作台
	{ config_id = 1215012, name = "GADGET_CREATE_215012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_215012", action = "action_EVENT_GADGET_CREATE_215012" },
	{ config_id = 1215013, name = "GADGET_STATE_CHANGE_215013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_215013", action = "action_EVENT_GADGET_STATE_CHANGE_215013", trigger_count = 0 },
	-- 第二次下降）因为保底的存在，需要在按了按钮后给交互机关GearStart
	{ config_id = 1215014, name = "SELECT_OPTION_215014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_215014", action = "action_EVENT_SELECT_OPTION_215014", trigger_count = 0 },
	-- 保底，如果变量对了了，就给操作台上操作台
	{ config_id = 1215015, name = "GROUP_LOAD_215015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_215015", action = "action_EVENT_GROUP_LOAD_215015", trigger_count = 0 },
	-- 保底，如果变量对了了，就开门、将底座全亮、然后解锁宝箱
	{ config_id = 1215016, name = "GROUP_LOAD_215016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_215016", action = "action_EVENT_GROUP_LOAD_215016", trigger_count = 0 },
	-- 玩法开门
	{ config_id = 1215017, name = "GADGET_STATE_CHANGE_215017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_215017", action = "action_EVENT_GADGET_STATE_CHANGE_215017", trigger_count = 0 },
	-- 第一次下降机关解锁
	{ config_id = 1215023, name = "ANY_MONSTER_DIE_215023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_215023", action = "action_EVENT_ANY_MONSTER_DIE_215023", trigger_count = 0 },
	-- 第一次下降机关上按钮
	{ config_id = 1215024, name = "GADGET_STATE_CHANGE_215024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_215024", action = "action_EVENT_GADGET_STATE_CHANGE_215024", trigger_count = 0 },
	-- 第一次下降按钮1
	{ config_id = 1215025, name = "SELECT_OPTION_215025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_215025", action = "action_EVENT_SELECT_OPTION_215025", trigger_count = 0 },
	-- 第一次下降保底
	{ config_id = 1215026, name = "GROUP_LOAD_215026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_215026", action = "action_EVENT_GROUP_LOAD_215026", trigger_count = 0 },
	-- 碎石2
	{ config_id = 1215033, name = "ANY_GADGET_DIE_215033", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_215033", action = "action_EVENT_ANY_GADGET_DIE_215033" },
	-- 碎石1
	{ config_id = 1215035, name = "ANY_GADGET_DIE_215035", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_215035", action = "action_EVENT_ANY_GADGET_DIE_215035" },
	-- 怪物死亡且没有交互按钮后重登保底
	{ config_id = 1215038, name = "GROUP_LOAD_215038", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_215038", action = "action_EVENT_GROUP_LOAD_215038", trigger_count = 0 },
	{ config_id = 1215039, name = "GROUP_LOAD_215039", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_215039", action = "action_EVENT_GROUP_LOAD_215039", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "isGearStart", value = 0, no_refresh = true },
	{ config_id = 3, name = "1stDown", value = 0, no_refresh = true },
	{ config_id = 4, name = "robotdie", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 215021, gadget_id = 70290598, pos = { x = -682.356, y = 144.076, z = 3389.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, route_id = 330100048, start_route = false, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 22 },
		{ config_id = 215028, gadget_id = 70290507, pos = { x = -794.169, y = 151.715, z = 3375.681 }, rot = { x = 314.090, y = 8.724, z = 325.194 }, level = 30, area_id = 23 },
		{ config_id = 215029, gadget_id = 70290507, pos = { x = -795.231, y = 150.122, z = 3371.661 }, rot = { x = 359.754, y = 338.744, z = 321.482 }, level = 30, area_id = 23 },
		{ config_id = 215030, gadget_id = 70290471, pos = { x = -621.068, y = 184.862, z = 3375.210 }, rot = { x = 0.000, y = 331.198, z = 0.000 }, level = 33, area_id = 22 }
	},
	regions = {
		{ config_id = 215034, shape = RegionShape.SPHERE, radius = 6, pos = { x = -571.101, y = 164.700, z = 3370.257 }, area_id = 22 }
	},
	triggers = {
		{ config_id = 1215034, name = "ENTER_REGION_215034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_215034", action = "action_EVENT_ENTER_REGION_215034", trigger_count = 0 },
		{ config_id = 1215036, name = "SELECT_OPTION_215036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_215036", action = "action_EVENT_SELECT_OPTION_215036", trigger_count = 0 },
		{ config_id = 1215037, name = "MONSTER_BATTLE_215037", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_215037", action = "action_EVENT_MONSTER_BATTLE_215037", trigger_count = 0 }
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
		monsters = { 215018, 215019 },
		gadgets = { 215001, 215002, 215003, 215004, 215005, 215007, 215008, 215020, 215022, 215027, 215031, 215032 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_215009", "VARIABLE_CHANGE_215010", "GROUP_LOAD_215011", "GADGET_CREATE_215012", "GADGET_STATE_CHANGE_215013", "SELECT_OPTION_215014", "GROUP_LOAD_215015", "GROUP_LOAD_215016", "GADGET_STATE_CHANGE_215017", "ANY_MONSTER_DIE_215023", "GADGET_STATE_CHANGE_215024", "SELECT_OPTION_215025", "GROUP_LOAD_215026", "ANY_GADGET_DIE_215033", "ANY_GADGET_DIE_215035", "GROUP_LOAD_215038", "GROUP_LOAD_215039" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_GADGET_STATE_CHANGE_215009(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_215009(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_215010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_215010(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_215011(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_215012(context, evt)
	if 215007 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_215012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301215, 215007, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_215013(context, evt)
	-- 检测config_id为215007的gadget是否从GadgetState.GearStop变为GadgetState.Default
	if 215007 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_215013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301215, 215007, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_215014(context, evt)
	-- 判断是gadgetid 215007 option_id 7
	if 215007 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_215014(context, evt)
	-- 将本组内变量名为 "isGearStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isGearStart", 1, 133301215) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "1stDown" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1stDown", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 215020, 330100049) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 215020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "camera", 1, 133301435) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为215006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 215006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除指定group： 133301215 ；指定config：215007；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133301215, 215007, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 215007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 215007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301524, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_215015(context, evt)
	-- 判断变量"isGearStart"为0
	if ScriptLib.GetGroupVariableValue(context, "isGearStart") ~= 0 then
			return false
	end
	
	-- 判断变量"State_Flag"为4
	if ScriptLib.GetGroupVariableValue(context, "State_Flag") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_215015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301215, 215007, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_215016(context, evt)
	-- 判断变量"isGearStart"为1
	if ScriptLib.GetGroupVariableValue(context, "isGearStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_215016(context, evt)
	-- 将本组内变量名为 "1stDown" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1stDown", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "camera", 1, 133301435) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为215006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 215006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 215022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 215022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 215007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 215007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "go" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "go", 1, 133301392) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除指定group： 133301215 ；指定config：215007；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133301215, 215007, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_215017(context, evt)
	if 215002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_215017(context, evt)
	-- 将configid为 215008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 215008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_215023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301215) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_215023(context, evt)
	-- 将本组内变量名为 "robotdie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "robotdie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 215022 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 215022, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_215024(context, evt)
	if 215022 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_215024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301215, 215022, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_215025(context, evt)
	-- 判断是gadgetid 215022 option_id 7
	if 215022 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_215025(context, evt)
	-- 将本组内变量名为 "1stDown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "1stDown", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 215020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "camera", 1, 133301695) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "go" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "go", 1, 133301392) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除指定group： 133301215 ；指定config：215022；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133301215, 215022, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 215022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 215022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_215026(context, evt)
	-- 判断变量"1stDown"为1
	if ScriptLib.GetGroupVariableValue(context, "1stDown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_215026(context, evt)
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "camera", 1, 133301695) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "go" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "go", 1, 133301392) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 215020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 删除指定group： 133301215 ；指定config：215022；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133301215, 215022, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 215022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 215022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_215033(context, evt)
	if 215032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_215033(context, evt)
	-- 将configid为 215003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 215003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_215035(context, evt)
	if 215031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_215035(context, evt)
	-- 将configid为 215004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 215004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_215038(context, evt)
	-- 判断变量"robotdie"为1
	if ScriptLib.GetGroupVariableValue(context, "robotdie") ~= 1 then
			return false
	end
	
	-- 判断变量"1stDown"为0
	if ScriptLib.GetGroupVariableValue(context, "1stDown") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_215038(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301215, 215022, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_215039(context, evt)
	-- 判断变量"isGearStart"为1
	if ScriptLib.GetGroupVariableValue(context, "isGearStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_215039(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301215, EntityType.GADGET, 215020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end