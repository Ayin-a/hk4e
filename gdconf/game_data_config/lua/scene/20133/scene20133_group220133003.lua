-- 基础信息
local base_info = {
	group_id = 220133003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010501, pos = { x = 2423.974, y = 533.128, z = -1786.863 }, rot = { x = 0.000, y = 32.908, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 3003, monster_id = 21010501, pos = { x = 2417.353, y = 533.080, z = -1787.336 }, rot = { x = 0.000, y = 56.534, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 3008, monster_id = 22010101, pos = { x = 2434.768, y = 536.701, z = -1792.858 }, rot = { x = 0.000, y = 261.733, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 3009, monster_id = 21010501, pos = { x = 2434.594, y = 536.180, z = -1796.112 }, rot = { x = 0.000, y = 261.733, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 3010, monster_id = 21010401, pos = { x = 2422.546, y = 533.026, z = -1781.536 }, rot = { x = 0.000, y = 68.169, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 3011, monster_id = 21010401, pos = { x = 2422.546, y = 533.026, z = -1781.536 }, rot = { x = 0.000, y = 68.169, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3004, gadget_id = 70211102, pos = { x = 2433.056, y = 532.937, z = -1779.814 }, rot = { x = 0.000, y = 270.750, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestTrap, isOneoff = true, persistent = true },
	{ config_id = 3012, gadget_id = 70220026, pos = { x = 2442.382, y = 537.138, z = -1796.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70310001, pos = { x = 2416.347, y = 533.082, z = -1783.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3014, gadget_id = 70310001, pos = { x = 2414.223, y = 533.082, z = -1790.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3015, gadget_id = 70310001, pos = { x = 2451.268, y = 536.756, z = -1782.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3016, gadget_id = 70310001, pos = { x = 2454.318, y = 536.662, z = -1785.908 }, rot = { x = 351.288, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 3005, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = 2433.056, y = 532.937, z = -1779.814 } }
}

-- 触发器
triggers = {
	{ config_id = 1003005, name = "ENTER_REGION_3005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3005", action = "action_EVENT_ENTER_REGION_3005" },
	-- 开宝箱
	{ config_id = 1003006, name = "ANY_MONSTER_DIE_3006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3006", action = "action_EVENT_ANY_MONSTER_DIE_3006", trigger_count = 0 },
	-- Wave++
	{ config_id = 1003007, name = "ANY_MONSTER_DIE_3007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3007", action = "action_EVENT_ANY_MONSTER_DIE_3007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Wave", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1003002, name = "GROUP_LOAD_3002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_3002", action = "action_EVENT_GROUP_LOAD_3002", trigger_count = 0 }
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
		gadgets = { 3004, 3012, 3013, 3014, 3015, 3016 },
		regions = { 3005 },
		triggers = { "ENTER_REGION_3005", "ANY_MONSTER_DIE_3006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001, 3003, 3010, 3011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3006", "ANY_MONSTER_DIE_3007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3008, 3009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3005(context, evt)
	if evt.param1 ~= 3005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3005(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133003, 2)
	
	-- 触发镜头注目，注目位置为坐标（2416.271，533.0818，-1789.001），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2416.271, y=533.0818, z=-1789.001}
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
function condition_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"Wave"为1
	if ScriptLib.GetGroupVariableValue(context, "Wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3006(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"Wave"为0
	if ScriptLib.GetGroupVariableValue(context, "Wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3007(context, evt)
	-- 针对当前group内变量名为 "Wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220133003, 3)
	
	-- 触发镜头注目，注目位置为坐标（2436.744，537.1246，-1792.699），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2436.744, y=537.1246, z=-1792.699}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end