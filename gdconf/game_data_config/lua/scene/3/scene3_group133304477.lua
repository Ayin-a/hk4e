-- 基础信息
local base_info = {
	group_id = 133304477
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 477001, monster_id = 24030101, pos = { x = -1514.917, y = 349.140, z = 2247.367 }, rot = { x = 0.000, y = 57.641, z = 0.000 }, level = 30, drop_tag = "遗迹龙兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 477002, monster_id = 26090201, pos = { x = -1480.475, y = 348.819, z = 2214.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 477003, monster_id = 26090201, pos = { x = -1470.800, y = 341.669, z = 2217.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 477010, monster_id = 24020401, pos = { x = -1506.222, y = 343.053, z = 2254.455 }, rot = { x = 0.000, y = 107.841, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 477004, gadget_id = 70211011, pos = { x = -1523.781, y = 344.971, z = 2264.361 }, rot = { x = 32.492, y = 15.020, z = 344.002 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 477005, gadget_id = 70220107, pos = { x = -1433.300, y = 312.603, z = 2190.010 }, rot = { x = 4.011, y = 1.836, z = 332.964 }, level = 30, area_id = 21 },
	{ config_id = 477006, gadget_id = 70220107, pos = { x = -1439.798, y = 314.482, z = 2199.447 }, rot = { x = 11.271, y = 1.563, z = 335.478 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1477009, name = "ANY_MONSTER_LIVE_477009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_477009", action = "action_EVENT_ANY_MONSTER_LIVE_477009" },
	{ config_id = 1477011, name = "ANY_MONSTER_DIE_477011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_477011", action = "action_EVENT_ANY_MONSTER_DIE_477011", trigger_count = 0 },
	-- 保底任务流转
	{ config_id = 1477012, name = "GROUP_LOAD_477012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_477012", action = "action_EVENT_GROUP_LOAD_477012", trigger_count = 0 },
	-- 保底任务流转
	{ config_id = 1477013, name = "GROUP_LOAD_477013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_477013", action = "action_EVENT_GROUP_LOAD_477013", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 477007, gadget_id = 70330216, pos = { x = -1493.240, y = 348.677, z = 2240.706 }, rot = { x = 0.000, y = 338.077, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 477008, gadget_id = 70330216, pos = { x = -1493.612, y = 350.456, z = 2237.642 }, rot = { x = 0.000, y = 355.278, z = 0.000 }, level = 30, area_id = 21 }
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
		triggers = { "GROUP_LOAD_477012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 477004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 477001, 477010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_477009", "ANY_MONSTER_DIE_477011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 477002, 477003 },
		gadgets = { 477005, 477006 },
		regions = { },
		triggers = { "GROUP_LOAD_477013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_477009(context, evt)
	if 477001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_477009(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1514.917, y=349.14, z=2247.367}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1514.917, y=349.14, z=2247.367}
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
function condition_EVENT_ANY_MONSTER_DIE_477011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_477011(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304477, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_477012(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7322613)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_477012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304477, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_477013(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7322615)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_477013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304477, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end