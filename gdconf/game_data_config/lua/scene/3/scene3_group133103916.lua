-- 基础信息
local base_info = {
	group_id = 133103916
}

-- Trigger变量
local defs = {
	gadget_1 = 916004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 916006, monster_id = 26030101, pos = { x = 567.236, y = 232.072, z = 1713.747 }, rot = { x = 0.000, y = 17.920, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 916007, monster_id = 26030101, pos = { x = 563.930, y = 231.851, z = 1715.913 }, rot = { x = 0.000, y = 46.854, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 916001, gadget_id = 70210102, pos = { x = 650.480, y = 246.235, z = 1571.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 6 },
	{ config_id = 916003, gadget_id = 70210102, pos = { x = 585.950, y = 242.313, z = 1614.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 916004, shape = RegionShape.SPHERE, radius = 15, pos = { x = 572.814, y = 233.629, z = 1723.598 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1916002, name = "GADGET_STATE_CHANGE_916002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_916002", action = "action_EVENT_GADGET_STATE_CHANGE_916002", trigger_count = 0 },
	{ config_id = 1916004, name = "ENTER_REGION_916004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_916004", action = "", trigger_count = 0 },
	{ config_id = 1916005, name = "GADGET_STATE_CHANGE_916005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_916005", action = "action_EVENT_GADGET_STATE_CHANGE_916005", trigger_count = 0 },
	{ config_id = 1916010, name = "ANY_MONSTER_DIE_916010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_916010", action = "action_EVENT_ANY_MONSTER_DIE_916010", trigger_count = 0 }
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
		gadgets = { 916001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_916002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 916006, 916007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_916010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 916003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_916005" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 916004 },
		triggers = { "ENTER_REGION_916004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_916002(context, evt)
	-- 检测config_id为916001的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 916001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_916002(context, evt)
	-- 触发镜头注目，注目位置为坐标（643，247，1594），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=643, y=247, z=1594}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331039161") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_916004(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7180804) == QuestState.UNFINISHED and evt.param1 == defs.gadget_1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_916005(context, evt)
	-- 检测config_id为916003的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 916003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_916005(context, evt)
	-- 触发镜头注目，注目位置为坐标（592，243，1620），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=592, y=243, z=1620}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331039162") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_916010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_916010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331039161") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end