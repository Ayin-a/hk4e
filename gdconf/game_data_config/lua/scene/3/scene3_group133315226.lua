-- 基础信息
local base_info = {
	group_id = 133315226
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
	{ config_id = 226001, gadget_id = 70900050, pos = { x = 208.154, y = 106.941, z = 2817.967 }, rot = { x = 0.000, y = 344.640, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 226002, gadget_id = 70310216, pos = { x = 208.507, y = 107.022, z = 2817.836 }, rot = { x = 0.000, y = 3.958, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 226003, gadget_id = 70290517, pos = { x = 193.356, y = 112.792, z = 2819.948 }, rot = { x = 313.621, y = 80.520, z = 2.749 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 226005, shape = RegionShape.SPHERE, radius = 10, pos = { x = 208.358, y = 107.390, z = 2819.575 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1226004, name = "GADGET_STATE_CHANGE_226004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_226004", action = "action_EVENT_GADGET_STATE_CHANGE_226004" },
	{ config_id = 1226005, name = "ENTER_REGION_226005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_226005", action = "action_EVENT_ENTER_REGION_226005" }
}

-- 点位
points = {
	{ config_id = 226006, pos = { x = 197.232, y = 110.458, z = 2822.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
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
		gadgets = { 226001, 226002, 226003 },
		regions = { 226005 },
		triggers = { "GADGET_STATE_CHANGE_226004", "ENTER_REGION_226005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_226004(context, evt)
	if 226001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_226004(context, evt)
	-- 将configid为 226003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=197.2318, y=110.4583, z=2822.695}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=197.2318, y=110.4583, z=2822.695}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 7306324 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306324) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 改变指定group组133315266中， configid为266003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266008, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266013的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266013, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133315266中， configid为266014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266014, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_226005(context, evt)
	if evt.param1 ~= 226005 then return false end
	
	-- 判断是区域226005
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 226005 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_226005(context, evt)
	-- 调用提示id为 7306315 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306315) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end