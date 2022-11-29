-- 基础信息
local base_info = {
	group_id = 133008191
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
	{ config_id = 191001, gadget_id = 70290032, pos = { x = 1291.000, y = 297.500, z = -1049.000 }, rot = { x = 0.000, y = 138.224, z = 0.000 }, level = 30, state = GadgetState.GearAction2, offering_config = {offering_id = 1}, area_id = 10 },
	{ config_id = 191003, gadget_id = 70310023, pos = { x = 1290.454, y = 298.589, z = -1049.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 191004, gadget_id = 70290022, pos = { x = 1288.980, y = 297.610, z = -1047.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1191002, name = "OFFERING_LEVELUP_191002", event = EventType.EVENT_OFFERING_LEVELUP, source = "", condition = "", action = "action_EVENT_OFFERING_LEVELUP_191002", trigger_count = 0 },
	{ config_id = 1191005, name = "QUEST_START_191005", event = EventType.EVENT_QUEST_START, source = "7014118", condition = "", action = "action_EVENT_QUEST_START_191005", trigger_count = 0 },
	{ config_id = 1191006, name = "TIMER_EVENT_191006", event = EventType.EVENT_TIMER_EVENT, source = "ice_destroy_delay", condition = "", action = "action_EVENT_TIMER_EVENT_191006", trigger_count = 0 },
	{ config_id = 1191007, name = "QUEST_FINISH_191007", event = EventType.EVENT_QUEST_FINISH, source = "7014118", condition = "", action = "action_EVENT_QUEST_FINISH_191007", trigger_count = 0 },
	{ config_id = 1191008, name = "GROUP_LOAD_191008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_191008", trigger_count = 0 },
	{ config_id = 1191009, name = "QUEST_FINISH_191009", event = EventType.EVENT_QUEST_FINISH, source = "7014118", condition = "", action = "action_EVENT_QUEST_FINISH_191009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_cs_finish", value = 0, no_refresh = true }
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
		-- description = ,
		monsters = { },
		gadgets = { 191004 },
		regions = { },
		triggers = { "OFFERING_LEVELUP_191002", "QUEST_START_191005", "TIMER_EVENT_191006", "QUEST_FINISH_191009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 191001, 191003 },
		regions = { },
		triggers = { "OFFERING_LEVELUP_191002", "QUEST_FINISH_191007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 191001, 191003 },
		regions = { },
		triggers = { "OFFERING_LEVELUP_191002", "GROUP_LOAD_191008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OFFERING_LEVELUP_191002(context, evt)
	
	-- 将在groupid为 133008191 中的 configid为 191001 的供奉物件根据stateList对应等级设置其状态
	local _stateList = {201,201,201,201,201,201,201,202,202,202,202,203}
	if 1 ~= evt.param1 then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_OfferingLevel")
	  return -1
	end
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008191, 191001, _stateList[evt.param2]) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_OfferingLevel")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_191005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 191004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 延迟14.5秒后,向groupId为：133008191的对象,请求一次调用,并将string参数："ice_destroy_delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008191, "ice_destroy_delay", 14.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_191006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008191, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_191007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008191, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_191008(context, evt)
		--保险用机制
		local _offeringLevel = 	ScriptLib.GetOfferingLevel(context, 1)
		local _currentGadgetState = ScriptLib.GetGadgetStateByConfigId(context, 133008191, 191001)
		local _stateList = {901,901,901,901,901,901,901,902,902,902,902,903}
	
		if 0 < _offeringLevel then
			if _stateList[_offeringLevel] ~= _currentGadgetState then
				if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008191, 191001, _stateList[_offeringLevel]) then
				  return -1
				end
			end
		end
		
		return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_191009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008191, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end