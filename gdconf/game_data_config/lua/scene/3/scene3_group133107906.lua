-- 基础信息
local base_info = {
	group_id = 133107906
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
	{ config_id = 906001, gadget_id = 70220001, pos = { x = -451.138, y = 203.904, z = 320.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 906002, gadget_id = 70220001, pos = { x = -448.987, y = 202.969, z = 327.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 906003, gadget_id = 70220001, pos = { x = -450.274, y = 203.653, z = 317.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 906004, gadget_id = 70220001, pos = { x = -452.917, y = 203.732, z = 317.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 906005, gadget_id = 70220001, pos = { x = -451.480, y = 203.445, z = 324.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 906006, shape = RegionShape.SPHERE, radius = 1.19, pos = { x = -455.801, y = 207.551, z = 324.057 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1906006, name = "ENTER_REGION_906006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_906006", action = "action_EVENT_ENTER_REGION_906006" },
	{ config_id = 1906007, name = "ANY_GADGET_DIE_906007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_906007" }
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
		gadgets = { 906002, 906005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 906005 },
		regions = { 906006 },
		triggers = { "ENTER_REGION_906006", "ANY_GADGET_DIE_906007" },
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
function condition_EVENT_ENTER_REGION_906006(context, evt)
	if evt.param1 ~= 906006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_906006(context, evt)
	-- 触发镜头注目，注目位置为坐标（-451，204，320），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-451, y=204, z=320}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1110057 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110057) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310790601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为906001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 906001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为906002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 906002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为906003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 906003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为906004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 906004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为906005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 906005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_906007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	ScriptLib.AddQuestProgress(context, "13310790602")
	
	
	-- 调用提示id为 1110077 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	ScriptLib.ShowReminder(context, 1110077)
	
	return 0
end