-- 基础信息
local base_info = {
	group_id = 133315216
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
	{ config_id = 216001, gadget_id = 70900050, pos = { x = 196.621, y = 98.665, z = 2966.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 216002, gadget_id = 70310216, pos = { x = 196.356, y = 98.237, z = 2966.328 }, rot = { x = 0.000, y = 205.939, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 216004, gadget_id = 70290517, pos = { x = 180.328, y = 97.546, z = 2968.671 }, rot = { x = 12.564, y = 48.353, z = 181.644 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 216005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 197.045, y = 99.454, z = 2967.795 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1216003, name = "GADGET_STATE_CHANGE_216003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_216003", action = "action_EVENT_GADGET_STATE_CHANGE_216003", trigger_count = 0 },
	{ config_id = 1216005, name = "ENTER_REGION_216005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_216005", action = "action_EVENT_ENTER_REGION_216005" }
}

-- 点位
points = {
	{ config_id = 216006, pos = { x = 182.893, y = 101.036, z = 2967.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
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
		gadgets = { 216001, 216002, 216004 },
		regions = { 216005 },
		triggers = { "GADGET_STATE_CHANGE_216003", "ENTER_REGION_216005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_216003(context, evt)
	if 216001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_216003(context, evt)
	-- 将configid为 216004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "go" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "go", 1, 133315107) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=182.8933, y=101.0355, z=2967.846}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=182.8933, y=101.0355, z=2967.846}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 7306314 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306314) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_216005(context, evt)
	if evt.param1 ~= 216005 then return false end
	
	-- 判断是区域216005
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 216005 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_216005(context, evt)
	-- 调用提示id为 7306313 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306313) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end