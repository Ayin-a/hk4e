-- 基础信息
local base_info = {
	group_id = 133003923
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
	{ config_id = 923001, gadget_id = 70350081, pos = { x = 2399.940, y = 284.664, z = -1750.167 }, rot = { x = 323.725, y = 9.052, z = 42.601 }, level = 1, state = GadgetState.GearAction1, persistent = true, area_id = 1 },
	{ config_id = 923004, gadget_id = 70360001, pos = { x = 2399.134, y = 285.108, z = -1750.849 }, rot = { x = 2.616, y = 6.577, z = 358.811 }, level = 1, persistent = true, area_id = 1 },
	{ config_id = 923007, gadget_id = 70350006, pos = { x = 2406.017, y = 284.769, z = -1757.760 }, rot = { x = 0.000, y = 291.535, z = 0.000 }, level = 1, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1923002, name = "GADGET_STATE_CHANGE_923002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_923002", action = "action_EVENT_GADGET_STATE_CHANGE_923002", trigger_count = 0 },
	{ config_id = 1923003, name = "QUEST_START_923003", event = EventType.EVENT_QUEST_START, source = "4141210", condition = "", action = "action_EVENT_QUEST_START_923003", trigger_count = 0 },
	{ config_id = 1923005, name = "GADGET_CREATE_923005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_923005", action = "action_EVENT_GADGET_CREATE_923005", trigger_count = 0 },
	{ config_id = 1923006, name = "SELECT_OPTION_923006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_923006", action = "action_EVENT_SELECT_OPTION_923006", trigger_count = 0 }
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
		gadgets = { 923001, 923007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_923002", "QUEST_START_923003", "GADGET_CREATE_923005", "SELECT_OPTION_923006" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_923002(context, evt)
	if 923001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_923002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4141210") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_923003(context, evt)
	-- 创建id为923004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 923004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_923005(context, evt)
	if 923004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_923005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003923, 923004, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_923006(context, evt)
	-- 判断是gadgetid 923004 option_id 7
	if 923004 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_923006(context, evt)
	-- 将configid为 923001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 923001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133003098中， configid为2575的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133003098, 2575, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 923007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 923007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 923004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end