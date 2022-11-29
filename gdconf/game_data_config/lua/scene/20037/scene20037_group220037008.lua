-- 基础信息
local base_info = {
	group_id = 220037008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8002, monster_id = 23010601, pos = { x = 194.857, y = 18.767, z = -3.821 }, rot = { x = 0.000, y = 317.581, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8007, monster_id = 23010501, pos = { x = 194.030, y = 19.463, z = 4.439 }, rot = { x = 0.000, y = 296.885, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8008, monster_id = 23010401, pos = { x = 195.034, y = 18.747, z = 14.467 }, rot = { x = 0.000, y = 200.354, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8011, monster_id = 23010401, pos = { x = 221.084, y = 18.806, z = 4.308 }, rot = { x = 0.000, y = 263.418, z = 0.000 }, level = 1 },
	{ config_id = 8012, monster_id = 23010201, pos = { x = 207.309, y = 18.817, z = 19.332 }, rot = { x = 0.000, y = 171.152, z = 0.000 }, level = 1 },
	{ config_id = 8013, monster_id = 23010301, pos = { x = 209.066, y = 18.742, z = -11.977 }, rot = { x = 0.000, y = 358.901, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8003, gadget_id = 70320002, pos = { x = 217.589, y = 18.767, z = -3.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8004, gadget_id = 70320002, pos = { x = 197.795, y = 18.746, z = 11.297 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8005, gadget_id = 70320002, pos = { x = 197.783, y = 18.832, z = -4.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8006, gadget_id = 70350002, pos = { x = 243.512, y = 21.535, z = 4.125 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 8009, gadget_id = 70220010, pos = { x = 211.844, y = 19.519, z = 8.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8010, gadget_id = 70220010, pos = { x = 203.037, y = 19.519, z = 8.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8014, gadget_id = 70220010, pos = { x = 212.553, y = 19.519, z = -0.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8015, gadget_id = 70220010, pos = { x = 202.999, y = 19.519, z = -0.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8018, gadget_id = 70320002, pos = { x = 218.039, y = 18.766, z = 11.393 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 8001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 175.333, y = 18.766, z = 4.123 } }
}

-- 触发器
triggers = {
	{ config_id = 1008001, name = "ENTER_REGION_8001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8001", action = "action_EVENT_ENTER_REGION_8001" },
	{ config_id = 1008016, name = "ANY_MONSTER_DIE_8016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8016", action = "action_EVENT_ANY_MONSTER_DIE_8016" },
	{ config_id = 1008017, name = "ANY_MONSTER_DIE_8017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8017", action = "action_EVENT_ANY_MONSTER_DIE_8017" }
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
		gadgets = { 8003, 8004, 8005, 8006, 8009, 8010, 8014, 8015, 8018 },
		regions = { 8001 },
		triggers = { "ENTER_REGION_8001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8002, 8007, 8008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8016" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 8011, 8012, 8013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8017" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8001(context, evt)
	if evt.param1 ~= 8001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8001(context, evt)
	-- 改变指定group组220037001中， configid为1012的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220037001, 1012, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220037008, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220037008, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8017(context, evt)
	-- 将configid为 8006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1012215") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（243，26.27，4），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=243, y=26.27, z=4}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end