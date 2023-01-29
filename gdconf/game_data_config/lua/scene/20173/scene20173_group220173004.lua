-- 基础信息
local base_info = {
	group_id = 220173004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4002, monster_id = 26120301, pos = { x = 653.835, y = 114.007, z = 481.470 }, rot = { x = 0.000, y = 133.860, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4003, monster_id = 26091001, pos = { x = 654.863, y = 114.007, z = 487.950 }, rot = { x = 0.000, y = 186.569, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4004, monster_id = 26091001, pos = { x = 651.075, y = 114.007, z = 488.910 }, rot = { x = 0.000, y = 125.634, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4005, monster_id = 26090601, pos = { x = 649.222, y = 114.007, z = 480.612 }, rot = { x = 0.000, y = 139.201, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4006, monster_id = 26090601, pos = { x = 654.543, y = 114.151, z = 478.380 }, rot = { x = 0.000, y = 111.542, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 4009, monster_id = 26010301, pos = { x = 646.900, y = 114.007, z = 484.296 }, rot = { x = 0.000, y = 91.563, z = 0.000 }, level = 1 },
	{ config_id = 4010, monster_id = 20011001, pos = { x = 651.476, y = 114.007, z = 483.542 }, rot = { x = 0.000, y = 323.066, z = 0.000 }, level = 1 },
	{ config_id = 4011, monster_id = 20011001, pos = { x = 648.176, y = 114.007, z = 491.032 }, rot = { x = 0.000, y = 191.082, z = 0.000 }, level = 1 },
	{ config_id = 4012, monster_id = 20011001, pos = { x = 641.263, y = 114.007, z = 486.144 }, rot = { x = 0.000, y = 102.175, z = 0.000 }, level = 1 },
	{ config_id = 4013, monster_id = 20011101, pos = { x = 643.730, y = 114.055, z = 478.398 }, rot = { x = 0.000, y = 14.128, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70290544, pos = { x = 628.593, y = 119.394, z = 489.352 }, rot = { x = 0.000, y = 320.888, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4007, shape = RegionShape.SPHERE, radius = 10, pos = { x = 655.418, y = 114.007, z = 479.790 } }
}

-- 触发器
triggers = {
	{ config_id = 1004007, name = "ENTER_REGION_4007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4007", action = "action_EVENT_ENTER_REGION_4007" },
	{ config_id = 1004008, name = "ANY_MONSTER_DIE_4008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4008", action = "action_EVENT_ANY_MONSTER_DIE_4008" },
	{ config_id = 1004014, name = "ANY_MONSTER_DIE_4014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4014", action = "action_EVENT_ANY_MONSTER_DIE_4014" }
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
		gadgets = { 4001 },
		regions = { 4007 },
		triggers = { "ENTER_REGION_4007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4002, 4003, 4004, 4005, 4006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4009, 4010, 4011, 4012, 4013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4007(context, evt)
	if evt.param1 ~= 4007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220173004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220173004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4014(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=630, y=117, z=490}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=630, y=117, z=490}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end