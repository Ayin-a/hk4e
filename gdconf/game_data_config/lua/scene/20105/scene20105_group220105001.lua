-- 基础信息
local base_info = {
	group_id = 220105001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1039, monster_id = 22010101, pos = { x = -154.043, y = 1.276, z = -52.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1040, monster_id = 22010301, pos = { x = -161.104, y = 1.234, z = -52.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1043, monster_id = 22020102, pos = { x = -157.844, y = 1.222, z = -50.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 }, pose_id = 101, title_id = 10009, special_name_id = 10025 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70350168, pos = { x = -158.348, y = 14.442, z = -71.590 }, rot = { x = 0.000, y = 0.000, z = 185.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 71700196, pos = { x = -158.348, y = 14.442, z = -71.590 }, rot = { x = 0.000, y = 0.000, z = 185.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70350005, pos = { x = -29.122, y = 44.693, z = -51.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70350005, pos = { x = -28.111, y = 45.491, z = -84.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70211101, pos = { x = -114.333, y = 9.021, z = -93.576 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 1010, gadget_id = 70211121, pos = { x = -145.149, y = 1.176, z = -46.156 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true },
	{ config_id = 1011, gadget_id = 70211101, pos = { x = -85.231, y = 18.922, z = -98.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 1012, gadget_id = 70350005, pos = { x = -157.704, y = 2.244, z = -12.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220014, pos = { x = -86.321, y = 18.771, z = -96.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70350170, pos = { x = -48.572, y = 41.160, z = -87.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart },
	{ config_id = 1016, gadget_id = 70350170, pos = { x = -51.353, y = 36.631, z = -89.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 8 },
	{ config_id = 1017, gadget_id = 70350170, pos = { x = -53.565, y = 29.219, z = -90.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart },
	{ config_id = 1018, gadget_id = 70350170, pos = { x = -48.527, y = 33.126, z = -83.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 10 },
	{ config_id = 1019, gadget_id = 70350170, pos = { x = -53.565, y = 29.904, z = -84.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart },
	{ config_id = 1021, gadget_id = 70350170, pos = { x = -63.146, y = 26.067, z = -88.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart },
	{ config_id = 1022, gadget_id = 70350170, pos = { x = -65.647, y = 28.517, z = -79.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 7 },
	{ config_id = 1024, gadget_id = 70350170, pos = { x = -71.257, y = 22.648, z = -90.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 9 },
	{ config_id = 1025, gadget_id = 70350170, pos = { x = -60.939, y = 37.464, z = -85.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart },
	{ config_id = 1026, gadget_id = 70350170, pos = { x = -84.485, y = 14.286, z = -90.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 3 },
	{ config_id = 1027, gadget_id = 70350170, pos = { x = -62.561, y = 36.404, z = -88.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart },
	{ config_id = 1028, gadget_id = 70350170, pos = { x = -84.485, y = 18.518, z = -84.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 4 },
	{ config_id = 1029, gadget_id = 70350170, pos = { x = -90.514, y = 15.902, z = -90.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 12 },
	{ config_id = 1030, gadget_id = 70350170, pos = { x = -63.536, y = 38.189, z = -89.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart },
	{ config_id = 1031, gadget_id = 70350170, pos = { x = -102.057, y = 15.825, z = -78.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 6 },
	{ config_id = 1032, gadget_id = 70350170, pos = { x = -106.778, y = 10.086, z = -90.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 2 },
	{ config_id = 1033, gadget_id = 70350170, pos = { x = -92.925, y = 18.960, z = -83.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 11 },
	{ config_id = 1035, gadget_id = 70350170, pos = { x = -112.273, y = 10.194, z = -96.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 5 },
	{ config_id = 1036, gadget_id = 70310042, pos = { x = -157.316, y = 3.112, z = -59.680 }, rot = { x = 0.000, y = 90.000, z = 90.000 }, level = 1 },
	{ config_id = 1037, gadget_id = 70350170, pos = { x = -122.493, y = 0.779, z = -84.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 1 }
}

-- 区域
regions = {
	{ config_id = 1003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -134.855, y = 4.964, z = -72.519 } },
	{ config_id = 1013, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1.771, y = 43.720, z = -74.211 } },
	{ config_id = 1023, shape = RegionShape.CUBIC, size = { x = 8.000, y = 8.000, z = 20.000 }, pos = { x = -10.557, y = 47.866, z = -70.634 } },
	{ config_id = 1038, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 40.000 }, pos = { x = -157.692, y = 1.202, z = -38.523 } },
	{ config_id = 1042, shape = RegionShape.SPHERE, radius = 5, pos = { x = -25.884, y = 44.814, z = -67.810 } }
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "GADGET_CREATE_1002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1002", action = "action_EVENT_GADGET_CREATE_1002" },
	{ config_id = 1001003, name = "ENTER_REGION_1003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1003", action = "action_EVENT_ENTER_REGION_1003" },
	{ config_id = 1001005, name = "ANY_MONSTER_DIE_1005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1005", action = "action_EVENT_ANY_MONSTER_DIE_1005", trigger_count = 0 },
	{ config_id = 1001008, name = "GADGET_CREATE_1008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1008", action = "" },
	{ config_id = 1001013, name = "ENTER_REGION_1013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1013", action = "action_EVENT_ENTER_REGION_1013" },
	{ config_id = 1001020, name = "QUEST_FINISH_1020", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_1020", action = "action_EVENT_QUEST_FINISH_1020" },
	{ config_id = 1001023, name = "ENTER_REGION_1023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1023", action = "action_EVENT_ENTER_REGION_1023" },
	-- 刷深渊使徒
	{ config_id = 1001034, name = "QUEST_START_1034", event = EventType.EVENT_QUEST_START, source = "800304", condition = "", action = "action_EVENT_QUEST_START_1034", trigger_count = 0 },
	{ config_id = 1001038, name = "ENTER_REGION_1038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1038" },
	-- 80%召唤援军
	{ config_id = 1001041, name = "SPECIFIC_MONSTER_HP_CHANGE_1041", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "1043", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1041", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1041" },
	{ config_id = 1001042, name = "ENTER_REGION_1042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 1001, 1004, 1006, 1007, 1009, 1011, 1012, 1014 },
		regions = { 1003, 1013, 1023 },
		triggers = { "GADGET_CREATE_1002", "ENTER_REGION_1003", "GADGET_CREATE_1008", "ENTER_REGION_1013", "ENTER_REGION_1023", "QUEST_START_1034" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1015, 1016, 1017, 1018, 1019, 1021, 1022, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1035, 1037 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1043 },
		gadgets = { 1036 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1005", "QUEST_FINISH_1020", "SPECIFIC_MONSTER_HP_CHANGE_1041" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1010 },
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
		monsters = { 1039, 1040 },
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
function condition_EVENT_GADGET_CREATE_1002(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220105001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1003(context, evt)
	if evt.param1 ~= 1003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "22010500101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	--判断死亡怪物的configid是否为 1043
	if evt.param1 ~= 1043 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220105001, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "22010500102") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220105001, EntityType.GADGET, 1036 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1008(context, evt)
	if 1007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1013(context, evt)
	if evt.param1 ~= 1013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1013(context, evt)
	-- 调用提示id为 201050101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201050101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_1020(context, evt)
	--检查ID为800311的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 800311 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1020(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220105001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1023(context, evt)
	if evt.param1 ~= 1023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1023(context, evt)
	-- 触发镜头注目，注目位置为坐标（-28，46，-83.6），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-28, y=46, z=-83.6}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 1007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_1034(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220105001, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220105001, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_1038(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220105001, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1041(context, evt)
	--[[判断指定configid的怪物的血量小于%80时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 80 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_1041(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220105001, 6)
	
	return 0
end