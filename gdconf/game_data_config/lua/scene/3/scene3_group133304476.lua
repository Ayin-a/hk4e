-- 基础信息
local base_info = {
	group_id = 133304476
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 476001, monster_id = 24020101, pos = { x = -1287.702, y = 287.330, z = 2172.297 }, rot = { x = 0.000, y = 28.750, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 21 },
	{ config_id = 476002, monster_id = 26090201, pos = { x = -1239.923, y = 283.872, z = 2151.828 }, rot = { x = 0.000, y = 359.506, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 476003, monster_id = 26090201, pos = { x = -1235.553, y = 282.311, z = 2158.892 }, rot = { x = 0.000, y = 359.107, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 476010, monster_id = 24020401, pos = { x = -1286.312, y = 282.201, z = 2185.910 }, rot = { x = 0.000, y = 66.691, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 476004, gadget_id = 70211011, pos = { x = -1294.675, y = 280.378, z = 2187.708 }, rot = { x = 25.150, y = 339.138, z = 340.748 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 476005, gadget_id = 70220107, pos = { x = -1237.141, y = 286.512, z = 2131.343 }, rot = { x = 8.101, y = 1.282, z = 355.756 }, level = 30, area_id = 21 },
	{ config_id = 476006, gadget_id = 70220107, pos = { x = -1242.964, y = 290.642, z = 2109.867 }, rot = { x = 13.234, y = 1.594, z = 358.622 }, level = 30, area_id = 21 },
	{ config_id = 476007, gadget_id = 70330216, pos = { x = -1233.364, y = 286.461, z = 2131.142 }, rot = { x = 354.077, y = 130.814, z = 5.467 }, level = 30, area_id = 21 },
	{ config_id = 476008, gadget_id = 70330216, pos = { x = -1252.921, y = 285.420, z = 2163.835 }, rot = { x = 9.561, y = 359.037, z = 348.517 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1476009, name = "ANY_MONSTER_LIVE_476009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_476009", action = "action_EVENT_ANY_MONSTER_LIVE_476009" },
	{ config_id = 1476011, name = "ANY_MONSTER_DIE_476011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_476011", action = "action_EVENT_ANY_MONSTER_DIE_476011", trigger_count = 0 },
	-- 保底任务流转
	{ config_id = 1476012, name = "GROUP_LOAD_476012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_476012", action = "action_EVENT_GROUP_LOAD_476012", trigger_count = 0 },
	-- 保底任务流转
	{ config_id = 1476013, name = "GROUP_LOAD_476013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_476013", action = "action_EVENT_GROUP_LOAD_476013", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_476013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 476004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 476001, 476010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_476009", "ANY_MONSTER_DIE_476011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 476002, 476003 },
		gadgets = { 476005, 476006, 476007, 476008 },
		regions = { },
		triggers = { "GROUP_LOAD_476012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_476009(context, evt)
	if 476001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_476009(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1287.702, y=287.3303, z=2172.297}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1287.702, y=287.3303, z=2172.297}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_476011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_476011(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304476, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_476012(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7322612)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_476012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304476, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_476013(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7322610)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_476013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304476, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end