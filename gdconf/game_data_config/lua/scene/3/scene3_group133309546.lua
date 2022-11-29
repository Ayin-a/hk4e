-- 基础信息
local base_info = {
	group_id = 133309546
}

-- Trigger变量
local defs = {
	enter_region = 546017,
	leave_region = 546018,
	FindClue = 1,
	BeatMonster = 3,
	FindRock = 1,
	PuzzleProgress = 1,
	Total = 3
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 546002, monster_id = 24040201, pos = { x = -2549.809, y = 198.866, z = 6035.181 }, rot = { x = 0.000, y = 44.337, z = 0.000 }, level = 32, drop_tag = "元能构装体", isOneoff = true, pose_id = 1, area_id = 27 },
	{ config_id = 546005, monster_id = 24040101, pos = { x = -2550.672, y = 199.316, z = 6041.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", isOneoff = true, pose_id = 1, area_id = 27 },
	{ config_id = 546006, monster_id = 24040301, pos = { x = -2547.294, y = 198.200, z = 6031.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", isOneoff = true, pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 546001, gadget_id = 70800240, pos = { x = -2527.911, y = 210.785, z = 6045.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	{ config_id = 546003, gadget_id = 70360001, pos = { x = -2542.980, y = 195.470, z = 5975.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 },
	{ config_id = 546007, gadget_id = 70330434, pos = { x = -2542.652, y = 197.975, z = 6041.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 546011, gadget_id = 70800289, pos = { x = -2527.911, y = 210.785, z = 6045.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 546012, gadget_id = 70800289, pos = { x = -2549.809, y = 198.866, z = 6035.181 }, rot = { x = 0.000, y = 44.337, z = 0.000 }, level = 1, persistent = true, area_id = 27 },
	{ config_id = 546013, gadget_id = 70310148, pos = { x = -2549.809, y = 198.866, z = 6035.181 }, rot = { x = 0.000, y = 44.337, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 27 },
	{ config_id = 546014, gadget_id = 70330432, pos = { x = -2545.123, y = 199.002, z = 6047.105 }, rot = { x = 44.644, y = 21.228, z = 118.932 }, level = 1, area_id = 27 },
	{ config_id = 546015, gadget_id = 70330432, pos = { x = -2548.785, y = 198.013, z = 6030.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 546004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2542.652, y = 197.975, z = 6041.400 }, area_id = 27 },
	{ config_id = 546016, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2542.652, y = 197.975, z = 6041.400 }, area_id = 27 },
	{ config_id = 546017, shape = RegionShape.CYLINDER, radius = 140, pos = { x = -2542.980, y = 195.470, z = 5975.895 }, height = 400.000, area_id = 27 },
	{ config_id = 546018, shape = RegionShape.CYLINDER, radius = 160, pos = { x = -2542.980, y = 195.470, z = 5975.895 }, height = 400.000, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1546004, name = "ENTER_REGION_546004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_546004", action = "action_EVENT_ENTER_REGION_546004" },
	{ config_id = 1546008, name = "ANY_MONSTER_DIE_546008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_546008", trigger_count = 0 },
	{ config_id = 1546009, name = "ANY_MONSTER_DIE_546009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_546009", action = "action_EVENT_ANY_MONSTER_DIE_546009", trigger_count = 0 },
	{ config_id = 1546010, name = "GADGET_STATE_CHANGE_546010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_546010", action = "action_EVENT_GADGET_STATE_CHANGE_546010" },
	{ config_id = 1546016, name = "ENTER_REGION_546016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_546016", action = "action_EVENT_ENTER_REGION_546016" },
	{ config_id = 1546019, name = "ANY_MONSTER_DIE_546019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_546019", action = "action_EVENT_ANY_MONSTER_DIE_546019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "FindClue", value = 0, no_refresh = true },
	{ config_id = 3, name = "BeatMonster", value = -1, no_refresh = true },
	{ config_id = 2, name = "FindRock", value = -1, no_refresh = true },
	{ config_id = 4, name = "PuzzleProgress", value = -1, no_refresh = true }
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
		gadgets = { 546003, 546012, 546014, 546015 },
		regions = { 546004, 546016, 546017, 546018 },
		triggers = { "ENTER_REGION_546004", "ANY_MONSTER_DIE_546008", "GADGET_STATE_CHANGE_546010", "ENTER_REGION_546016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 546002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_546009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 546005, 546006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_546019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 546001, 546007, 546011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_546004(context, evt)
	if evt.param1 ~= 546004 then return false end
	
	-- 判断是区域546004
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 546004 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_546004(context, evt)
	-- 变量"BeatMonster"赋值为0
	ScriptLib.SetGroupVariableValue(context, "BeatMonster", 0)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309546, 2)
	
	-- 针对当前group内变量名为 "FindClue" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FindClue", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 600153 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600153) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 546013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 546013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_546008(context, evt)
	-- 针对当前group内变量名为 "BeatMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "BeatMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_546009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_546009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309546, 3)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309546, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_546010(context, evt)
	if 546001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_546010(context, evt)
	-- 针对当前group内变量名为 "FindRock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FindRock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_546016(context, evt)
	if evt.param1 ~= 546016 then return false end
	
	-- 判断是区域546016
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 546016 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_546016(context, evt)
	-- 创建id为546013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 546013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_546019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_546019(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309546, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309546, 3)
	
	-- 变量"FindRock"赋值为0
	ScriptLib.SetGroupVariableValue(context, "FindRock", 0)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 546012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 调用提示id为 600154 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600154) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-2527.912, y=209.2846, z=6045.838}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2527.912, y=209.2846, z=6045.838}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_1/Activity_RockBoardExplore"