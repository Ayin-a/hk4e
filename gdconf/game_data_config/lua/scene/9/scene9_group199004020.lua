-- 基础信息
local base_info = {
	group_id = 199004020
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
	{ config_id = 20002, gadget_id = 70950145, pos = { x = -501.185, y = 120.000, z = -72.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 20001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -576.843, y = 120.000, z = -91.042 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1020001, name = "ENTER_REGION_20001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20001", action = "action_EVENT_ENTER_REGION_20001", trigger_count = 0 }
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
		gadgets = { 20002 },
		regions = { 20001 },
		triggers = { "ENTER_REGION_20001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_20001(context, evt)
	if evt.param1 ~= 20001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902711finished") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-576.8434,y=120,z=-91.04164}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110994, pos, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-527.5, y=120, z=-93.7}，持续时间为6秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-527.5, y=120, z=-93.7}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 6, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 6,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end