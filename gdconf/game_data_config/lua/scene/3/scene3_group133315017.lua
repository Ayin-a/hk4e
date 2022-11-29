-- 基础信息
local base_info = {
	group_id = 133315017
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
	{ config_id = 17001, gadget_id = 70310217, pos = { x = 219.851, y = 89.380, z = 2929.606 }, rot = { x = 0.272, y = 7.662, z = 359.779 }, level = 27, state = GadgetState.GatherDrop, persistent = true, area_id = 20 },
	{ config_id = 17002, gadget_id = 70310217, pos = { x = 95.819, y = 92.969, z = 2976.083 }, rot = { x = 0.000, y = 176.220, z = 0.000 }, level = 27, state = GadgetState.GatherDrop, persistent = true, area_id = 20 },
	{ config_id = 17003, gadget_id = 70310217, pos = { x = 126.790, y = 103.219, z = 2843.443 }, rot = { x = 0.000, y = 137.738, z = 0.000 }, level = 27, state = GadgetState.GatherDrop, persistent = true, area_id = 20 },
	{ config_id = 17006, gadget_id = 70310228, pos = { x = 152.104, y = 116.121, z = 2953.183 }, rot = { x = 3.500, y = 0.000, z = 0.000 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 17007, gadget_id = 70360365, pos = { x = 152.104, y = 115.802, z = 2953.183 }, rot = { x = 3.500, y = 0.000, z = 0.000 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 17010, gadget_id = 70500000, pos = { x = 152.104, y = 116.121, z = 2953.183 }, rot = { x = 3.500, y = 0.000, z = 0.000 }, level = 27, point_type = 9301, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	-- 保底工具
	{ config_id = 17015, gadget_id = 70360001, pos = { x = 150.012, y = 115.461, z = 2953.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 17016, gadget_id = 70220103, pos = { x = 151.887, y = 120.896, z = 2951.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 左侧石块   藏封印机关
	{ config_id = 17017, gadget_id = 70310216, pos = { x = 219.713, y = 88.339, z = 2929.764 }, rot = { x = 28.320, y = 201.743, z = 11.535 }, level = 27, persistent = true, area_id = 20 },
	-- 右侧石块2 藏封印机关
	{ config_id = 17019, gadget_id = 70310215, pos = { x = 95.944, y = 91.674, z = 2977.771 }, rot = { x = 22.754, y = 351.971, z = 356.877 }, level = 27, persistent = true, area_id = 20 },
	-- 右侧石块1
	{ config_id = 17021, gadget_id = 70310216, pos = { x = 76.458, y = 102.460, z = 2965.544 }, rot = { x = 0.000, y = 343.515, z = 348.312 }, level = 27, persistent = true, area_id = 20 },
	-- 中央石块 藏封印机关
	{ config_id = 17030, gadget_id = 70310215, pos = { x = 125.221, y = 103.663, z = 2845.176 }, rot = { x = 0.000, y = 118.671, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	-- 全部解锁后
	{ config_id = 17008, shape = RegionShape.SPHERE, radius = 40, pos = { x = 157.601, y = 98.955, z = 2950.286 }, area_id = 20 },
	-- 左侧 石块1 藏封印机关
	{ config_id = 17018, shape = RegionShape.SPHERE, radius = 8, pos = { x = 221.236, y = 89.964, z = 2929.825 }, area_id = 20 },
	-- 右侧 石块1 空
	{ config_id = 17022, shape = RegionShape.SPHERE, radius = 5, pos = { x = 75.642, y = 103.685, z = 2966.885 }, area_id = 20 },
	-- 右侧 石块2 藏封印机关
	{ config_id = 17024, shape = RegionShape.SPHERE, radius = 8, pos = { x = 92.943, y = 93.323, z = 2975.934 }, area_id = 20 },
	-- 右侧 石块4 藤蔓机关
	{ config_id = 17028, shape = RegionShape.SPHERE, radius = 5, pos = { x = 122.371, y = 97.712, z = 2974.149 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 解锁一个，变量+1
	{ config_id = 1017004, name = "GADGET_STATE_CHANGE_17004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17004", action = "action_EVENT_GADGET_STATE_CHANGE_17004" },
	-- 解锁一个，变量+1
	{ config_id = 1017005, name = "GADGET_STATE_CHANGE_17005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17005", action = "action_EVENT_GADGET_STATE_CHANGE_17005" },
	-- 全部解锁后
	{ config_id = 1017008, name = "ENTER_REGION_17008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17008", action = "action_EVENT_ENTER_REGION_17008" },
	{ config_id = 1017009, name = "ANY_GADGET_DIE_17009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_17009", action = "action_EVENT_ANY_GADGET_DIE_17009", trigger_count = 0 },
	-- 变量=1，封印-1
	{ config_id = 1017011, name = "VARIABLE_CHANGE_17011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_17011", action = "action_EVENT_VARIABLE_CHANGE_17011" },
	-- 解锁一个，变量+1
	{ config_id = 1017012, name = "GADGET_STATE_CHANGE_17012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17012", action = "action_EVENT_GADGET_STATE_CHANGE_17012" },
	-- 变量=2，封印-2
	{ config_id = 1017013, name = "VARIABLE_CHANGE_17013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_17013", action = "action_EVENT_VARIABLE_CHANGE_17013" },
	-- 变量=3，封印-3
	{ config_id = 1017014, name = "VARIABLE_CHANGE_17014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_17014", action = "action_EVENT_VARIABLE_CHANGE_17014" },
	-- 左侧 石块1 藏封印机关
	{ config_id = 1017018, name = "ENTER_REGION_17018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17018", action = "action_EVENT_ENTER_REGION_17018" },
	-- 保底干掉封印
	{ config_id = 1017020, name = "GROUP_LOAD_17020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_17020", action = "action_EVENT_GROUP_LOAD_17020", trigger_count = 0 },
	-- 右侧 石块1 空
	{ config_id = 1017022, name = "ENTER_REGION_17022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17022", action = "action_EVENT_ENTER_REGION_17022" },
	-- 右侧 石块1 空
	{ config_id = 1017023, name = "ANY_GADGET_DIE_17023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_17023", action = "action_EVENT_ANY_GADGET_DIE_17023" },
	-- 右侧 石块2 藏封印机关
	{ config_id = 1017024, name = "ENTER_REGION_17024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17024", action = "action_EVENT_ENTER_REGION_17024" },
	-- 右侧 石块2 炸开石头
	{ config_id = 1017025, name = "ANY_GADGET_DIE_17025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_17025", action = "action_EVENT_ANY_GADGET_DIE_17025", trigger_count = 0 },
	-- 水冲下来   干掉钵参花和底座  
	{ config_id = 1017027, name = "QUEST_START_17027", event = EventType.EVENT_QUEST_START, source = "7306334", condition = "", action = "action_EVENT_QUEST_START_17027", trigger_count = 0 },
	-- 右侧 石块4 藤蔓机关
	{ config_id = 1017028, name = "ENTER_REGION_17028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17028", action = "action_EVENT_ENTER_REGION_17028" },
	-- 左侧 石块1 炸开石头
	{ config_id = 1017029, name = "ANY_GADGET_DIE_17029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_17029", action = "action_EVENT_ANY_GADGET_DIE_17029", trigger_count = 0 },
	-- 延迟解封第一个封印
	{ config_id = 1017031, name = "TIME_AXIS_PASS_17031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_17031", action = "action_EVENT_TIME_AXIS_PASS_17031" }
}

-- 点位
points = {
	{ config_id = 17032, pos = { x = 220.393, y = 90.540, z = 2929.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 },
	{ config_id = 17033, pos = { x = 96.403, y = 95.784, z = 2977.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1017026, name = "GROUP_LOAD_17026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 17006, 17007, 17010, 17015, 17017, 17019, 17021, 17030 },
		regions = { 17008, 17018, 17022, 17024, 17028 },
		triggers = { "GADGET_STATE_CHANGE_17004", "GADGET_STATE_CHANGE_17005", "ENTER_REGION_17008", "ANY_GADGET_DIE_17009", "VARIABLE_CHANGE_17011", "GADGET_STATE_CHANGE_17012", "VARIABLE_CHANGE_17013", "VARIABLE_CHANGE_17014", "ENTER_REGION_17018", "GROUP_LOAD_17020", "ENTER_REGION_17022", "ANY_GADGET_DIE_17023", "ENTER_REGION_17024", "ANY_GADGET_DIE_17025", "QUEST_START_17027", "ENTER_REGION_17028", "ANY_GADGET_DIE_17029", "TIME_AXIS_PASS_17031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 17016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 17006, 17007, 17010, 17017, 17019, 17021, 17030 },
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
function condition_EVENT_GADGET_STATE_CHANGE_17004(context, evt)
	if 17001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17004(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17005(context, evt)
	if 17002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17005(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17008(context, evt)
	if evt.param1 ~= 17008 then return false end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7306328)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	-- 判断是区域17008
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 17008 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17008(context, evt)
	-- 调用提示id为 7306332 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306332) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_17009(context, evt)
	if 17030 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_17009(context, evt)
	-- 创建id为17003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 17003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_17011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_17011(context, evt)
	-- 通知场景上的所有玩家播放名字为69 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 69, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"unlock"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "unlock", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17012(context, evt)
	if 17003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17012(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_17013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为2
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_17013(context, evt)
	-- 将configid为 17007 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17007, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知场景上的所有玩家播放名字为69 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 69, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_17014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为3
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_17014(context, evt)
	-- 将configid为 17007 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17007, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知场景上的所有玩家播放名字为69 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 69, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315017, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17018(context, evt)
	if evt.param1 ~= 17018 then return false end
	
	-- 判断是区域17018
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 17018 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17018(context, evt)
	-- 调用提示id为 7306311 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306311) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=220.3932, y=90.54044, z=2929.329}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=220.3932, y=90.54044, z=2929.329}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_17020(context, evt)
	-- 判断变量"unlock"为3
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_17020(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 17007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17022(context, evt)
	if evt.param1 ~= 17022 then return false end
	
	-- 判断是区域17022
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 17022 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17022(context, evt)
	-- 调用提示id为 7306307 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_17023(context, evt)
	if 17021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_17023(context, evt)
	-- 调用提示id为 7306308 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306308) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17024(context, evt)
	if evt.param1 ~= 17024 then return false end
	
	-- 判断是区域17024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 17024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17024(context, evt)
	-- 调用提示id为 7306309 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306309) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=96.40336, y=95.78428, z=2977.272}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=96.40336, y=95.78428, z=2977.272}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_17025(context, evt)
	if 17019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_17025(context, evt)
	-- 创建id为17002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 17002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 7306310 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306310) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_17027(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315017, 3)
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133315310, monsters = {}, gadgets = {310001} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17028(context, evt)
	if evt.param1 ~= 17028 then return false end
	
	-- 判断是区域17028
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 17028 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17028(context, evt)
	-- 调用提示id为 7306303 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306303) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_17029(context, evt)
	if 17017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_17029(context, evt)
	-- 创建id为17001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 17001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 7306312 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306312) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_17031(context, evt)
	if "unlock" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_17031(context, evt)
	-- 将configid为 17007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end