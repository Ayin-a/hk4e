-- 基础信息
local base_info = {
	group_id = 166001036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36007, monster_id = 20011501, pos = { x = 776.015, y = 722.936, z = 354.351 }, rot = { x = 0.000, y = 151.036, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 },
	{ config_id = 36008, monster_id = 20010101, pos = { x = 770.334, y = 715.963, z = 366.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 201, area_id = 300 },
	{ config_id = 36010, monster_id = 20011501, pos = { x = 767.753, y = 722.971, z = 359.541 }, rot = { x = 0.000, y = 60.216, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 36001, gadget_id = 70211001, pos = { x = 776.394, y = 719.360, z = 368.513 }, rot = { x = 0.000, y = 199.696, z = 0.000 }, level = 26, chest_drop_id = 1050168, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 36004, gadget_id = 70360342, pos = { x = 770.334, y = 715.435, z = 367.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 300 },
	{ config_id = 36005, gadget_id = 70290276, pos = { x = 771.493, y = 726.220, z = 358.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 36011, gadget_id = 70290204, pos = { x = 771.463, y = 715.387, z = 358.226 }, rot = { x = 0.000, y = 150.796, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 36012, gadget_id = 70290233, pos = { x = 774.907, y = 715.429, z = 358.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 36003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 780.523, y = 717.508, z = 345.328 }, area_id = 300 },
	{ config_id = 36009, shape = RegionShape.SPHERE, radius = 15, pos = { x = 776.800, y = 716.098, z = 355.257 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1036002, name = "GADGET_STATE_CHANGE_36002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36002", action = "action_EVENT_GADGET_STATE_CHANGE_36002" },
	{ config_id = 1036003, name = "ENTER_REGION_36003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_36003" },
	{ config_id = 1036006, name = "VARIABLE_CHANGE_36006", event = EventType.EVENT_VARIABLE_CHANGE, source = "DropRockAbyssBulletTrigger", condition = "", action = "action_EVENT_VARIABLE_CHANGE_36006" },
	{ config_id = 1036009, name = "ENTER_REGION_36009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_36009" },
	{ config_id = 1036013, name = "ANY_GADGET_DIE_36013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_36013", action = "action_EVENT_ANY_GADGET_DIE_36013" },
	{ config_id = 1036014, name = "ANY_GADGET_DIE_36014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_36014", action = "action_EVENT_ANY_GADGET_DIE_36014" }
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
		gadgets = { 36001, 36005 },
		regions = { 36003, 36009 },
		triggers = { "GADGET_STATE_CHANGE_36002", "ENTER_REGION_36003", "VARIABLE_CHANGE_36006", "ENTER_REGION_36009", "ANY_GADGET_DIE_36013", "ANY_GADGET_DIE_36014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36002(context, evt)
	if 36001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001036") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_36003(context, evt)
	-- 调用提示id为 60010137 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010137) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36006(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 创建id为36011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 36011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 36010, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 创建id为36012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 36012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 60010138 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010138) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为36004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 36004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 36007, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_36009(context, evt)
	-- 将configid为 36005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_36013(context, evt)
	if 36004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_36013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 36008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_36014(context, evt)
	if 36011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_36014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 36004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 36012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V2_6/DropRockAbyssBulletTrigger"