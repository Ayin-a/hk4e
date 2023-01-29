-- 基础信息
local base_info = {
	group_id = 220032001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010201, pos = { x = 427.042, y = -22.083, z = 74.350 }, rot = { x = 0.000, y = 89.884, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1002, monster_id = 21010201, pos = { x = 426.528, y = -22.141, z = 67.813 }, rot = { x = 0.000, y = 89.884, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1006, monster_id = 21010401, pos = { x = 400.182, y = -20.464, z = 67.111 }, rot = { x = 0.000, y = 95.023, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 1007, monster_id = 21010301, pos = { x = 402.705, y = -21.974, z = 66.870 }, rot = { x = 0.000, y = 357.393, z = 0.000 }, level = 1, disableWander = true, pose_id = 9002 },
	{ config_id = 1008, monster_id = 21010201, pos = { x = 411.204, y = -22.050, z = 62.897 }, rot = { x = 0.000, y = 341.339, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 1018, monster_id = 21011001, pos = { x = 409.424, y = -22.050, z = 71.720 }, rot = { x = 0.000, y = 196.233, z = 0.000 }, level = 1 },
	{ config_id = 1019, monster_id = 21010201, pos = { x = 409.441, y = -22.050, z = 66.654 }, rot = { x = 0.000, y = 137.940, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 1020, monster_id = 21030101, pos = { x = 412.473, y = -21.954, z = 66.337 }, rot = { x = 0.000, y = 233.014, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 1021, monster_id = 21010201, pos = { x = 405.372, y = -21.954, z = 62.733 }, rot = { x = 0.000, y = 73.044, z = 0.000 }, level = 1 },
	{ config_id = 1022, monster_id = 21010301, pos = { x = 415.367, y = -21.954, z = 67.494 }, rot = { x = 0.000, y = 274.523, z = 0.000 }, level = 1 },
	{ config_id = 1023, monster_id = 21010701, pos = { x = 408.711, y = -22.050, z = 59.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, monster_id = 21010701, pos = { x = 415.140, y = -22.050, z = 61.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1042, monster_id = 21010501, pos = { x = 413.081, y = -21.954, z = 70.508 }, rot = { x = 0.000, y = 204.746, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1003, gadget_id = 70350002, pos = { x = 423.759, y = -22.134, z = 71.182 }, rot = { x = 0.000, y = 89.818, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350002, pos = { x = 469.553, y = -20.220, z = 67.491 }, rot = { x = 0.000, y = 89.121, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70350002, pos = { x = 406.351, y = -22.101, z = 81.037 }, rot = { x = 0.000, y = 0.485, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70310001, pos = { x = 404.995, y = -21.954, z = 57.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70310001, pos = { x = 404.901, y = -21.959, z = 72.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70310001, pos = { x = 415.321, y = -21.954, z = 57.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70310001, pos = { x = 415.252, y = -21.959, z = 72.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70900201, pos = { x = 406.121, y = -22.169, z = 105.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70220013, pos = { x = 427.535, y = -22.083, z = 55.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70220013, pos = { x = 428.737, y = -22.084, z = 53.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70211101, pos = { x = 430.523, y = -22.084, z = 57.457 }, rot = { x = 0.000, y = 209.151, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 1028, gadget_id = 70220026, pos = { x = 400.403, y = -22.088, z = 52.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70220013, pos = { x = 398.944, y = -22.051, z = 53.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1032, gadget_id = 70220025, pos = { x = 399.141, y = -22.002, z = 54.708 }, rot = { x = 272.088, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70220025, pos = { x = 402.558, y = -22.024, z = 65.635 }, rot = { x = 272.088, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 1034, gadget_id = 70220025, pos = { x = 402.866, y = -22.018, z = 67.567 }, rot = { x = 272.088, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 1035, gadget_id = 70220025, pos = { x = 401.243, y = -22.040, z = 66.573 }, rot = { x = 272.088, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 1036, gadget_id = 70220025, pos = { x = 400.465, y = -22.021, z = 53.566 }, rot = { x = 272.088, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 1037, gadget_id = 70220013, pos = { x = 400.994, y = -22.074, z = 65.126 }, rot = { x = 0.000, y = 40.187, z = 0.000 }, level = 1 },
	{ config_id = 1038, gadget_id = 70220013, pos = { x = 400.155, y = -22.074, z = 67.198 }, rot = { x = 0.000, y = 7.324, z = 0.000 }, level = 1 },
	{ config_id = 1039, gadget_id = 70220026, pos = { x = 401.695, y = -22.074, z = 68.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1040, gadget_id = 70220014, pos = { x = 402.219, y = -22.074, z = 64.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1041, gadget_id = 70310004, pos = { x = 410.893, y = -22.050, z = 64.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1043, gadget_id = 70220026, pos = { x = 412.833, y = -22.083, z = 50.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1044, gadget_id = 70220014, pos = { x = 414.767, y = -21.734, z = 50.685 }, rot = { x = 3.776, y = 328.936, z = 87.734 }, level = 1 },
	{ config_id = 1045, gadget_id = 70220014, pos = { x = 413.651, y = -22.083, z = 51.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1046, gadget_id = 70220025, pos = { x = 412.877, y = -22.013, z = 50.832 }, rot = { x = 272.088, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 1047, gadget_id = 70220025, pos = { x = 413.843, y = -22.015, z = 50.858 }, rot = { x = 272.088, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 1048, gadget_id = 70220005, pos = { x = 400.401, y = -22.071, z = 53.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001009, name = "ANY_MONSTER_DIE_1009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1009", action = "action_EVENT_ANY_MONSTER_DIE_1009" },
	{ config_id = 1001011, name = "ANY_MONSTER_DIE_1011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1011", action = "action_EVENT_ANY_MONSTER_DIE_1011" },
	{ config_id = 1001024, name = "ANY_MONSTER_DIE_1024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1024", action = "action_EVENT_ANY_MONSTER_DIE_1024" },
	{ config_id = 1001031, name = "ANY_MONSTER_DIE_1031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1031", action = "action_EVENT_ANY_MONSTER_DIE_1031" }
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
		monsters = { 1001, 1002 },
		gadgets = { 1003, 1004, 1005, 1012, 1013, 1015, 1016, 1025, 1026, 1027, 1028, 1029, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1043, 1044, 1045, 1046, 1047, 1048 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1006, 1007, 1008, 1019, 1020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1018, 1021, 1022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1031" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1023, 1030, 1042 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1009(context, evt)
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220032001, 2)
	
	-- 将configid为 1012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1041 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1041, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1011(context, evt)
	-- 将configid为 1005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220032002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220032002, 2002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为1017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 改变指定group组220032002中， configid为2009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220032002, 2009, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（406，-18，81），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=406, y=-18, z=81}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 改变指定group组220032002中， configid为2010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220032002, 2010, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1024(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220032001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1031(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1031(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220032001, 4)
	
	return 0
end