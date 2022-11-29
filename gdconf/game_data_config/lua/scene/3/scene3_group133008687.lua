-- 基础信息
local base_info = {
	group_id = 133008687
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 无掉落，2.4狸猫活动，强制显示UI
	{ config_id = 687007, monster_id = 28020309, pos = { x = 995.835, y = 316.473, z = -1110.490 }, rot = { x = 0.000, y = 159.618, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, title_id = 10003, special_name_id = 10019, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 687004, gadget_id = 70290196, pos = { x = 1017.679, y = 317.067, z = -1119.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	-- 提示 300868306
	{ config_id = 687002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1030.707, y = 316.169, z = -1123.187 }, area_id = 10 }
}

-- 触发器
triggers = {
	-- 提示 300868306
	{ config_id = 1687002, name = "ENTER_REGION_687002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_687002", action = "action_EVENT_ENTER_REGION_687002" },
	{ config_id = 1687008, name = "ANY_MONSTER_DIE_687008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_687008", action = "action_EVENT_ANY_MONSTER_DIE_687008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 687003, monster_id = 28020308, pos = { x = 1028.999, y = 316.805, z = -1129.648 }, rot = { x = 0.000, y = 265.144, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
		{ config_id = 687005, monster_id = 28020308, pos = { x = 1008.785, y = 316.173, z = -1131.847 }, rot = { x = 0.000, y = 78.959, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
		{ config_id = 687006, monster_id = 28020308, pos = { x = 1021.271, y = 316.115, z = -1122.678 }, rot = { x = 0.000, y = 76.323, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
	},
	gadgets = {
		{ config_id = 687001, gadget_id = 70310015, pos = { x = 1010.412, y = 316.193, z = -1133.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
	}
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
		monsters = { 687007 },
		gadgets = { 687004 },
		regions = { 687002 },
		triggers = { "ENTER_REGION_687002", "ANY_MONSTER_DIE_687008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_687002(context, evt)
	if evt.param1 ~= 687002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_687002(context, evt)
	-- 调用提示id为 300868306 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300868306) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1000.064，316.0117，-1119.255），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1000.064, y=316.0117, z=-1119.255}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_687008(context, evt)
	--判断死亡怪物的configid是否为 687007
	if evt.param1 ~= 687007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_687008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7226406") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end