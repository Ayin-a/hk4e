-- 基础信息
local base_info = {
	group_id = 133104818
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 818001, monster_id = 28050204, pos = { x = 699.144, y = 201.723, z = 284.682 }, rot = { x = 0.000, y = 125.043, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 818002, gadget_id = 70360015, pos = { x = 714.788, y = 200.943, z = 293.118 }, rot = { x = 0.038, y = 359.735, z = 3.355 }, level = 1, state = GadgetState.GearAction1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1818003, name = "GADGET_STATE_CHANGE_818003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_818003", action = "action_EVENT_GADGET_STATE_CHANGE_818003", trigger_count = 0 },
	{ config_id = 1818004, name = "SELECT_OPTION_818004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_818004", action = "action_EVENT_SELECT_OPTION_818004", trigger_count = 0 },
	{ config_id = 1818005, name = "GADGET_CREATE_818005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_818005", action = "action_EVENT_GADGET_CREATE_818005", trigger_count = 0 },
	{ config_id = 1818006, name = "GROUP_LOAD_818006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_818006", trigger_count = 0 },
	{ config_id = 1818007, name = "TIMER_EVENT_818007", event = EventType.EVENT_TIMER_EVENT, source = "shuachu", condition = "", action = "action_EVENT_TIMER_EVENT_818007", trigger_count = 0 }
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
		monsters = { 818001 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_818003", "SELECT_OPTION_818004", "GADGET_CREATE_818005", "GROUP_LOAD_818006", "TIMER_EVENT_818007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_818003(context, evt)
	if 818002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_818003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104818, 818002, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_818004(context, evt)
	-- 判断是gadgetid 818002 option_id 171
	if 818002 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_818004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104808") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 818002 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 818002, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133104818 ；指定config：818002；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104818, 818002, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_818005(context, evt)
	if 818002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_818005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104818, 818002, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_818006(context, evt)
	-- 延迟1秒后,向groupId为：133104818的对象,请求一次调用,并将string参数："shuachu" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133104818, "shuachu", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_818007(context, evt)
	-- 创建id为818002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 818002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end