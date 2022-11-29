-- 基础信息
local base_info = {
	group_id = 133301038
}

-- DEFS_MISCS
local BattleCfg = {
    -- RegionConfigID
    NearMaranaRegion = 38016,   --靠近无留坨播放CS的区域
    RanaroStartMoveRegion = 38017,  --玩家进入后，兰那罗引导玩家前往各个岛的区域
    EnterMainIslandRegion = 38018,  --判定玩家返回主岛的区域，决定Boss是否使用技能1。
    LeaveMainIslandRegion = 38018,  --判定玩家离开主岛的区域，决定Boss是否使用技能2、技能3。
    -- 回滚Point
    RevertPoint = 38045,
    -- GadgetConfigID
    BossCid = 38020,    --Boss
    LookCid = 38022,
    RanaroCid = 38023,  --兰那罗
    BlackMud = 38040,   --黑泥
    -- RanaroPointArray
    RanaroPointList = {               --兰那罗移动的路线
        [0] = {id = 330100001,list = {1,2,3,4,5,6,7,8,9,10,12,13}},
        [1] = {id = 330100003,list = {1,2,3,4,5,6,7,8}},
        [2] = {id = 330100004,list = {1,2,3,4,5,6,7,8,9,10,12,13,14}},
        [3] = {id = 330100005,list = {1,2,3,4,5,6,7,8,9,10,12,13}},
    },
    RanaroJumpPoint = {               --兰那罗在特定路线中的跳跃点
        [0] = 38015, -- 兰那罗第一次抵达岛上的点
        [1] = 38037,
        [2] = 38038,
        [3] = 38039,
        [4] = 38021, -- 兰那罗回到中间的点
    },
    -- Suite
    HookSuites = {2,3,4},           --钩爪Suite，依次对应三个小岛。
    LastBattleSuite = 5,            --与无留坨决战时Suite，有AbilityGroup和空气墙
    SalanSuite = 6,                 --endSuite，莎兰树Suite
    MonsterLoopSuite = {7,8,9},       --与无留坨决战时循环刷Monster的Suite
    -- CutSceneID
    BossAppearCutScene = {id = 89,time = 17}, --Cs_Sumeru_WitherForest_WQ7303713_Creation_Convert
    RanaroCrownCutScene = {id =90, time = 71}, --Cs_WQ7303705_Battle_Convert
    BossDieCutScene = {id =91, time = 10}, --Cs_Sumeru_WitherForest_WQ7303707_Die_Convert
    SalanAppearCutScene = {id =92, time = 20}, --Cs_Sumeru_WitherForest_WQ7303709_Tree_Convert
    -- 任务相关参数
    QuestMSG = "fin",
    -- Reminder相关
    ReminderList = {
        [0] = 33010218,
        -- 主岛返回中
        [1] = 33010225,
        [2] = 33010233,
        [3] = 33010242,
        -- Boss锁血中
        [4] = 33010227,
        [5] = 33010235,
    }
}

