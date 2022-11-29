-- 基础信息
local base_info = {
	group_id = 133310348
}

-- Trigger变量
local defs = {
	enter_region = 348012,
	leave_region = 348013,
	FindClue = 1,
	BeatMonster = 10,
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
	{ config_id = 348001, monster_id = 26090101, pos = { x = -2422.882, y = 255.247, z = 4252.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 26 },
	{ config_id = 348002, monster_id = 26090201, pos = { x = -2421.030, y = 255.514, z = 4255.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 26 },
	{ config_id = 348003, monster_id = 26120201, pos = { x = -2415.522, y = 256.926, z = 4265.777 }, rot = { x = 0.000, y = 198.069, z = 0.000 }, level = 32, drop_tag = "大蕈兽", isOneoff = true, pose_id = 201, area_id = 26 },
	{ config_id = 348004, monster_id = 26120101, pos = { x = -2425.285, y = 255.570, z = 4264.737 }, rot = { x = 0.000, y = 147.889, z = 0.000 }, level = 32, drop_tag = "大蕈兽", isOneoff = true, pose_id = 201, area_id = 26 },
	{ config_id = 348015, monster_id = 26090201, pos = { x = -2423.511, y = 255.231, z = 4257.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 26 },
	{ config_id = 348016, monster_id = 26090301, pos = { x = -2425.188, y = 255.026, z = 4255.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 26 },
	{ config_id = 348020, monster_id = 26090901, pos = { x = -2418.713, y = 255.554, z = 4249.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 26 },
	{ config_id = 348021, monster_id = 26090701, pos = { x = -2417.040, y = 256.105, z = 4254.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 26 },
	{ config_id = 348022, monster_id = 26090701, pos = { x = -2415.150, y = 256.169, z = 4250.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 26 },
	{ config_id = 348023, monster_id = 26090901, pos = { x = -2414.792, y = 256.562, z = 4256.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", isOneoff = true, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 348005, gadget_id = 70800240, pos = { x = -2463.912, y = 254.737, z = 4215.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 348006, gadget_id = 70360001, pos = { x = -2442.153, y = 252.175, z = 4209.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 26 },
	{ config_id = 348007, gadget_id = 70220103, pos = { x = -2456.989, y = 256.654, z = 4218.042 }, rot = { x = 0.000, y = 313.562, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 348008, gadget_id = 70800289, pos = { x = -2463.912, y = 254.737, z = 4215.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 },
	{ config_id = 348017, gadget_id = 70800289, pos = { x = -2422.882, y = 255.147, z = 4252.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 },
	{ config_id = 348019, gadget_id = 70310148, pos = { x = -2422.882, y = 255.147, z = 4252.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 348011, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2422.882, y = 255.147, z = 4252.573 }, area_id = 26 },
	{ config_id = 348012, shape = RegionShape.CYLINDER, radius = 140, pos = { x = -2429.592, y = 302.175, z = 4159.494 }, height = 250.000, area_id = 26 },
	{ config_id = 348013, shape = RegionShape.CYLINDER, radius = 160, pos = { x = -2429.592, y = 302.175, z = 4159.494 }, height = 250.000, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1348009, name = "ANY_MONSTER_DIE_348009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_348009", trigger_count = 0 },
	{ config_id = 1348010, name = "ANY_MONSTER_DIE_348010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_348010", action = "action_EVENT_ANY_MONSTER_DIE_348010", trigger_count = 0 },
	{ config_id = 1348011, name = "ENTER_REGION_348011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_348011", action = "action_EVENT_ENTER_REGION_348011" },
	{ config_id = 1348014, name = "ANY_MONSTER_DIE_348014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_348014", action = "action_EVENT_ANY_MONSTER_DIE_348014", trigger_count = 0 },
	{ config_id = 1348018, name = "GADGET_STATE_CHANGE_348018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_348018", action = "action_EVENT_GADGET_STATE_CHANGE_348018" },
	{ config_id = 1348024, name = "ANY_MONSTER_DIE_348024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_348024", action = "action_EVENT_ANY_MONSTER_DIE_348024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "FindClue", value = 0, no_refresh = true },
	{ config_id = 2, name = "BeatMonster", value = -1, no_refresh = true },
	{ config_id = 3, name = "FindRock", value = -1, no_refresh = true },
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
		gadgets = { 348006, 348017, 348019 },
		regions = { 348011, 348012, 348013 },
		triggers = { "ANY_MONSTER_DIE_348009", "ENTER_REGION_348011", "GADGET_STATE_CHANGE_348018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 348001, 348002, 348015, 348016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_348010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 348003, 348004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_348014" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 348005, 348007, 348008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 348020, 348021, 348022, 348023 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_348024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_348009(context, evt)
	-- 针对当前group内变量名为 "BeatMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "BeatMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_348010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_348010(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310348, 5)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310348, 2)
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_348011(context, evt)
	if evt.param1 ~= 348011 then return false end
	
	-- 判断是区域348011
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 348011 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_348011(context, evt)
	-- 变量"BeatMonster"赋值为0
	ScriptLib.SetGroupVariableValue(context, "BeatMonster", 0)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310348, 2)
	
	-- 针对当前group内变量名为 "FindClue" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FindClue", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 600161 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600161) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 348019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 348019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_348014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_348014(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310348, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310348, 3)
	
	-- 变量"FindRock"赋值为0
	ScriptLib.SetGroupVariableValue(context, "FindRock", 0)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 348017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 调用提示id为 600162 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600162) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-2456.675, y=256.3428, z=4220.109}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2456.675, y=256.3428, z=4220.109}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_348018(context, evt)
	if 348005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_348018(context, evt)
	-- 针对当前group内变量名为 "FindRock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FindRock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_348024(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_348024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310348, 3)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310348, 5)
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_1/Activity_RockBoardExplore"