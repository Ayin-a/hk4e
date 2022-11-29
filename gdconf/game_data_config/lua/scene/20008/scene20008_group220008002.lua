-- 基础信息
local base_info = {
	group_id = 220008002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61, monster_id = 20011001, pos = { x = 515.668, y = -65.920, z = 235.193 }, rot = { x = 0.000, y = 175.399, z = 0.000 }, level = 1 },
	{ config_id = 63, monster_id = 20011001, pos = { x = 519.493, y = -65.920, z = 235.164 }, rot = { x = 0.000, y = 199.505, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 182, gadget_id = 70320002, pos = { x = 520.868, y = -65.983, z = 246.135 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 243, gadget_id = 70211001, pos = { x = 517.561, y = -65.917, z = 235.623 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 430, gadget_id = 70320002, pos = { x = 513.973, y = -65.983, z = 224.447 }, rot = { x = 0.000, y = 90.138, z = 0.000 }, level = 4, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 29, shape = RegionShape.SPHERE, radius = 7.9, pos = { x = 517.839, y = -67.984, z = 261.210 } }
}

-- 触发器
triggers = {
	{ config_id = 1000029, name = "ENTER_REGION_29", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29", action = "action_EVENT_ENTER_REGION_29", forbid_guest = false },
	{ config_id = 1000046, name = "GADGET_STATE_CHANGE_46", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46", action = "action_EVENT_GADGET_STATE_CHANGE_46" },
	{ config_id = 1000047, name = "GADGET_STATE_CHANGE_47", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_47", action = "action_EVENT_GADGET_STATE_CHANGE_47" }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 182, 243, 430 },
		regions = { 29 },
		triggers = { "ENTER_REGION_29", "GADGET_STATE_CHANGE_46", "GADGET_STATE_CHANGE_47" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_29(context, evt)
	if evt.param1 ~= 29 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_29(context, evt)
	-- 调用提示id为 1009001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1009001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（500，-62，266），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=500, y=-62, z=266}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 展示名称为"GuideAvatarFlyInWind"的引导,见GuideData表，参数类型为string
	if 0 ~= ScriptLib.ShowClientGuide(context, "GuideAvatarFlyInWind") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : show_client_guide")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46(context, evt)
	if 181 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46(context, evt)
	-- 解锁目标243
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 243, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_47(context, evt)
	if 243 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_47(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 61, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 63, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end