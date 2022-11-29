-- 基础信息
local base_info = {
	group_id = 133315310
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
	-- 右侧石块3
	{ config_id = 310001, gadget_id = 70310215, pos = { x = 108.597, y = 94.452, z = 2963.879 }, rot = { x = 348.387, y = 358.462, z = 0.516 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 310002, gadget_id = 70320004, pos = { x = 108.489, y = 95.695, z = 2965.669 }, rot = { x = 0.000, y = 217.276, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 310003, gadget_id = 70211101, pos = { x = 114.879, y = 94.671, z = 2971.966 }, rot = { x = 0.000, y = 86.941, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 310006, gadget_id = 70330216, pos = { x = 108.641, y = 94.679, z = 2967.544 }, rot = { x = 0.000, y = 48.536, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	-- 右侧 石块3 空
	{ config_id = 310004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 109.008, y = 95.788, z = 2966.874 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 右侧 石块3 空
	{ config_id = 1310004, name = "ENTER_REGION_310004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_310004", action = "action_EVENT_ENTER_REGION_310004" },
	-- 右侧 石块3 空
	{ config_id = 1310005, name = "ANY_GADGET_DIE_310005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_310005", action = "action_EVENT_ANY_GADGET_DIE_310005" },
	-- 透明操作台打开，刷个宝箱
	{ config_id = 1310007, name = "GADGET_STATE_CHANGE_310007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_310007", action = "action_EVENT_GADGET_STATE_CHANGE_310007" },
	{ config_id = 1310008, name = "GROUP_LOAD_310008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_310008", action = "action_EVENT_GROUP_LOAD_310008", trigger_count = 0 }
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
		gadgets = { 310001, 310006 },
		regions = { 310004 },
		triggers = { "ENTER_REGION_310004", "ANY_GADGET_DIE_310005", "GADGET_STATE_CHANGE_310007", "GROUP_LOAD_310008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_310004(context, evt)
	if evt.param1 ~= 310004 then return false end
	
	-- 判断是区域310004
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 310004 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_310004(context, evt)
	-- 调用提示id为 7306305 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306305) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_310005(context, evt)
	if 310001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_310005(context, evt)
	-- 创建id为310002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 310002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 7306306 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306306) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_310007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315310, 310002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_310007(context, evt)
	-- 创建id为310003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 310003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_310008(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7306334)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_310008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 310001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end