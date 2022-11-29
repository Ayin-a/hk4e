-- 基础信息
local base_info = {
	group_id = 133303058
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
	{ config_id = 58001, gadget_id = 70290418, pos = { x = -1089.570, y = 94.290, z = 3842.170 }, rot = { x = 357.704, y = 80.577, z = 1.535 }, level = 30, persistent = true, area_id = 23 },
	-- 完成地城刷出
	{ config_id = 58002, gadget_id = 70290564, pos = { x = -1095.915, y = 99.457, z = 3843.427 }, rot = { x = 357.704, y = 80.577, z = 1.535 }, level = 30, persistent = true, area_id = 23 },
	-- 解除死域刷出
	{ config_id = 58009, gadget_id = 70210102, pos = { x = -1092.645, y = 86.603, z = 3846.073 }, rot = { x = 0.000, y = 317.113, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 23 },
	-- 完成地城刷出
	{ config_id = 58010, gadget_id = 70210102, pos = { x = -1092.645, y = 86.603, z = 3846.073 }, rot = { x = 0.000, y = 317.113, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 23 },
	-- 解除死域刷出
	{ config_id = 58012, gadget_id = 70310148, pos = { x = -1092.645, y = 86.603, z = 3846.073 }, rot = { x = 0.000, y = 317.113, z = 0.000 }, level = 30, area_id = 23 },
	-- 恒素果交互
	{ config_id = 58017, gadget_id = 70360001, pos = { x = -1093.052, y = 87.467, z = 3845.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	--  730707001 看起来好像没路了…
	{ config_id = 58006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -1281.938, y = 179.039, z = 3613.092 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 拾取恒素果，干掉光球
	{ config_id = 1058004, name = "GADGET_STATE_CHANGE_58004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_58004", action = "action_EVENT_GADGET_STATE_CHANGE_58004" },
	-- 完成地城，刷出特效光球
	{ config_id = 1058005, name = "QUEST_START_58005", event = EventType.EVENT_QUEST_START, source = "7307015", condition = "", action = "action_EVENT_QUEST_START_58005", trigger_count = 0 },
	--  730707001 看起来好像没路了…
	{ config_id = 1058006, name = "ENTER_REGION_58006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_58006", action = "action_EVENT_ENTER_REGION_58006" },
	-- 730700701    嗯…我们应该用兰玛哈的歌，从这种嫩芽中汲取力量，然后将力量投射到那种奇怪的环上面！
	{ config_id = 1058007, name = "QUEST_START_58007", event = EventType.EVENT_QUEST_START, source = "7307007", condition = "", action = "action_EVENT_QUEST_START_58007" },
	-- 解除死域，触摸小草神殿的树
	{ config_id = 1058008, name = "QUEST_START_58008", event = EventType.EVENT_QUEST_START, source = "7307012", condition = "", action = "action_EVENT_QUEST_START_58008", trigger_count = 0 },
	-- 完成地城，addoption
	{ config_id = 1058011, name = "QUEST_START_58011", event = EventType.EVENT_QUEST_START, source = "7307015", condition = "", action = "action_EVENT_QUEST_START_58011", trigger_count = 0 },
	-- 地城出来拾取恒素果，干掉操作台
	{ config_id = 1058014, name = "QUEST_FINISH_58014", event = EventType.EVENT_QUEST_FINISH, source = "7307015", condition = "", action = "action_EVENT_QUEST_FINISH_58014", trigger_count = 0 },
	-- 死域解除触摸树，保底干掉光柱
	{ config_id = 1058015, name = "QUEST_FINISH_58015", event = EventType.EVENT_QUEST_FINISH, source = "7307012", condition = "", action = "action_EVENT_QUEST_FINISH_58015", trigger_count = 0 },
	-- 死域解除触摸树，干掉光柱
	{ config_id = 1058016, name = "GADGET_STATE_CHANGE_58016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_58016", action = "action_EVENT_GADGET_STATE_CHANGE_58016" },
	-- 执行操作台
	{ config_id = 1058018, name = "SELECT_OPTION_58018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_58018", action = "action_EVENT_SELECT_OPTION_58018", trigger_count = 0 },
	-- 创光球的时候挂操作台option
	{ config_id = 1058019, name = "GADGET_CREATE_58019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_58019", action = "action_EVENT_GADGET_CREATE_58019", trigger_count = 0 },
	{ config_id = 1058020, name = "GROUP_LOAD_58020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_58020", action = "action_EVENT_GROUP_LOAD_58020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "rmd", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 58013, gadget_id = 70310148, pos = { x = -1092.645, y = 86.603, z = 3846.073 }, rot = { x = 0.000, y = 317.113, z = 0.000 }, level = 30, area_id = 23 }
	},
	triggers = {
		{ config_id = 1058003, name = "TIME_AXIS_PASS_58003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_58003", action = "action_EVENT_TIME_AXIS_PASS_58003" }
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
		gadgets = { 58001, 58017 },
		regions = { 58006 },
		triggers = { "GADGET_STATE_CHANGE_58004", "QUEST_START_58005", "ENTER_REGION_58006", "QUEST_START_58007", "QUEST_START_58008", "QUEST_START_58011", "QUEST_FINISH_58014", "QUEST_FINISH_58015", "GADGET_STATE_CHANGE_58016", "SELECT_OPTION_58018", "GADGET_CREATE_58019", "GROUP_LOAD_58020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_58004(context, evt)
	if 58017 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_58004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303058, EntityType.GADGET, 58002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_58005(context, evt)
	-- 创建id为58002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 58002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_58006(context, evt)
	if evt.param1 ~= 58006 then return false end
	
	-- 判断是区域58006
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 58006 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_58006(context, evt)
	-- 调用提示id为 730701001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730701001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_58007(context, evt)
	-- 调用提示id为 730700701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730700701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_58008(context, evt)
	-- 创建id为58009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 58009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为58012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 58012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_58011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133303058, 58017, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58014(context, evt)
	-- 删除指定group： 133303058 ；指定config：58017；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303058, 58017, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_58015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 58012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_58016(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133303058, 58009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_58016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 58012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_58018(context, evt)
	-- 判断是gadgetid 58017 option_id 68
	if 58017 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_58018(context, evt)
	-- 删除指定group： 133303058 ；指定config：58017；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303058, 58017, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 58017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_58019(context, evt)
	if 58002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_58019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133303058, 58017, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_58020(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303058, 58017) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_58020(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303058, EntityType.GADGET, 58002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end