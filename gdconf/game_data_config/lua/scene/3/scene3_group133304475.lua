-- 基础信息
local base_info = {
	group_id = 133304475
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 475001, monster_id = 24020201, pos = { x = -1647.471, y = 205.306, z = 2535.031 }, rot = { x = 0.000, y = 323.786, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 21 },
	{ config_id = 475002, monster_id = 26090201, pos = { x = -1694.038, y = 202.174, z = 2522.682 }, rot = { x = 0.000, y = 0.208, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 475003, monster_id = 26090201, pos = { x = -1678.748, y = 203.995, z = 2524.757 }, rot = { x = 0.000, y = 2.091, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 475010, monster_id = 24020401, pos = { x = -1636.904, y = 202.529, z = 2539.879 }, rot = { x = 0.000, y = 323.786, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 475004, gadget_id = 70211011, pos = { x = -1632.603, y = 201.869, z = 2541.892 }, rot = { x = 351.741, y = 36.156, z = 356.537 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 475005, gadget_id = 70220107, pos = { x = -1680.112, y = 203.355, z = 2528.604 }, rot = { x = 359.162, y = 359.393, z = 5.365 }, level = 30, area_id = 21 },
	{ config_id = 475006, gadget_id = 70220107, pos = { x = -1692.325, y = 202.870, z = 2519.240 }, rot = { x = 13.767, y = 1.788, z = 9.050 }, level = 30, area_id = 21 },
	{ config_id = 475007, gadget_id = 70330216, pos = { x = -1654.912, y = 203.602, z = 2539.200 }, rot = { x = 347.958, y = 130.475, z = 5.894 }, level = 30, area_id = 21 },
	{ config_id = 475008, gadget_id = 70330216, pos = { x = -1653.636, y = 202.439, z = 2544.961 }, rot = { x = 8.872, y = 359.792, z = 357.316 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1475009, name = "ANY_MONSTER_LIVE_475009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_475009", action = "action_EVENT_ANY_MONSTER_LIVE_475009" },
	{ config_id = 1475011, name = "ANY_MONSTER_DIE_475011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_475011", action = "action_EVENT_ANY_MONSTER_DIE_475011", trigger_count = 0 },
	-- 保底任务流转
	{ config_id = 1475012, name = "GROUP_LOAD_475012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_475012", action = "action_EVENT_GROUP_LOAD_475012", trigger_count = 0 },
	-- 保底任务流转
	{ config_id = 1475013, name = "GROUP_LOAD_475013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_475013", action = "action_EVENT_GROUP_LOAD_475013", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_475013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 475004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 475001, 475010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_475009", "ANY_MONSTER_DIE_475011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 475002, 475003 },
		gadgets = { 475005, 475006, 475007, 475008 },
		regions = { },
		triggers = { "GROUP_LOAD_475012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_475009(context, evt)
	if 475001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_475009(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1646.178, y=205.7722, z=2534.075}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1646.178, y=205.7722, z=2534.075}
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
function condition_EVENT_ANY_MONSTER_DIE_475011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_475011(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304475, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_475012(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7322609)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_475012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304475, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_475013(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7322607)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_475013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304475, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end