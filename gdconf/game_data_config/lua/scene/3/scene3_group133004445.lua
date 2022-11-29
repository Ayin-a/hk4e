-- 基础信息
local base_info = {
	group_id = 133004445
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
	{ config_id = 445001, gadget_id = 70300111, pos = { x = 2265.649, y = 236.351, z = -734.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445002, gadget_id = 70300111, pos = { x = 2264.510, y = 236.351, z = -735.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445003, gadget_id = 70300111, pos = { x = 2263.417, y = 236.351, z = -735.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445004, gadget_id = 70300111, pos = { x = 2262.019, y = 236.351, z = -736.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445005, gadget_id = 70300111, pos = { x = 2260.873, y = 236.351, z = -736.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445006, gadget_id = 70300111, pos = { x = 2259.505, y = 236.351, z = -737.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445007, gadget_id = 70300111, pos = { x = 2258.568, y = 236.351, z = -736.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445008, gadget_id = 70300111, pos = { x = 2258.136, y = 236.351, z = -735.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445009, gadget_id = 70300111, pos = { x = 2258.667, y = 236.351, z = -734.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445010, gadget_id = 70300111, pos = { x = 2259.557, y = 236.351, z = -733.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445011, gadget_id = 70300111, pos = { x = 2260.489, y = 236.351, z = -733.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445012, gadget_id = 70300111, pos = { x = 2261.272, y = 236.351, z = -733.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445013, gadget_id = 70300111, pos = { x = 2262.109, y = 236.351, z = -732.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445014, gadget_id = 70300111, pos = { x = 2263.148, y = 236.351, z = -732.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445015, gadget_id = 70300111, pos = { x = 2264.117, y = 236.351, z = -732.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 445016, gadget_id = 70300111, pos = { x = 2264.853, y = 236.351, z = -732.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 445018, shape = RegionShape.SPHERE, radius = 6, pos = { x = 2264.997, y = 236.351, z = -733.282 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1445018, name = "ENTER_REGION_445018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_445018", action = "action_EVENT_ENTER_REGION_445018" },
	{ config_id = 1445019, name = "ANY_GADGET_DIE_445019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_445019", action = "action_EVENT_ANY_GADGET_DIE_445019", trigger_count = 0 },
	{ config_id = 1445020, name = "TIMER_EVENT_445020", event = EventType.EVENT_TIMER_EVENT, source = "delayjudge", condition = "condition_EVENT_TIMER_EVENT_445020", action = "action_EVENT_TIMER_EVENT_445020" },
	{ config_id = 1445021, name = "GADGET_CREATE_445021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_445021", action = "" },
	{ config_id = 1445022, name = "TIMER_EVENT_445022", event = EventType.EVENT_TIMER_EVENT, source = "delaymessage", condition = "", action = "action_EVENT_TIMER_EVENT_445022" },
	{ config_id = 1445023, name = "ANY_GADGET_DIE_445023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_445023", action = "action_EVENT_ANY_GADGET_DIE_445023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isfail", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 445001, 445002, 445003, 445004, 445005, 445006, 445007, 445008, 445009, 445010, 445011, 445012, 445013, 445014, 445015, 445016 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_445019", "TIMER_EVENT_445020", "GADGET_CREATE_445021", "TIMER_EVENT_445022", "ANY_GADGET_DIE_445023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 摆设,
		monsters = { },
		gadgets = { },
		regions = { 445018 },
		triggers = { "ENTER_REGION_445018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_445018(context, evt)
	if evt.param1 ~= 445018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_445018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044451") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_445019(context, evt)
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_445019(context, evt)
	-- 延迟3秒后,向groupId为：133004445的对象,请求一次调用,并将string参数："delayjudge" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004445, "delayjudge", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_445020(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004445}) == 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_445020(context, evt)
	-- 将本组内变量名为 "isfail" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isfail", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2264,y=236,z=-733}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021146, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟2秒后,向groupId为：133004445的对象,请求一次调用,并将string参数："delaymessage" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133004445, "delaymessage", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_445021(context, evt)
	if 445001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_445022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004445, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_445023(context, evt)
	-- 判断变量"isfail"为0
	if ScriptLib.GetGroupVariableValue(context, "isfail") ~= 0 then
			return false
	end
	
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004445}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_445023(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2264,y=236,z=-733}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021147, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044452") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end