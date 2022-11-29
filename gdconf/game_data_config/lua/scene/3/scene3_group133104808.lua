-- 基础信息
local base_info = {
	group_id = 133104808
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
	-- 3号
	{ config_id = 808001, gadget_id = 71700358, pos = { x = 696.765, y = 201.100, z = 287.519 }, rot = { x = 352.115, y = 177.606, z = 358.655 }, level = 1, area_id = 9 },
	-- 1号
	{ config_id = 808003, gadget_id = 70360001, pos = { x = 666.877, y = 200.491, z = 303.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearAction1, area_id = 9 },
	-- 2号
	{ config_id = 808004, gadget_id = 70360001, pos = { x = 685.073, y = 201.036, z = 301.398 }, rot = { x = 352.874, y = 97.017, z = 351.033 }, level = 1, state = GadgetState.GearAction1, area_id = 9 },
	-- 3号
	{ config_id = 808005, gadget_id = 70360001, pos = { x = 696.770, y = 201.063, z = 287.515 }, rot = { x = 357.788, y = 233.677, z = 359.338 }, level = 1, state = GadgetState.GearAction1, area_id = 9 },
	-- 2号
	{ config_id = 808006, gadget_id = 71700359, pos = { x = 685.073, y = 201.062, z = 301.401 }, rot = { x = 352.438, y = 96.545, z = 354.727 }, level = 1, area_id = 9 },
	-- 1号
	{ config_id = 808013, gadget_id = 71700359, pos = { x = 666.886, y = 200.546, z = 303.126 }, rot = { x = 359.212, y = 0.025, z = 358.177 }, level = 1, area_id = 9 },
	-- 2号
	{ config_id = 808014, gadget_id = 71700358, pos = { x = 685.073, y = 201.062, z = 301.401 }, rot = { x = 352.438, y = 96.545, z = 354.727 }, level = 1, area_id = 9 },
	-- 1号
	{ config_id = 808015, gadget_id = 71700358, pos = { x = 666.886, y = 200.546, z = 303.126 }, rot = { x = 359.212, y = 354.862, z = 358.177 }, level = 1, area_id = 9 },
	-- 3号
	{ config_id = 808017, gadget_id = 71700359, pos = { x = 696.765, y = 201.146, z = 287.519 }, rot = { x = 352.115, y = 177.606, z = 358.655 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1808002, name = "ANY_MONSTER_DIE_808002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_808002", trigger_count = 0 },
	-- 1号
	{ config_id = 1808007, name = "GADGET_CREATE_808007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_808007", action = "action_EVENT_GADGET_CREATE_808007", trigger_count = 0 },
	-- 2号
	{ config_id = 1808008, name = "GADGET_CREATE_808008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_808008", action = "action_EVENT_GADGET_CREATE_808008", trigger_count = 0 },
	-- 3号
	{ config_id = 1808009, name = "GADGET_CREATE_808009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_808009", action = "action_EVENT_GADGET_CREATE_808009", trigger_count = 0 },
	-- 1号
	{ config_id = 1808010, name = "SELECT_OPTION_808010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_808010", action = "action_EVENT_SELECT_OPTION_808010", trigger_count = 0 },
	-- 2号
	{ config_id = 1808011, name = "SELECT_OPTION_808011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_808011", action = "action_EVENT_SELECT_OPTION_808011", trigger_count = 0 },
	-- 3号
	{ config_id = 1808012, name = "SELECT_OPTION_808012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_808012", action = "action_EVENT_SELECT_OPTION_808012", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 808001, 808003, 808004, 808005, 808006, 808013, 808014, 808015, 808017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_808002", "GADGET_CREATE_808007", "GADGET_CREATE_808008", "GADGET_CREATE_808009", "SELECT_OPTION_808010", "SELECT_OPTION_808011", "SELECT_OPTION_808012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 808003, 808004, 808005 },
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_808002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104808") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_808007(context, evt)
	if 808003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_808007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104808, 808003, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_808008(context, evt)
	if 808004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_808008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104808, 808004, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_808009(context, evt)
	if 808005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_808009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104808, 808005, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_808010(context, evt)
	-- 判断是gadgetid 808003 option_id 171
	if 808003 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_808010(context, evt)
	-- 将configid为 808003 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 808003, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133104808 ；指定config：808003；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104808, 808003, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 808015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 808015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_808011(context, evt)
	-- 判断是gadgetid 808004 option_id 171
	if 808004 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_808011(context, evt)
	-- 将configid为 808004 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 808004, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133104808 ；指定config：808004；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104808, 808004, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 808014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 808014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_808012(context, evt)
	-- 判断是gadgetid 808005 option_id 171
	if 808005 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_808012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331048081") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133104808 ；指定config：808005；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104808, 808005, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 808001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 808001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end