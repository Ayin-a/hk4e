-- 基础信息
local base_info = {
	group_id = 220136007
}

-- DEFS_MISCS
local defs = {
    queue = {
           [1] = { config_id = 7006, bullet_type = 3, duration = 5, shoot_time = 8, shoot_interval = 0.75, point_array = 3, point_id = {1,2},turn_mode = true,route_type = 1},
          --右转
           [2] = { config_id = 7004, bullet_type = 2, duration = 5, shoot_time = 8, shoot_interval = 0.75, point_array = 2, point_id = {1,2},route_type = 1},
           --上不规则移动单
           [3] = { config_id = 7013, bullet_type = 1, duration = 0, shoot_time = 30, shoot_interval = 0.5, point_array = 15, point_id = {1,2,3,4},turn_mode = true,route_type = 2},
           --下往复旋转发五个
           [4] = { config_id = 7006, bullet_type = 3, duration = 1, shoot_time = 10, shoot_interval = 1, point_array = 9, point_id = {1,2},route_type = 1},
           [5] = { config_id = 7004, bullet_type = 3, duration = 9, shoot_time = 9, shoot_interval = 1, point_array = 2, point_id = {1,2},route_type = 1},
           [6] = { config_id = 7005, bullet_type = 3, duration = 2, shoot_time = 7, shoot_interval = 0.5, point_array = 12, point_id = {1,2},turn_mode = true,route_type = 1},
           [7] = { config_id = 7007, bullet_type = 3, duration = 3, shoot_time = 8, shoot_interval = 0.5, point_array = 13, point_id = {1,2},turn_mode = true,route_type = 1},
           [8] = { config_id = 7007, bullet_type = 1, duration = 5, shoot_time = 10, shoot_interval = 0.5, point_array = 13, point_id = {1,2},turn_mode = true,route_type = 1},
           [9] = { config_id = 7014, bullet_type = 1, duration = 0, shoot_time = 10, shoot_interval = 0.5, point_array = 10, point_id = {1,2},turn_mode = true,route_type = 1},
           [10] = { config_id = 7015, bullet_type = 1, duration = 0, shoot_time = 10, shoot_interval = 0.5, point_array = 10, point_id = {3,1},turn_mode = true,route_type = 1},
           [11] = { config_id = 7016, bullet_type = 1, duration = 0, shoot_time = 10, shoot_interval = 0.5, point_array = 11, point_id = {2,3},turn_mode = true,route_type = 1},
           [12] = { config_id = 7017, bullet_type = 1, duration = 10, shoot_time = 10, shoot_interval = 0.5, point_array = 11, point_id = {1,2},turn_mode = true,route_type = 1},
           [13] = { config_id = 7005, bullet_type = 2, duration = 0, shoot_time = 15, shoot_interval = 1, point_array = 14, point_id = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36},route_type = 1},
          [14] = { config_id = 7007, bullet_type = 2, duration = 10, shoot_time = 15, shoot_interval = 1, point_array = 14, point_id = {18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17},route_type = 1},
   
     
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
	[7001] = { config_id = 7001, gadget_id = 70310439, pos = { x = 775.951, y = 0.000, z = 657.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[7002] = { config_id = 7002, gadget_id = 70310180, pos = { x = 778.165, y = 0.000, z = 678.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7003] = { config_id = 7003, gadget_id = 70350083, pos = { x = 775.999, y = 0.000, z = 677.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } } },
	-- 左
	[7004] = { config_id = 7004, gadget_id = 70310246, pos = { x = 796.446, y = 0.000, z = 677.237 }, rot = { x = 0.000, y = 270.274, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 上
	[7005] = { config_id = 7005, gadget_id = 70310246, pos = { x = 775.962, y = 0.000, z = 652.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 右
	[7006] = { config_id = 7006, gadget_id = 70310246, pos = { x = 756.540, y = 0.000, z = 677.251 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 下
	[7007] = { config_id = 7007, gadget_id = 70310246, pos = { x = 777.737, y = 0.000, z = 696.852 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 中心
	[7013] = { config_id = 7013, gadget_id = 70310246, pos = { x = 775.807, y = 0.000, z = 677.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 左上
	[7014] = { config_id = 7014, gadget_id = 70310246, pos = { x = 787.494, y = 0.000, z = 665.303 }, rot = { x = 0.000, y = 352.994, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 右上
	[7015] = { config_id = 7015, gadget_id = 70310246, pos = { x = 764.267, y = 0.000, z = 665.301 }, rot = { x = 0.000, y = 358.210, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 右下
	[7016] = { config_id = 7016, gadget_id = 70310246, pos = { x = 763.569, y = 0.000, z = 687.659 }, rot = { x = 0.000, y = 90.315, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	-- 左下
	[7017] = { config_id = 7017, gadget_id = 70310246, pos = { x = 788.399, y = 0.000, z = 687.523 }, rot = { x = 0.000, y = 180.215, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	[7018] = { config_id = 7018, gadget_id = 70310240, pos = { x = 783.154, y = 1.558, z = 686.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7019] = { config_id = 7019, gadget_id = 70310240, pos = { x = 779.139, y = 1.558, z = 686.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7020] = { config_id = 7020, gadget_id = 70310240, pos = { x = 775.121, y = 1.558, z = 686.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7021] = { config_id = 7021, gadget_id = 70310240, pos = { x = 771.258, y = 1.558, z = 686.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7022] = { config_id = 7022, gadget_id = 70310240, pos = { x = 767.866, y = 1.558, z = 686.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7023] = { config_id = 7023, gadget_id = 70310240, pos = { x = 785.466, y = 1.558, z = 672.682 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7024] = { config_id = 7024, gadget_id = 70310240, pos = { x = 785.468, y = 1.558, z = 676.700 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7025] = { config_id = 7025, gadget_id = 70310240, pos = { x = 785.468, y = 1.558, z = 680.563 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7026] = { config_id = 7026, gadget_id = 70310240, pos = { x = 785.469, y = 1.558, z = 683.955 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7027] = { config_id = 7027, gadget_id = 70310240, pos = { x = 785.466, y = 1.558, z = 668.667 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7028] = { config_id = 7028, gadget_id = 70310240, pos = { x = 765.866, y = 1.558, z = 672.682 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7029] = { config_id = 7029, gadget_id = 70310240, pos = { x = 765.867, y = 1.558, z = 676.700 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7030] = { config_id = 7030, gadget_id = 70310240, pos = { x = 765.868, y = 1.558, z = 680.563 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7031] = { config_id = 7031, gadget_id = 70310240, pos = { x = 765.868, y = 1.558, z = 683.955 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7032] = { config_id = 7032, gadget_id = 70310240, pos = { x = 765.865, y = 1.558, z = 668.667 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7033] = { config_id = 7033, gadget_id = 70310240, pos = { x = 783.397, y = 1.558, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7034] = { config_id = 7034, gadget_id = 70310240, pos = { x = 779.382, y = 1.558, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7035] = { config_id = 7035, gadget_id = 70310240, pos = { x = 775.364, y = 1.558, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7036] = { config_id = 7036, gadget_id = 70310240, pos = { x = 771.501, y = 1.558, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7037] = { config_id = 7037, gadget_id = 70310240, pos = { x = 768.109, y = 1.558, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- -
	[7038] = { config_id = 7038, gadget_id = 70310240, pos = { x = 783.154, y = 4.999, z = 686.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7039] = { config_id = 7039, gadget_id = 70310240, pos = { x = 779.139, y = 4.999, z = 686.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7040] = { config_id = 7040, gadget_id = 70310240, pos = { x = 775.121, y = 4.999, z = 686.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7041] = { config_id = 7041, gadget_id = 70310240, pos = { x = 771.258, y = 4.999, z = 686.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7042] = { config_id = 7042, gadget_id = 70310240, pos = { x = 767.866, y = 4.999, z = 686.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7043] = { config_id = 7043, gadget_id = 70310240, pos = { x = 785.466, y = 4.999, z = 672.485 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7044] = { config_id = 7044, gadget_id = 70310240, pos = { x = 785.468, y = 4.999, z = 676.700 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7045] = { config_id = 7045, gadget_id = 70310240, pos = { x = 785.468, y = 4.999, z = 680.563 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7046] = { config_id = 7046, gadget_id = 70310240, pos = { x = 785.469, y = 4.999, z = 683.955 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7047] = { config_id = 7047, gadget_id = 70310240, pos = { x = 785.466, y = 4.999, z = 668.667 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7048] = { config_id = 7048, gadget_id = 70310240, pos = { x = 765.866, y = 4.999, z = 672.682 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7049] = { config_id = 7049, gadget_id = 70310240, pos = { x = 765.867, y = 4.999, z = 676.700 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7050] = { config_id = 7050, gadget_id = 70310240, pos = { x = 765.868, y = 4.999, z = 680.563 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7051] = { config_id = 7051, gadget_id = 70310240, pos = { x = 765.868, y = 4.999, z = 683.955 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7052] = { config_id = 7052, gadget_id = 70310240, pos = { x = 765.865, y = 4.999, z = 668.667 }, rot = { x = 0.000, y = 90.014, z = 0.000 }, level = 1 },
	[7053] = { config_id = 7053, gadget_id = 70310240, pos = { x = 783.397, y = 4.999, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7054] = { config_id = 7054, gadget_id = 70310240, pos = { x = 779.382, y = 4.999, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7055] = { config_id = 7055, gadget_id = 70310240, pos = { x = 775.364, y = 4.999, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7056] = { config_id = 7056, gadget_id = 70310240, pos = { x = 771.501, y = 4.999, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7057] = { config_id = 7057, gadget_id = 70310240, pos = { x = 768.109, y = 4.999, z = 667.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[7058] = { config_id = 7058, gadget_id = 70310241, pos = { x = 774.268, y = 7.440, z = 677.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[7008] = { config_id = 7008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 775.951, y = 0.000, z = 657.253 } }
}

-- 触发器
triggers = {
	{ config_id = 1007008, name = "ENTER_REGION_7008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7008", action = "action_EVENT_ENTER_REGION_7008", trigger_count = 0 },
	{ config_id = 1007009, name = "SELECT_OPTION_7009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7009", action = "action_EVENT_SELECT_OPTION_7009", trigger_count = 0 },
	{ config_id = 1007010, name = "CHALLENGE_SUCCESS_7010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "262", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7010", trigger_count = 0 },
	{ config_id = 1007011, name = "CHALLENGE_FAIL_7011", event = EventType.EVENT_CHALLENGE_FAIL, source = "262", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7011", trigger_count = 0 },
	-- 刷新时把别的传送门保证刷掉
	{ config_id = 1007059, name = "GROUP_REFRESH_7059", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_7059", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 7012, gadget_id = 70211121, pos = { x = 775.341, y = 0.000, z = 664.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 4,
	end_suite = 5,
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
		gadgets = { 7003 },
		regions = { },
		triggers = { "SELECT_OPTION_7009", "CHALLENGE_SUCCESS_7010", "CHALLENGE_FAIL_7011", "GROUP_REFRESH_7059" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7001 },
		regions = { 7008 },
		triggers = { "ENTER_REGION_7008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7002, 7004, 7005, 7006, 7007, 7013, 7014, 7015, 7016, 7017, 7018, 7019, 7020, 7021, 7022, 7023, 7024, 7025, 7026, 7027, 7028, 7029, 7030, 7031, 7032, 7033, 7034, 7035, 7036, 7037, 7038, 7039, 7040, 7041, 7042, 7043, 7044, 7045, 7046, 7047, 7048, 7049, 7050, 7051, 7052, 7053, 7054, 7055, 7056, 7057, 7058 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_7008(context, evt)
	if evt.param1 ~= 7008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7008(context, evt)
	ScriptLib.AddQuestProgress(context, "dreamback1") 
	ScriptLib.GoToGroupSuite(context, 220136007, 5)
	
	
	
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7009(context, evt)
	-- 判断是gadgetid 7003 option_id 175
	if 7003 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7009(context, evt)
	        -- 创建父挑战 
	        ScriptLib.CreateFatherChallenge(context, 262, 262, 61, {success = 1, fail = 1, fail_on_wipe = true})
	
	        
	        -- 在父挑战上创建编号为260的子挑战。，EVENT_VARIABLE_CHANGE,Tag = 777, 触发次数为 
	        ScriptLib.AttachChildChallenge(context, 262, 260, 260,{3, 777, 10, 0, 0},{},{success=1, fail=1})
		ScriptLib.AttachChildChallenge(context, 262, 261, 261,{60, 0},{},{success=1, fail=1})
	ScriptLib.StartFatherChallenge(context, 262)
	
	-- 将本组内变量名为 "star_shooter" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star_shooter", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136007, 3)
	
	-- 删除指定group： 220136004 ；指定config：7003；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220136007, 7003, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220136007, 2)
	
	-- 将本组内变量名为 "star_shooter" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star_shooter", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136007, 3)
	
	-- 将configid为 7003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7011(context, evt)
	-- 将本组内变量名为 "star_shooter" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star_shooter", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220136007, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220136007, 7003, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_7059(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136004, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_8/StarShooter"