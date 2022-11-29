-- 基础信息
local base_info = {
	group_id = 133222038
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
	-- 水上操作台
	{ config_id = 38001, gadget_id = 70360286, pos = { x = -4747.964, y = 201.866, z = -4269.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	-- 中间操作台
	{ config_id = 38002, gadget_id = 70360286, pos = { x = -4666.695, y = 162.929, z = -4270.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	-- 最后机关
	{ config_id = 38003, gadget_id = 70350081, pos = { x = -4676.757, y = 153.973, z = -4259.419 }, rot = { x = 0.000, y = 271.922, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	-- 水上机关
	{ config_id = 38004, gadget_id = 70350081, pos = { x = -4748.125, y = 200.333, z = -4269.966 }, rot = { x = 358.413, y = 157.415, z = 5.490 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	-- 第一
	{ config_id = 38005, gadget_id = 70380030, pos = { x = -4612.713, y = 200.000, z = -4134.688 }, rot = { x = 0.000, y = 337.076, z = 0.000 }, level = 30, start_route = false, persistent = true, area_id = 14 },
	-- 最后操作台
	{ config_id = 38010, gadget_id = 70360286, pos = { x = -4676.820, y = 155.572, z = -4259.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 38011, gadget_id = 70310075, pos = { x = -4674.644, y = 153.966, z = -4256.892 }, rot = { x = 0.000, y = 266.721, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	-- 中间机关
	{ config_id = 38013, gadget_id = 70350081, pos = { x = -4666.604, y = 161.266, z = -4270.619 }, rot = { x = 0.000, y = 114.582, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	-- 第二
	{ config_id = 38015, gadget_id = 70380030, pos = { x = -4612.713, y = 161.000, z = -4134.688 }, rot = { x = 0.000, y = 337.076, z = 0.000 }, level = 30, start_route = false, persistent = true, area_id = 14 },
	-- 第三
	{ config_id = 38016, gadget_id = 70380030, pos = { x = -4612.713, y = 119.500, z = -4134.688 }, rot = { x = 0.000, y = 337.076, z = 0.000 }, level = 30, start_route = false, persistent = true, area_id = 14 },
	-- 第四
	{ config_id = 38017, gadget_id = 70380030, pos = { x = -4612.713, y = 100.000, z = -4134.688 }, rot = { x = 0.000, y = 337.076, z = 0.000 }, level = 30, start_route = false, persistent = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 水上
	{ config_id = 1038006, name = "GADGET_STATE_CHANGE_38006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38006", action = "action_EVENT_GADGET_STATE_CHANGE_38006", trigger_count = 0 },
	-- 中间
	{ config_id = 1038007, name = "GADGET_STATE_CHANGE_38007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38007", action = "action_EVENT_GADGET_STATE_CHANGE_38007", trigger_count = 0 },
	-- 水上按钮
	{ config_id = 1038008, name = "SELECT_OPTION_38008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_38008", action = "action_EVENT_SELECT_OPTION_38008", trigger_count = 0 },
	-- 最后
	{ config_id = 1038009, name = "GADGET_STATE_CHANGE_38009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38009", action = "action_EVENT_GADGET_STATE_CHANGE_38009" },
	-- 最后按钮
	{ config_id = 1038012, name = "SELECT_OPTION_38012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_38012", action = "action_EVENT_SELECT_OPTION_38012", trigger_count = 0 },
	-- 中间按钮
	{ config_id = 1038014, name = "SELECT_OPTION_38014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_38014", action = "action_EVENT_SELECT_OPTION_38014", trigger_count = 0 },
	{ config_id = 1038018, name = "TIME_AXIS_PASS_38018", event = EventType.EVENT_TIME_AXIS_PASS, source = "First", condition = "condition_EVENT_TIME_AXIS_PASS_38018", action = "action_EVENT_TIME_AXIS_PASS_38018", trigger_count = 0 },
	{ config_id = 1038019, name = "TIME_AXIS_PASS_38019", event = EventType.EVENT_TIME_AXIS_PASS, source = "Second", condition = "condition_EVENT_TIME_AXIS_PASS_38019", action = "action_EVENT_TIME_AXIS_PASS_38019", trigger_count = 0 },
	{ config_id = 1038020, name = "TIME_AXIS_PASS_38020", event = EventType.EVENT_TIME_AXIS_PASS, source = "Third", condition = "condition_EVENT_TIME_AXIS_PASS_38020", action = "action_EVENT_TIME_AXIS_PASS_38020", trigger_count = 0 },
	-- 水上
	{ config_id = 1038021, name = "GROUP_LOAD_38021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_38021", action = "action_EVENT_GROUP_LOAD_38021", trigger_count = 0 },
	-- 中间
	{ config_id = 1038022, name = "GROUP_LOAD_38022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_38022", action = "action_EVENT_GROUP_LOAD_38022", trigger_count = 0 },
	-- 最后
	{ config_id = 1038023, name = "GROUP_LOAD_38023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_38023", action = "action_EVENT_GROUP_LOAD_38023", trigger_count = 0 },
	-- 带电水面加第一水面保底
	{ config_id = 1038024, name = "GROUP_LOAD_38024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_38024", action = "action_EVENT_GROUP_LOAD_38024", trigger_count = 0 },
	-- 延时干掉电水
	{ config_id = 1038025, name = "TIME_AXIS_PASS_38025", event = EventType.EVENT_TIME_AXIS_PASS, source = "FlashWater", condition = "condition_EVENT_TIME_AXIS_PASS_38025", action = "action_EVENT_TIME_AXIS_PASS_38025", trigger_count = 0 },
	-- 第二水面保底
	{ config_id = 1038026, name = "GROUP_LOAD_38026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_38026", action = "action_EVENT_GROUP_LOAD_38026", trigger_count = 0 },
	-- 第三水面保底
	{ config_id = 1038027, name = "GROUP_LOAD_38027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_38027", action = "action_EVENT_GROUP_LOAD_38027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "WaterFirst", value = 0, no_refresh = true },
	{ config_id = 2, name = "WaterSecond", value = 0, no_refresh = true },
	{ config_id = 3, name = "WaterThird", value = 0, no_refresh = true }
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
		gadgets = { 38001, 38002, 38003, 38004, 38005, 38010, 38011, 38013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_38006", "GADGET_STATE_CHANGE_38007", "SELECT_OPTION_38008", "GADGET_STATE_CHANGE_38009", "SELECT_OPTION_38012", "SELECT_OPTION_38014", "TIME_AXIS_PASS_38018", "TIME_AXIS_PASS_38019", "TIME_AXIS_PASS_38020", "GROUP_LOAD_38021", "GROUP_LOAD_38022", "GROUP_LOAD_38023", "GROUP_LOAD_38024", "TIME_AXIS_PASS_38025", "GROUP_LOAD_38026", "GROUP_LOAD_38027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38006(context, evt)
	if 38004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222038, 38001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "WaterFirst" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "WaterFirst", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38007(context, evt)
	if 38013 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222038, 38002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "WaterSecond" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "WaterSecond", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_38008(context, evt)
	-- 判断是gadgetid 38001 option_id 7
	if 38001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_38008(context, evt)
	-- 创建标识为"First"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "First", {2}, false)
	
	
	-- 创建标识为"FlashWater"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "FlashWater", {1}, false)
	
	
	-- 通知场景上的所有玩家播放名字为322203801 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 322203801, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 删除指定group： 133222038 ；指定config：38001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133222038, 38001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 38004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "WaterFirst" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "WaterFirst", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133222314, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38009(context, evt)
	if 38003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222038, 38010, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "WaterThird" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "WaterThird", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_38012(context, evt)
	-- 判断是gadgetid 38010 option_id 7
	if 38010 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_38012(context, evt)
	-- 创建标识为"Third"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Third", {2}, false)
	
	
	-- 将configid为 38011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知场景上的所有玩家播放名字为322203803 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 322203803, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 删除指定group： 133222038 ；指定config：38010；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133222038, 38010, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 38003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "WaterThird" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "WaterThird", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Last" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Last", 1, 133222157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133222244) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_38014(context, evt)
	-- 判断是gadgetid 38002 option_id 7
	if 38002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_38014(context, evt)
	-- 创建标识为"Second"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Second", {2}, false)
	
	
	-- 通知场景上的所有玩家播放名字为322203802 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 322203802, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 删除指定group： 133222038 ；指定config：38002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133222038, 38002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 38013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "WaterSecond" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "WaterSecond", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133222349) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_38018(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_38018(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222038, EntityType.GADGET, 38005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为38015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 38015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_38019(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_38019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222038, EntityType.GADGET, 38015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为38016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 38016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_38020(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_38020(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222038, EntityType.GADGET, 38016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为38017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 38017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_38021(context, evt)
	-- 判断变量"WaterFirst"为1
	if ScriptLib.GetGroupVariableValue(context, "WaterFirst") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222038, 38001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_38022(context, evt)
	-- 判断变量"WaterSecond"为1
	if ScriptLib.GetGroupVariableValue(context, "WaterSecond") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222038, 38002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_38023(context, evt)
	-- 判断变量"WaterThird"为1
	if ScriptLib.GetGroupVariableValue(context, "WaterThird") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222038, 38010, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_38024(context, evt)
	-- 判断变量"WaterFirst"为2
	if ScriptLib.GetGroupVariableValue(context, "WaterFirst") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38024(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222207, EntityType.GADGET, 207016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222038, EntityType.GADGET, 38005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_38025(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_38025(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222207, EntityType.GADGET, 207016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_38026(context, evt)
	-- 判断变量"WaterSecond"为2
	if ScriptLib.GetGroupVariableValue(context, "WaterSecond") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38026(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222038, EntityType.GADGET, 38015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_38027(context, evt)
	-- 判断变量"WaterThird"为2
	if ScriptLib.GetGroupVariableValue(context, "WaterThird") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38027(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133222038, EntityType.GADGET, 38016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 133222244) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end