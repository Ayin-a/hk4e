-- 基础信息
local base_info = {
	group_id = 133304472
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 472002, monster_id = 24020401, pos = { x = -1356.154, y = 275.429, z = 2795.603 }, rot = { x = 0.000, y = 182.761, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 21 },
	{ config_id = 472008, monster_id = 26090201, pos = { x = -1340.424, y = 275.641, z = 2815.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 472009, monster_id = 26090401, pos = { x = -1364.655, y = 271.502, z = 2806.708 }, rot = { x = 0.000, y = 97.388, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 103, area_id = 21 },
	{ config_id = 472011, monster_id = 24020401, pos = { x = -1359.120, y = 274.395, z = 2780.033 }, rot = { x = 0.000, y = 182.761, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 472001, gadget_id = 70211011, pos = { x = -1356.402, y = 274.799, z = 2784.796 }, rot = { x = 353.177, y = 206.338, z = 347.887 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 472004, gadget_id = 70220107, pos = { x = -1338.604, y = 276.160, z = 2811.271 }, rot = { x = 9.395, y = 1.299, z = 15.710 }, level = 30, area_id = 21 },
	{ config_id = 472005, gadget_id = 70220107, pos = { x = -1339.660, y = 275.473, z = 2817.909 }, rot = { x = 12.675, y = 1.502, z = 19.622 }, level = 30, area_id = 21 },
	{ config_id = 472006, gadget_id = 70330216, pos = { x = -1365.655, y = 271.016, z = 2797.692 }, rot = { x = 0.000, y = 131.097, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 472007, gadget_id = 70330216, pos = { x = -1362.469, y = 271.755, z = 2806.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1472003, name = "ANY_MONSTER_DIE_472003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_472003", action = "action_EVENT_ANY_MONSTER_DIE_472003", trigger_count = 0 },
	{ config_id = 1472010, name = "ANY_MONSTER_LIVE_472010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_472010", action = "action_EVENT_ANY_MONSTER_LIVE_472010" },
	-- 保底任务流转
	{ config_id = 1472012, name = "GROUP_LOAD_472012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_472012", action = "action_EVENT_GROUP_LOAD_472012", trigger_count = 0 },
	-- 保底任务流转
	{ config_id = 1472013, name = "GROUP_LOAD_472013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_472013", action = "action_EVENT_GROUP_LOAD_472013", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_472012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 全部完成的宝箱,
		monsters = { },
		gadgets = { 472001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 跟随完后刷的怪物,
		monsters = { 472002, 472011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_472003", "ANY_MONSTER_LIVE_472010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 路途中的阻碍,
		monsters = { 472008, 472009 },
		gadgets = { 472004, 472005, 472006, 472007 },
		regions = { },
		triggers = { "GROUP_LOAD_472013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_472003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_472003(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304472, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_472010(context, evt)
	if 472002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_472010(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1356.154, y=275.429, z=2795.603}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1356.154, y=275.429, z=2795.603}
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
function condition_EVENT_GROUP_LOAD_472012(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7322601)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_472012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304472, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_472013(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7322603)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_472013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304472, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end