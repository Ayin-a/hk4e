-- 基础信息
local base_info = {
	group_id = 220136004
}

-- DEFS_MISCS
local defs = {
 queue = {      
         
        [1] = { config_id = 4010, bullet_type = 3, duration = 5, shoot_time = 6, shoot_interval = 0.6, point_array = 2, point_id = {1,2},route_type = 1},
 [2] = { config_id = 4040, bullet_type = 2, duration = 5, shoot_time = 6, shoot_interval = 0.6, point_array = 9, point_id = {1,2},route_type = 1},
        [3] = { config_id = 4003, bullet_type = 1, duration = 5, shoot_time = 8, shoot_interval = 0.3, point_array = 7, point_id = {1,2},turn_mode = true,route_type = 1},
   [4] = { config_id = 4012, bullet_type = 1, duration = 5, shoot_time = 8, shoot_interval = 0.3, point_array = 3, point_id = {2,1},turn_mode = true,route_type = 1},
        [5] ={ config_id = 4011, bullet_type = 1, duration = 5, shoot_time = 10, shoot_interval = 0.25, point_array = 4, point_id = {1,2},route_type = 1},
        [6] = { config_id = 4013, bullet_type = 1, duration = 5, shoot_time = 5, shoot_interval = 0.5, point_array = 5, point_id = {1,2},route_type = 1},
  [7] = { config_id = 4035, bullet_type = 1, duration = 0, shoot_time = 5, shoot_interval = 0.4, point_array = 10, point_id = {1,2},turn_mode = true,route_type = 1},
  [8] = { config_id = 4036, bullet_type = 1, duration = 0, shoot_time = 5, shoot_interval = 0.4, point_array = 10, point_id = {3,1},turn_mode = true,route_type = 1},
[9] = { config_id = 4037, bullet_type = 1, duration = 0, shoot_time = 5, shoot_interval = 0.4, point_array = 11, point_id = {2,3},turn_mode = true,route_type = 1},
[10] = { config_id = 4038, bullet_type = 1, duration = 5, shoot_time = 5, shoot_interval = 0.4, point_array = 11, point_id = {1,2},turn_mode = true,route_type = 1},
[11] = { config_id = 4011, bullet_type = 1, duration = 0, shoot_time = 10, shoot_interval = 0.5, point_array = 14, point_id = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36},route_type = 1},
[12] = { config_id = 4003, bullet_type = 1, duration = 0, shoot_time = 10, shoot_interval = 0.5, point_array = 14, point_id = {10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,1,2,3,4,5,6,7,8,9},route_type = 1},
[13] = { config_id = 4037, bullet_type = 1, duration = 10, shoot_time = 10, shoot_interval = 0.5, point_array = 14, point_id = {21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20},route_type = 1},
[14] = { config_id = 4039, bullet_type = 3, duration = 0, shoot_time = 10, shoot_interval = 0.5, point_array = 12, point_id = {1,2},turn_mode = true,route_type = 1},
[15] = { config_id = 4041, bullet_type = 3, duration = 0, shoot_time = 10, shoot_interval = 0.5, point_array = 13, point_id = {1,2},turn_mode = true,route_type = 1},


    }
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
	[4001] = { config_id = 4001, gadget_id = 70310439, pos = { x = 775.951, y = 0.000, z = 657.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	-- 左
	[4003] = { config_id = 4003, gadget_id = 70310246, pos = { x = 787.884, y = 0.000, z = 676.853 }, rot = { x = 0.000, y = 309.809, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[4004] = { config_id = 4004, gadget_id = 70310240, pos = { x = 783.154, y = 0.000, z = 686.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4005] = { config_id = 4005, gadget_id = 70310180, pos = { x = 778.165, y = 0.000, z = 678.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 左
	[4010] = { config_id = 4010, gadget_id = 70310246, pos = { x = 787.884, y = 0.000, z = 676.853 }, rot = { x = 0.000, y = 270.274, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 上
	[4011] = { config_id = 4011, gadget_id = 70310246, pos = { x = 785.197, y = 0.000, z = 663.463 }, rot = { x = 0.000, y = 359.295, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 右
	[4012] = { config_id = 4012, gadget_id = 70310246, pos = { x = 763.195, y = 0.000, z = 677.645 }, rot = { x = 0.000, y = 131.992, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 下
	[4013] = { config_id = 4013, gadget_id = 70310246, pos = { x = 766.672, y = 0.000, z = 687.847 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[4015] = { config_id = 4015, gadget_id = 70310240, pos = { x = 779.139, y = 0.000, z = 686.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4016] = { config_id = 4016, gadget_id = 70310240, pos = { x = 775.121, y = 0.000, z = 686.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4017] = { config_id = 4017, gadget_id = 70310240, pos = { x = 771.258, y = 0.000, z = 686.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4018] = { config_id = 4018, gadget_id = 70310240, pos = { x = 767.866, y = 0.000, z = 686.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4019] = { config_id = 4019, gadget_id = 70310240, pos = { x = 785.466, y = 0.000, z = 672.682 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[4020] = { config_id = 4020, gadget_id = 70310240, pos = { x = 785.468, y = 0.000, z = 676.700 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[4021] = { config_id = 4021, gadget_id = 70310240, pos = { x = 785.468, y = 0.000, z = 680.563 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[4022] = { config_id = 4022, gadget_id = 70310240, pos = { x = 785.469, y = 0.000, z = 683.955 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[4023] = { config_id = 4023, gadget_id = 70310240, pos = { x = 785.466, y = 0.000, z = 668.667 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[4024] = { config_id = 4024, gadget_id = 70310240, pos = { x = 765.866, y = 0.000, z = 672.682 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[4025] = { config_id = 4025, gadget_id = 70310240, pos = { x = 765.867, y = 0.000, z = 676.700 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[4026] = { config_id = 4026, gadget_id = 70310240, pos = { x = 765.868, y = 0.000, z = 680.563 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[4027] = { config_id = 4027, gadget_id = 70310240, pos = { x = 765.868, y = 0.000, z = 683.955 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[4028] = { config_id = 4028, gadget_id = 70310240, pos = { x = 765.865, y = 0.000, z = 668.667 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[4029] = { config_id = 4029, gadget_id = 70310240, pos = { x = 783.397, y = 0.000, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4030] = { config_id = 4030, gadget_id = 70310240, pos = { x = 779.382, y = 0.000, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4031] = { config_id = 4031, gadget_id = 70310240, pos = { x = 775.364, y = 0.000, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4032] = { config_id = 4032, gadget_id = 70310240, pos = { x = 771.501, y = 0.000, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4033] = { config_id = 4033, gadget_id = 70310240, pos = { x = 768.109, y = 0.000, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 右移动
	[4034] = { config_id = 4034, gadget_id = 70310246, pos = { x = 763.195, y = 0.000, z = 677.645 }, rot = { x = 359.352, y = 91.158, z = 348.188 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 左上
	[4035] = { config_id = 4035, gadget_id = 70310246, pos = { x = 787.494, y = 0.000, z = 665.303 }, rot = { x = 0.000, y = 270.272, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 右上
	[4036] = { config_id = 4036, gadget_id = 70310246, pos = { x = 764.267, y = 0.000, z = 665.301 }, rot = { x = 0.000, y = 358.210, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 右下
	[4037] = { config_id = 4037, gadget_id = 70310246, pos = { x = 763.569, y = 0.000, z = 687.659 }, rot = { x = 0.000, y = 90.315, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 左下
	[4038] = { config_id = 4038, gadget_id = 70310246, pos = { x = 788.399, y = 0.000, z = 687.523 }, rot = { x = 0.000, y = 180.215, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 上旋转
	[4039] = { config_id = 4039, gadget_id = 70310246, pos = { x = 774.235, y = 0.000, z = 664.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 右
	[4040] = { config_id = 4040, gadget_id = 70310246, pos = { x = 763.195, y = 0.000, z = 677.645 }, rot = { x = 0.000, y = 90.112, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 下
	[4041] = { config_id = 4041, gadget_id = 70310246, pos = { x = 776.128, y = 0.000, z = 688.840 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[4045] = { config_id = 4045, gadget_id = 70310148, pos = { x = 776.183, y = 0.225, z = 676.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4046] = { config_id = 4046, gadget_id = 70360001, pos = { x = 775.998, y = 0.000, z = 675.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[4002] = { config_id = 4002, shape = RegionShape.SPHERE, radius = 3, pos = { x = 775.951, y = 0.000, z = 657.253 } },
	-- 到达底部
	[4043] = { config_id = 4043, shape = RegionShape.SPHERE, radius = 7, pos = { x = 775.473, y = -1.185, z = 676.840 } },
	-- 失败重新挑战
	[4048] = { config_id = 4048, shape = RegionShape.SPHERE, radius = 7, pos = { x = 775.473, y = -1.185, z = 676.840 }, team_ability_group_list = { "MonaDreamland_Enter_StartChallenge_Handle" } }
}

-- 触发器
triggers = {
	{ config_id = 1004002, name = "ENTER_REGION_4002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4002", action = "action_EVENT_ENTER_REGION_4002", trigger_count = 0 },
	{ config_id = 1004008, name = "CHALLENGE_SUCCESS_4008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "260", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4008", trigger_count = 0 },
	{ config_id = 1004009, name = "CHALLENGE_FAIL_4009", event = EventType.EVENT_CHALLENGE_FAIL, source = "260", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4009", trigger_count = 0 },
	{ config_id = 1004014, name = "QUEST_START_4014", event = EventType.EVENT_QUEST_START, source = "4007410", condition = "condition_EVENT_QUEST_START_4014", action = "action_EVENT_QUEST_START_4014", trigger_count = 0 },
	-- 到达底部
	{ config_id = 1004043, name = "ENTER_REGION_4043", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4043", action = "action_EVENT_ENTER_REGION_4043", trigger_count = 0 },
	-- 加保底光柱提示
	{ config_id = 1004044, name = "GROUP_LOAD_4044", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4044", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "once", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 4006, gadget_id = 70350083, pos = { x = 775.999, y = 0.000, z = 677.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } } }
	},
	triggers = {
		{ config_id = 1004007, name = "SELECT_OPTION_4007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4007", action = "action_EVENT_SELECT_OPTION_4007", trigger_count = 0 },
		{ config_id = 1004042, name = "GROUP_LOAD_4042", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4042", trigger_count = 0 },
		{ config_id = 1004047, name = "TIME_AXIS_PASS_4047", event = EventType.EVENT_TIME_AXIS_PASS, source = "star", condition = "", action = "action_EVENT_TIME_AXIS_PASS_4047", trigger_count = 0 }
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
	end_suite = 4,
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
		gadgets = { 4046 },
		regions = { 4043, 4048 },
		triggers = { "CHALLENGE_SUCCESS_4008", "CHALLENGE_FAIL_4009", "QUEST_START_4014", "ENTER_REGION_4043", "GROUP_LOAD_4044" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4001 },
		regions = { 4002 },
		triggers = { "ENTER_REGION_4002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 4003, 4004, 4005, 4010, 4011, 4012, 4013, 4015, 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4025, 4026, 4027, 4028, 4029, 4030, 4031, 4032, 4033, 4034, 4035, 4036, 4037, 4038, 4039, 4040, 4041 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 4045 },
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
function condition_EVENT_ENTER_REGION_4002(context, evt)
	if evt.param1 ~= 4002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "challenge1complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136004, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136004, 3)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "ballchallengecomplete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "star_shooter" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star_shooter", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4009(context, evt)
	-- 将本组内变量名为 "star_shooter" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star_shooter", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136004, 3)
	
	-- 创建id为4045的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4045 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_4014(context, evt)
	-- 判断变量"once"为0
	if ScriptLib.GetGroupVariableValue(context, "once") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_4014(context, evt)
	      -- 创建父挑战 
		  ScriptLib.CreateFatherChallenge(context, 260, 262, 61, {success = 1, fail = 1, fail_on_wipe = true})
		  ScriptLib.StartFatherChallenge(context, 260)
		  ScriptLib.AttachChildChallenge(context, 260, 262, 260,{3, 777, 30, 0, 0},{},{success=1, fail=1})
	  ScriptLib.AttachChildChallenge(context, 260, 261, 261,{60, 0},{},{success=1, fail=1})
	
	 ScriptLib.SetGroupVariableValue(context, "star_shooter", 1)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136004, 3)
	
	 ScriptLib.SetGroupVariableValue(context, "once", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4043(context, evt)
	if evt.param1 ~= 4043 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4043(context, evt)
	 ScriptLib.AddQuestProgress(context, "monamaze1complete")
	 ScriptLib.KillEntityByConfigId(context, { config_id = 4045 })
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4044(context, evt)
	 ScriptLib.SetGroupVariableValue(context, "once", 0)
	
	 if ScriptLib.GetHostQuestState(context,4007408)==2 then
	ScriptLib.CreateGadget(context, { config_id = 4045 }) 
	end
	
	return 0
end

require "V2_8/StarShooter"