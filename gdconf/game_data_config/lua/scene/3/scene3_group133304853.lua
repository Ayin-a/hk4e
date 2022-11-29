-- 基础信息
local base_info = {
	group_id = 133304853
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 853001, monster_id = 26120301, pos = { x = -1473.335, y = 135.000, z = 2560.270 }, rot = { x = 0.000, y = 285.251, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 104, area_id = 21 },
	{ config_id = 853006, monster_id = 26120101, pos = { x = -1477.425, y = 135.229, z = 2566.338 }, rot = { x = 0.000, y = 168.680, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 104, area_id = 21 },
	{ config_id = 853007, monster_id = 26120201, pos = { x = -1482.995, y = 135.180, z = 2560.959 }, rot = { x = 0.000, y = 45.397, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 104, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 853002, gadget_id = 70211031, pos = { x = -1478.760, y = 135.000, z = 2561.134 }, rot = { x = 0.000, y = 102.878, z = 0.000 }, level = 26, drop_tag = "战斗超级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 853005, gadget_id = 70360001, pos = { x = -1476.065, y = 133.980, z = 2561.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1853003, name = "ANY_MONSTER_DIE_853003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_853003", action = "action_EVENT_ANY_MONSTER_DIE_853003", trigger_count = 0 },
	{ config_id = 1853004, name = "VARIABLE_CHANGE_853004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_853004", action = "action_EVENT_VARIABLE_CHANGE_853004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		monsters = { 853001, 853006, 853007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_853003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 853005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_853004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_853003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_853003(context, evt)
	-- 创建id为853002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 853002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_853004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_853004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304853, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1473.335, y=135, z=2560.27}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1473.335, y=135, z=2560.27}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end