-- 基础信息
local base_info = {
	group_id = 133220057
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
	{ config_id = 57002, gadget_id = 70710113, pos = { x = -1856.208, y = 233.691, z = -4187.263 }, rot = { x = 0.529, y = 228.754, z = 359.412 }, level = 32, persistent = true, interact_id = 36, area_id = 11 },
	{ config_id = 57003, gadget_id = 70360122, pos = { x = -1855.381, y = 206.104, z = -4212.862 }, rot = { x = 0.000, y = 297.487, z = 0.000 }, level = 27, interact_id = 48, area_id = 11 },
	{ config_id = 57012, gadget_id = 70350004, pos = { x = -1856.949, y = 205.807, z = -4209.168 }, rot = { x = 90.000, y = 178.042, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 57013, gadget_id = 70500000, pos = { x = -1866.059, y = 231.550, z = -4222.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9154, isOneoff = true, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 57001, shape = RegionShape.SPHERE, radius = 18, pos = { x = -1858.181, y = 232.161, z = -4197.383 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1057001, name = "ENTER_REGION_57001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57001", action = "action_EVENT_ENTER_REGION_57001" },
	{ config_id = 1057004, name = "GADGET_STATE_CHANGE_57004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_57004", action = "action_EVENT_GADGET_STATE_CHANGE_57004", trigger_count = 0 },
	{ config_id = 1057005, name = "GROUP_LOAD_57005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_57005", action = "action_EVENT_GROUP_LOAD_57005", trigger_count = 0 },
	{ config_id = 1057017, name = "GADGET_STATE_CHANGE_57017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_57017", action = "action_EVENT_GADGET_STATE_CHANGE_57017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
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
		gadgets = { 57002, 57012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 57002, 57012, 57013 },
		regions = { 57001 },
		triggers = { "ENTER_REGION_57001", "GADGET_STATE_CHANGE_57017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 57002, 57003, 57012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_57004", "GROUP_LOAD_57005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_57001(context, evt)
	if evt.param1 ~= 57001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57001(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1858,y=232,z=-4197}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 7210901, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_57004(context, evt)
	if 57003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_57004(context, evt)
	-- 将configid为 57012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332200572") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_57005(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_57005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220057, EntityType.GADGET, 57012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220057, EntityType.GADGET, 57003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_57017(context, evt)
	if 57002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_57017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332200571") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end