local QuestCfg = {
    MissionStart01 = "7303704",
    MissionStart02 = "7303705",
    BossAppear = "7303704",
    BossThirdDefeat01 = "7303704",
    BossThirdDefeat02 = "7303704",
    BossDie = "7303706",
    MissionOver ="7303709",
    MissionRevert = "7303702",
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[38001] = { config_id = 38001, monster_id = 22050101, pos = { x = -684.130, y = -150.565, z = 4038.317 }, rot = { x = 0.000, y = 186.579, z = 0.000 }, level = 80, affix = { 1019, 1030, 1042 }, pose_id = 101, area_id = 25 },
	[38002] = { config_id = 38002, monster_id = 22050201, pos = { x = -671.922, y = -150.547, z = 4032.448 }, rot = { x = 0.000, y = 235.252, z = 0.000 }, level = 80, affix = { 1019, 1030, 1042 }, pose_id = 101, area_id = 25 },
	[38003] = { config_id = 38003, monster_id = 22040101, pos = { x = -681.812, y = -150.501, z = 4038.325 }, rot = { x = 0.000, y = 178.528, z = 0.000 }, level = 80, affix = { 1030, 1042 }, pose_id = 101, area_id = 25 },
	[38005] = { config_id = 38005, monster_id = 22040201, pos = { x = -674.722, y = -150.390, z = 4028.425 }, rot = { x = 0.000, y = 298.765, z = 0.000 }, level = 80, affix = { 1030, 1042 }, pose_id = 101, area_id = 25 },
	[38007] = { config_id = 38007, monster_id = 22040101, pos = { x = -686.262, y = -150.569, z = 4036.475 }, rot = { x = 0.000, y = 138.946, z = 0.000 }, level = 80, affix = { 1030, 1042 }, pose_id = 101, area_id = 25 },
	[38008] = { config_id = 38008, monster_id = 22040201, pos = { x = -673.396, y = -150.468, z = 4031.519 }, rot = { x = 0.000, y = 267.219, z = 0.000 }, level = 80, affix = { 1030, 1042 }, pose_id = 101, area_id = 25 },
	[38009] = { config_id = 38009, monster_id = 22040101, pos = { x = -681.656, y = -150.508, z = 4041.389 }, rot = { x = 0.000, y = 178.528, z = 0.000 }, level = 80, affix = { 1019, 1030, 1042 }, pose_id = 101, area_id = 25 },
	[38010] = { config_id = 38010, monster_id = 22040101, pos = { x = -686.040, y = -150.453, z = 4041.609 }, rot = { x = 0.000, y = 178.528, z = 0.000 }, level = 80, affix = { 1030, 1042 }, pose_id = 101, area_id = 25 },
	[38011] = { config_id = 38011, monster_id = 22040101, pos = { x = -668.095, y = -150.364, z = 4032.577 }, rot = { x = 0.000, y = 253.498, z = 0.000 }, level = 80, affix = { 1019, 1030, 1042 }, pose_id = 101, area_id = 25 },
	[38012] = { config_id = 38012, monster_id = 22040101, pos = { x = -671.730, y = -150.596, z = 4035.997 }, rot = { x = 0.000, y = 225.119, z = 0.000 }, level = 80, affix = { 1019, 1030, 1042 }, pose_id = 101, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[38013] = { config_id = 38013, gadget_id = 70220103, pos = { x = -704.232, y = -133.115, z = 4007.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38014] = { config_id = 38014, gadget_id = 70330252, pos = { x = -679.591, y = -150.541, z = 4034.048 }, rot = { x = 0.000, y = 155.707, z = 0.000 }, level = 33, area_id = 25 },
	-- 无留坨的位置必须贴地！
	[38020] = { config_id = 38020, gadget_id = 72000019, pos = { x = -679.007, y = -150.389, z = 4034.530 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 80, state = GadgetState.Action02, area_id = 25 },
	-- 管理玩家视野时召唤
	[38022] = { config_id = 38022, gadget_id = 70350451, pos = { x = -680.534, y = -150.231, z = 4033.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38023] = { config_id = 38023, gadget_id = 70380231, pos = { x = -735.490, y = -136.851, z = 3815.290 }, rot = { x = 18.926, y = 305.136, z = 353.149 }, level = 33, state = GadgetState.GearAction1, start_route = false, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 25 },
	[38024] = { config_id = 38024, gadget_id = 70220103, pos = { x = -766.408, y = -143.769, z = 3982.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38025] = { config_id = 38025, gadget_id = 70220103, pos = { x = -734.288, y = -137.508, z = 3992.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38026] = { config_id = 38026, gadget_id = 70220103, pos = { x = -681.797, y = -136.840, z = 4030.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38027] = { config_id = 38027, gadget_id = 70220103, pos = { x = -727.732, y = -143.272, z = 4065.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38028] = { config_id = 38028, gadget_id = 70220103, pos = { x = -697.431, y = -134.951, z = 4043.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38029] = { config_id = 38029, gadget_id = 70220103, pos = { x = -682.812, y = -132.523, z = 4031.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38030] = { config_id = 38030, gadget_id = 70220103, pos = { x = -616.014, y = -143.849, z = 4046.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38031] = { config_id = 38031, gadget_id = 70220103, pos = { x = -644.008, y = -137.279, z = 4037.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38032] = { config_id = 38032, gadget_id = 70220103, pos = { x = -674.401, y = -134.598, z = 4031.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38034] = { config_id = 38034, gadget_id = 72000024, pos = { x = -679.548, y = -150.387, z = 4034.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38035] = { config_id = 38035, gadget_id = 72000025, pos = { x = -661.768, y = -149.881, z = 4037.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38036] = { config_id = 38036, gadget_id = 70290420, pos = { x = -679.591, y = -150.541, z = 4034.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	[38040] = { config_id = 38040, gadget_id = 72000026, pos = { x = -679.007, y = -150.389, z = 4034.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 25 },
	-- 防止玩家在终战的时候跑出去
	[38046] = { config_id = 38046, gadget_id = 72000028, pos = { x = -679.696, y = -150.445, z = 4032.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
	-- 玩家第一次进入时切CS
	[38016] = { config_id = 38016, shape = RegionShape.SPHERE, radius = 20, pos = { x = -679.548, y = -150.387, z = 4034.548 }, area_id = 25 },
	-- 在特定流程中，玩家进入后兰纳罗会跳出
	[38017] = { config_id = 38017, shape = RegionShape.SPHERE, radius = 10, pos = { x = -686.407, y = -150.701, z = 3999.130 }, area_id = 25 },
	-- 玩家进入该区域Boss切回岛1技能
	[38018] = { config_id = 38018, shape = RegionShape.POLYGON, pos = { x = -676.785, y = -140.445, z = 4031.948 }, height = 95.610, point_array = { { x = -664.818, y = 3998.836 }, { x = -645.893, y = 4029.798 }, { x = -658.169, y = 4056.109 }, { x = -681.586, y = 4065.059 }, { x = -702.284, y = 4045.615 }, { x = -707.677, y = 4028.918 }, { x = -701.404, y = 4006.988 } }, area_id = 25 },
	-- 戴冠Region
	[38033] = { config_id = 38033, shape = RegionShape.SPHERE, radius = 50, pos = { x = -679.548, y = -150.387, z = 4034.548 }, area_id = 25 }
}

-- 触发器
triggers = {
	-- Group针对 7303709 保底
	{ config_id = 1038004, name = "GROUP_LOAD_38004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_38004", trigger_count = 0 },
	-- 1
	{ config_id = 1038041, name = "GADGET_CREATE_38041", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_38041", action = "action_EVENT_GADGET_CREATE_38041", trigger_count = 0 },
	-- 2
	{ config_id = 1038042, name = "GADGET_CREATE_38042", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_38042", action = "action_EVENT_GADGET_CREATE_38042", trigger_count = 0 },
	-- 3
	{ config_id = 1038043, name = "GADGET_CREATE_38043", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_38043", action = "action_EVENT_GADGET_CREATE_38043", trigger_count = 0 }
}

-- 点位
points = {
	-- 兰那罗第一次抵达主岛的点
	[38015] = { config_id = 38015, pos = { x = -685.991, y = -149.938, z = 4007.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 25 },
	-- 兰纳罗创生点
	[38021] = { config_id = 38021, pos = { x = -680.724, y = -148.965, z = 4024.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 25 },
	-- 兰纳罗A岛创生点
	[38037] = { config_id = 38037, pos = { x = -771.797, y = -149.571, z = 3974.679 }, rot = { x = 0.000, y = 295.042, z = 0.000 }, area_id = 25 },
	-- 兰纳罗B岛创生点
	[38038] = { config_id = 38038, pos = { x = -741.619, y = -149.861, z = 4069.175 }, rot = { x = 0.000, y = 356.561, z = 0.000 }, area_id = 25 },
	-- 兰纳罗C岛创生点
	[38039] = { config_id = 38039, pos = { x = -606.890, y = -149.900, z = 4049.262 }, rot = { x = 0.000, y = 48.641, z = 0.000 }, area_id = 25 },
	-- 任务回滚时传送点
	[38045] = { config_id = 38045, pos = { x = -626.987, y = -134.680, z = 3790.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 25 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 38019, shape = RegionShape.POLYGON, pos = { x = -681.471, y = -145.871, z = 4009.602 }, height = 50.058, point_array = { { x = -695.436, y = 3952.059 }, { x = -721.343, y = 3970.417 }, { x = -744.011, y = 3992.239 }, { x = -731.028, y = 4015.178 }, { x = -720.307, y = 4046.546 }, { x = -704.161, y = 4067.145 }, { x = -659.472, y = 4066.047 }, { x = -618.931, y = 4021.705 }, { x = -649.510, y = 3963.177 } }, area_id = 25 },
		{ config_id = 38044, shape = RegionShape.SPHERE, radius = 200, pos = { x = -741.351, y = -181.240, z = 3981.178 }, area_id = 25 }
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
	end_suite = 6,
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
		gadgets = { 38034, 38040 },
		regions = { 38016, 38017, 38018 },
		triggers = { "GADGET_CREATE_38041", "GADGET_CREATE_38042", "GADGET_CREATE_38043" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 38013, 38024, 38025, 38026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 38027, 38028, 38029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 38030, 38031, 38032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 最终战加载用,
		monsters = { },
		gadgets = { 38046 },
		regions = { 38033 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 38014, 38035, 38036 },
		regions = { },
		triggers = { "GROUP_LOAD_38004" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 挣扎环第一波怪物,
		monsters = { 38003, 38005, 38007, 38008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 38009, 38010, 38011, 38012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 38001, 38002 },
		gadgets = { },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_38004(context, evt)
	-- 如果09未完成，Group扭转到Suite1
	if 3 ~= ScriptLib.GetHostQuestState(context,7303709) then
		ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })
		return 0
	end
	
	-- 如果09任务已完成，Protect是否处理过
	local protectValue = ScriptLib.GetGroupVariableValue(context, "Protect")
	ScriptLib.PrintContextLog(context, "## TD_BossMarana SceneTag处理 protectValue = " .. protectValue)
	if protectValue == 0 then
		if ScriptLib.CheckSceneTag(context, 3,1101 ) then
			ScriptLib.DelSceneTag(context,3,1101)
		end
		if ScriptLib.CheckSceneTag(context, 3,1103 ) then
			ScriptLib.DelSceneTag(context,3,1103)
		end
		if ScriptLib.CheckSceneTag(context, 3,1105 ) then
			ScriptLib.DelSceneTag(context,3,1105)
		end
		if not ScriptLib.CheckSceneTag(context, 3,1102 ) then
			ScriptLib.AddSceneTag(context,3,1102)
		end
		if not ScriptLib.CheckSceneTag(context, 3,1104 ) then
			ScriptLib.AddSceneTag(context,3,1104)
		end
		if not ScriptLib.CheckSceneTag(context, 3,1106 ) then
			ScriptLib.AddSceneTag(context,3,1106)
		end
		ScriptLib.SetGroupVariableValue(context,"Protect",1)
		return 0
	end
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7303709") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_38041(context, evt)
	if 38024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_38041(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-766.4076, y=-143.7692, z=3982.114}，持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-766.4076, y=-143.7692, z=3982.114}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_38042(context, evt)
	if 38028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_38042(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-727.7316, y=-143.2718, z=4065.241}，持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-727.7316, y=-143.2718, z=4065.241}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_38043(context, evt)
	if 38030 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_38043(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-616.0141, y=-143.8488, z=4046.944}，持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-616.0141, y=-143.8488, z=4046.944}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/Boss_Marana"
require "V3_0/DeathFieldStandard"