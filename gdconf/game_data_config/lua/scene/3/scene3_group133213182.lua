-- 基础信息
local base_info = {
	group_id = 133213182
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 封印圈陷阱怪物
	{ config_id = 182002, monster_id = 22010401, pos = { x = -3607.808, y = 200.127, z = -2915.126 }, rot = { x = 0.000, y = 156.925, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 },
	{ config_id = 182004, monster_id = 21020201, pos = { x = -3570.362, y = 200.679, z = -2836.086 }, rot = { x = 0.000, y = 216.212, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 13 },
	{ config_id = 182005, monster_id = 21010301, pos = { x = -3617.838, y = 200.196, z = -2869.794 }, rot = { x = 0.000, y = 173.071, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 182006, monster_id = 21030201, pos = { x = -3528.869, y = 200.437, z = -3031.612 }, rot = { x = 0.000, y = 137.232, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 182007, monster_id = 21010301, pos = { x = -3603.706, y = 200.052, z = -2877.316 }, rot = { x = 0.000, y = 246.314, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 182018, monster_id = 21011001, pos = { x = -3612.909, y = 205.711, z = -2863.654 }, rot = { x = 0.000, y = 173.873, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 182036, monster_id = 21010501, pos = { x = -3531.169, y = 201.980, z = -3042.412 }, rot = { x = 0.000, y = 114.665, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 182037, monster_id = 21020701, pos = { x = -3557.509, y = 200.164, z = -3018.788 }, rot = { x = 0.000, y = 191.919, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 12 },
	{ config_id = 182038, monster_id = 21010701, pos = { x = -3531.326, y = 201.321, z = -3037.980 }, rot = { x = 0.000, y = 117.500, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 182039, monster_id = 21010701, pos = { x = -3523.035, y = 200.262, z = -3032.520 }, rot = { x = 0.000, y = 161.118, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 182042, monster_id = 21010601, pos = { x = -3596.532, y = 200.068, z = -2872.469 }, rot = { x = 0.000, y = 250.511, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 182045, monster_id = 21011001, pos = { x = -3585.352, y = 200.044, z = -2968.445 }, rot = { x = 0.000, y = 184.503, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 182046, monster_id = 21010501, pos = { x = -3610.283, y = 200.935, z = -2960.409 }, rot = { x = 0.000, y = 90.341, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 182050, monster_id = 21030601, pos = { x = -3579.924, y = 201.198, z = -2834.457 }, rot = { x = 0.000, y = 162.850, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 182051, monster_id = 21010501, pos = { x = -3568.361, y = 205.733, z = -2834.105 }, rot = { x = 0.000, y = 216.993, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 182003, gadget_id = 70300084, pos = { x = -3574.224, y = 200.894, z = -2827.845 }, rot = { x = 0.000, y = 289.680, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 182008, gadget_id = 70710116, pos = { x = -3513.169, y = 200.946, z = -3094.680 }, rot = { x = 0.000, y = 346.521, z = 0.000 }, level = 1, route_id = 321300026, start_route = false, persistent = true, area_id = 12 },
	-- 第一检查点
	{ config_id = 182009, gadget_id = 70710126, pos = { x = -3523.189, y = 200.262, z = -3041.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	-- 第二检查点
	{ config_id = 182010, gadget_id = 70710126, pos = { x = -3561.597, y = 200.920, z = -3021.564 }, rot = { x = 0.000, y = 350.524, z = 0.000 }, level = 30, area_id = 12 },
	-- 第三检查点
	{ config_id = 182011, gadget_id = 70710126, pos = { x = -3584.002, y = 200.438, z = -2995.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 },
	-- 第四检查点
	{ config_id = 182012, gadget_id = 70710126, pos = { x = -3604.307, y = 200.227, z = -2945.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 },
	-- 第五检查点
	{ config_id = 182013, gadget_id = 70710126, pos = { x = -3606.233, y = 200.188, z = -2920.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 },
	-- 第六检查点
	{ config_id = 182014, gadget_id = 70710126, pos = { x = -3615.429, y = 200.084, z = -2878.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 },
	-- 第七检查点
	{ config_id = 182015, gadget_id = 70710126, pos = { x = -3587.633, y = 201.492, z = -2858.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 },
	-- 第八检查点
	{ config_id = 182016, gadget_id = 70710126, pos = { x = -3574.937, y = 201.052, z = -2831.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 182033, gadget_id = 70300090, pos = { x = -3613.014, y = 200.189, z = -2863.637 }, rot = { x = 0.000, y = 14.507, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182034, gadget_id = 70300084, pos = { x = -3508.285, y = 200.792, z = -3096.845 }, rot = { x = 0.000, y = 31.047, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182035, gadget_id = 70300084, pos = { x = -3515.793, y = 200.532, z = -3099.522 }, rot = { x = 0.000, y = 110.774, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182040, gadget_id = 70330064, pos = { x = -3593.210, y = 201.905, z = -2997.636 }, rot = { x = 0.000, y = 336.351, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 182041, gadget_id = 70330064, pos = { x = -3610.340, y = 200.074, z = -2927.963 }, rot = { x = 0.000, y = 342.844, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 182043, gadget_id = 70900380, pos = { x = -3590.942, y = 207.963, z = -2986.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182044, gadget_id = 70900380, pos = { x = -3610.677, y = 211.097, z = -2911.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	-- 封印圈陷阱
	{ config_id = 182047, gadget_id = 70300114, pos = { x = -3607.105, y = 200.142, z = -2917.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182052, gadget_id = 70300090, pos = { x = -3568.190, y = 200.258, z = -2834.142 }, rot = { x = 0.000, y = 14.507, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 182053, gadget_id = 70900380, pos = { x = -3612.813, y = 212.998, z = -2902.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182054, gadget_id = 70900380, pos = { x = -3613.895, y = 210.854, z = -2888.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182055, gadget_id = 70900388, pos = { x = -3606.258, y = 200.290, z = -2927.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182060, gadget_id = 70900388, pos = { x = -3605.545, y = 200.263, z = -2935.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182061, gadget_id = 70900388, pos = { x = -3576.908, y = 200.268, z = -2852.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 182062, gadget_id = 70220004, pos = { x = -3577.580, y = 200.218, z = -2846.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 182063, gadget_id = 70900388, pos = { x = -3603.033, y = 200.316, z = -2872.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182064, gadget_id = 70220004, pos = { x = -3591.182, y = 200.231, z = -2867.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182065, gadget_id = 70900388, pos = { x = -3574.347, y = 200.235, z = -2841.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 182066, gadget_id = 70220004, pos = { x = -3604.014, y = 200.255, z = -2947.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 182067, gadget_id = 70220004, pos = { x = -3606.207, y = 200.092, z = -2913.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
	-- ！！！！需要手动更改lua参数，见注释。开启挑战+添加怪物与物件suite+启动platform
	{ config_id = 182019, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3513.169, y = 200.946, z = -3094.680 }, area_id = 12 },
	{ config_id = 182048, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3607.105, y = 200.142, z = -2917.392 }, area_id = 12 }
}

-- 触发器
triggers = {
	-- 保底用重置group
	{ config_id = 1182001, name = "GROUP_LOAD_182001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_182001", action = "action_EVENT_GROUP_LOAD_182001", trigger_count = 0 },
	-- 开启挑战，添加初始怪物suite和路径节点，设置平台route开始移动
	{ config_id = 1182017, name = "VARIABLE_CHANGE_182017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_182017", action = "action_EVENT_VARIABLE_CHANGE_182017" },
	-- ！！！！需要手动更改lua参数，见注释。开启挑战+添加怪物与物件suite+启动platform
	{ config_id = 1182019, name = "ENTER_REGION_182019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_182019", action = "action_EVENT_ENTER_REGION_182019" },
	{ config_id = 1182020, name = "CHALLENGE_SUCCESS_182020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_182020", trigger_count = 0 },
	{ config_id = 1182021, name = "PLATFORM_REACH_POINT_182021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_182021", action = "action_EVENT_PLATFORM_REACH_POINT_182021", trigger_count = 0, tag = "888" },
	{ config_id = 1182022, name = "CHALLENGE_FAIL_182022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_182022", trigger_count = 0 },
	{ config_id = 1182023, name = "ANY_GADGET_DIE_182023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_182023", action = "action_EVENT_ANY_GADGET_DIE_182023", tag = "999" },
	{ config_id = 1182024, name = "PLATFORM_REACH_POINT_182024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_182024", action = "action_EVENT_PLATFORM_REACH_POINT_182024", trigger_count = 0, tag = "888" },
	{ config_id = 1182025, name = "PLATFORM_REACH_POINT_182025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_182025", action = "action_EVENT_PLATFORM_REACH_POINT_182025", trigger_count = 0 },
	-- 中间节点删除前置怪物与物件suit4和suite8
	{ config_id = 1182026, name = "PLATFORM_REACH_POINT_182026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_182026", action = "action_EVENT_PLATFORM_REACH_POINT_182026", trigger_count = 0 },
	{ config_id = 1182027, name = "PLATFORM_REACH_POINT_182027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_182027", action = "action_EVENT_PLATFORM_REACH_POINT_182027", trigger_count = 0, tag = "888" },
	{ config_id = 1182028, name = "PLATFORM_REACH_POINT_182028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_182028", action = "action_EVENT_PLATFORM_REACH_POINT_182028", trigger_count = 0, tag = "888" },
	{ config_id = 1182029, name = "PLATFORM_REACH_POINT_182029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_182029", action = "action_EVENT_PLATFORM_REACH_POINT_182029", trigger_count = 0, tag = "888" },
	{ config_id = 1182030, name = "PLATFORM_REACH_POINT_182030", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_182030", action = "action_EVENT_PLATFORM_REACH_POINT_182030", trigger_count = 0, tag = "888" },
	{ config_id = 1182031, name = "PLATFORM_REACH_POINT_182031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_182031", action = "action_EVENT_PLATFORM_REACH_POINT_182031", trigger_count = 0, tag = "888" },
	{ config_id = 1182032, name = "PLATFORM_REACH_POINT_182032", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_182032", action = "action_EVENT_PLATFORM_REACH_POINT_182032", trigger_count = 0, tag = "888" },
	{ config_id = 1182048, name = "ENTER_REGION_182048", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_182048", action = "action_EVENT_ENTER_REGION_182048" },
	{ config_id = 1182049, name = "ANY_MONSTER_DIE_182049", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_182049", action = "action_EVENT_ANY_MONSTER_DIE_182049" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeStart", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 7,
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
		-- description = 总体逻辑控制,
		monsters = { },
		gadgets = { 182003, 182008, 182034, 182035 },
		regions = { 182019 },
		triggers = { "GROUP_LOAD_182001", "VARIABLE_CHANGE_182017", "ENTER_REGION_182019", "CHALLENGE_SUCCESS_182020", "PLATFORM_REACH_POINT_182021", "CHALLENGE_FAIL_182022", "ANY_GADGET_DIE_182023", "PLATFORM_REACH_POINT_182024", "PLATFORM_REACH_POINT_182025", "PLATFORM_REACH_POINT_182026", "PLATFORM_REACH_POINT_182027", "PLATFORM_REACH_POINT_182028", "PLATFORM_REACH_POINT_182029", "PLATFORM_REACH_POINT_182030", "PLATFORM_REACH_POINT_182031", "PLATFORM_REACH_POINT_182032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 检查点光柱,
		monsters = { },
		gadgets = { 182009, 182010, 182011, 182012, 182013, 182014, 182015, 182016, 182033, 182040, 182041, 182043, 182044, 182052, 182053, 182054, 182055, 182060, 182061, 182062, 182063, 182064, 182065, 182066, 182067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一批怪物与物件,
		monsters = { 182006, 182036, 182037, 182038, 182039 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二批怪物与物件,
		monsters = { 182045, 182046 },
		gadgets = { 182047 },
		regions = { 182048 },
		triggers = { "ENTER_REGION_182048", "ANY_MONSTER_DIE_182049" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三批怪物与物件,
		monsters = { 182005, 182007, 182018, 182042 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第四批怪物与物件,
		monsters = { 182004, 182050, 182051 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 空的end suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 封印圈陷阱组,
		monsters = { 182002 },
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
function condition_EVENT_GROUP_LOAD_182001(context, evt)
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_182001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213182, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_182017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_182017(context, evt)
	-- 将configid为 182008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213182, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213182, 3)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 182008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_182019(context, evt)
	if evt.param1 ~= 182019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_182019(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 8, 2,999,1}) then
		return -1
	end
	
		-- 
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_182020(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 6)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133213182, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133213182, EntityType.MONSTER, 182002)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_182021(context, evt)
	-- 判断是gadgetid 为 182008的移动平台，是否到达了321300026 的路线中的 38 点
	
	if 182008 ~= evt.param1 then
	  return false
	end
	
	if 321300026 ~= evt.param2 then
	  return false
	end
	
	if 38 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_182021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_182022(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213182, EntityType.GADGET, 182008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 6)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133213182, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133213182, EntityType.MONSTER, 182002)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_182023(context, evt)
	if 182008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_182023(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_182024(context, evt)
	-- 判断是gadgetid 为 182008的移动平台，是否到达了321300026 的路线中的 10 点
	
	if 182008 ~= evt.param1 then
	  return false
	end
	
	if 321300026 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_182024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213182, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_182025(context, evt)
	-- 判断是gadgetid 为 182008的移动平台，是否到达了321300026 的路线中的 14 点
	
	if 182008 ~= evt.param1 then
	  return false
	end
	
	if 321300026 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_182025(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_182026(context, evt)
	-- 判断是gadgetid 为 182008的移动平台，是否到达了321300026 的路线中的 32 点
	
	if 182008 ~= evt.param1 then
	  return false
	end
	
	if 321300026 ~= evt.param2 then
	  return false
	end
	
	if 32 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_182026(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213182, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_182027(context, evt)
	-- 判断是gadgetid 为 182008的移动平台，是否到达了321300026 的路线中的 4 点
	
	if 182008 ~= evt.param1 then
	  return false
	end
	
	if 321300026 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_182027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_182028(context, evt)
	-- 判断是gadgetid 为 182008的移动平台，是否到达了321300026 的路线中的 14 点
	
	if 182008 ~= evt.param1 then
	  return false
	end
	
	if 321300026 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_182028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_182029(context, evt)
	-- 判断是gadgetid 为 182008的移动平台，是否到达了321300026 的路线中的 18 点
	
	if 182008 ~= evt.param1 then
	  return false
	end
	
	if 321300026 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_182029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213182, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213182, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_182030(context, evt)
	-- 判断是gadgetid 为 182008的移动平台，是否到达了321300026 的路线中的 22 点
	
	if 182008 ~= evt.param1 then
	  return false
	end
	
	if 321300026 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_182030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_182031(context, evt)
	-- 判断是gadgetid 为 182008的移动平台，是否到达了321300026 的路线中的 28 点
	
	if 182008 ~= evt.param1 then
	  return false
	end
	
	if 321300026 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_182031(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_182032(context, evt)
	-- 判断是gadgetid 为 182008的移动平台，是否到达了321300026 的路线中的 32 点
	
	if 182008 ~= evt.param1 then
	  return false
	end
	
	if 321300026 ~= evt.param2 then
	  return false
	end
	
	if 32 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_182032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_182048(context, evt)
	if evt.param1 ~= 182048 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_182048(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213182, 8)
	
	-- 将configid为 182047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_182049(context, evt)
	if 182002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_182049(context, evt)
	-- 将configid为 182047 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182047, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133213182, EntityType.GADGET, 182047 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_0/ElectricCore"