-- 基础信息
local base_info = {
	group_id = 220012003
}

-- Trigger变量
local defs = {
	monster_id_1 = 3006,
	monster_id_2 = 3007,
	monster_id_3 = 3008,
	monster_id_4 = 3009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010501, pos = { x = -16.491, y = 50.231, z = 111.771 }, rot = { x = 0.000, y = 148.850, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 3002, monster_id = 21010501, pos = { x = -14.518, y = 50.231, z = 114.316 }, rot = { x = 0.000, y = 158.100, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 3003, monster_id = 21020101, pos = { x = -4.403, y = 42.016, z = 107.936 }, rot = { x = 0.000, y = 178.810, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 21010201, pos = { x = -6.865, y = 42.016, z = 98.092 }, rot = { x = 0.000, y = 80.300, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 21010201, pos = { x = -4.471, y = 42.017, z = 95.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3006, monster_id = 21010301, pos = { x = 27.710, y = 42.016, z = 130.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 21010301, pos = { x = 27.593, y = 42.016, z = 131.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 21010201, pos = { x = 25.210, y = 42.017, z = 130.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 21010201, pos = { x = 24.899, y = 42.017, z = 131.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3010, gadget_id = 70220010, pos = { x = 5.824, y = 42.070, z = 109.103 }, rot = { x = 0.000, y = 187.200, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70220010, pos = { x = 5.700, y = 42.017, z = 98.238 }, rot = { x = 0.000, y = 185.700, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70220010, pos = { x = -4.525, y = 42.017, z = 98.275 }, rot = { x = 0.000, y = 158.700, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70220004, pos = { x = -16.993, y = 42.016, z = 109.493 }, rot = { x = 0.000, y = 229.534, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70220004, pos = { x = -13.296, y = 42.016, z = 109.380 }, rot = { x = 0.000, y = 102.081, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70220004, pos = { x = -19.600, y = 44.160, z = 109.600 }, rot = { x = 270.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70220004, pos = { x = -19.400, y = 47.500, z = 109.500 }, rot = { x = 270.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70220004, pos = { x = -19.400, y = 50.500, z = 109.555 }, rot = { x = 270.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70220004, pos = { x = -19.500, y = 50.800, z = 112.800 }, rot = { x = 270.000, y = 270.000, z = 0.000 }, level = 10 },
	{ config_id = 3019, gadget_id = 70220005, pos = { x = -15.553, y = 50.231, z = 113.697 }, rot = { x = 0.000, y = 14.678, z = 0.000 }, level = 10 },
	{ config_id = 3020, gadget_id = 70900201, pos = { x = 55.028, y = 44.180, z = 120.913 }, rot = { x = 0.000, y = 158.838, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11, shape = RegionShape.SPHERE, radius = 5, pos = { x = 58.920, y = 42.017, z = 121.096 } }
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" },
	{ config_id = 1000010, name = "ANY_MONSTER_DIE_10", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10", action = "action_EVENT_ANY_MONSTER_DIE_10" },
	{ config_id = 1000011, name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11", forbid_guest = false }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017, 3018, 3019 },
		regions = { 11 },
		triggers = { "ANY_MONSTER_DIE_1", "ANY_MONSTER_DIE_10", "ENTER_REGION_11" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 判断剩余怪物数量是否是4
	if ScriptLib.GetGroupMonsterCount(context) ~= 4 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_2, delay_time = 0.5 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_3, delay_time = 1 }) then
	  return -1
	end
	
	-- 延迟1.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_4, delay_time = 1.5 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-4, y=42, z=107}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 调用提示id为 1005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1005) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10(context, evt)
	-- 改变指定group组220012004中， configid为17的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220012004, 17, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为3020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（48，45，120），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=48, y=45, z=120}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
	if evt.param1 ~= 11 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220012003, monsters = {}, gadgets = {3020} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end