-- 基础信息
local base_info = {
	group_id = 201006007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22, monster_id = 22010101, pos = { x = 180.817, y = 60.614, z = -21.579 }, rot = { x = 0.000, y = 274.641, z = 0.000 }, level = 1, disableWander = true, affix = { 1006 }, isElite = true },
	{ config_id = 23, monster_id = 21030101, pos = { x = 177.060, y = 60.668, z = -22.314 }, rot = { x = 0.000, y = 271.117, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 24, monster_id = 20010601, pos = { x = 165.742, y = 60.764, z = -26.925 }, rot = { x = 0.000, y = 289.281, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 25, monster_id = 20010701, pos = { x = 162.610, y = 60.391, z = -14.699 }, rot = { x = 0.000, y = 87.243, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 44, gadget_id = 70211032, pos = { x = 166.101, y = 81.512, z = -22.084 }, rot = { x = 0.000, y = 90.847, z = 0.000 }, level = 6, chest_drop_id = 11010900, drop_count = 1, state = GadgetState.ChestLocked },
	{ config_id = 48, gadget_id = 70350005, pos = { x = 185.125, y = 60.381, z = -21.987 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 57, gadget_id = 70220004, pos = { x = 172.940, y = 81.460, z = -20.588 }, rot = { x = 0.000, y = 161.029, z = 0.000 }, level = 15 },
	{ config_id = 58, gadget_id = 70220004, pos = { x = 179.727, y = 81.460, z = -31.002 }, rot = { x = 0.000, y = 8.758, z = 0.000 }, level = 15 },
	{ config_id = 59, gadget_id = 70220004, pos = { x = 180.711, y = 81.486, z = -7.002 }, rot = { x = 0.000, y = 258.309, z = 0.000 }, level = 15 },
	{ config_id = 60, gadget_id = 70220004, pos = { x = 160.560, y = 81.460, z = -35.850 }, rot = { x = 0.000, y = 283.228, z = 0.000 }, level = 15 },
	{ config_id = 61, gadget_id = 70220004, pos = { x = 174.294, y = 81.460, z = -36.797 }, rot = { x = 0.000, y = 350.650, z = 0.000 }, level = 15 },
	{ config_id = 62, gadget_id = 70220004, pos = { x = 167.715, y = 81.460, z = -7.437 }, rot = { x = 0.000, y = 266.657, z = 0.000 }, level = 15 },
	{ config_id = 71, gadget_id = 70220004, pos = { x = 163.079, y = 60.566, z = -19.349 }, rot = { x = 0.000, y = 339.029, z = 0.000 }, level = 15 },
	{ config_id = 72, gadget_id = 70220004, pos = { x = 172.246, y = 60.500, z = -32.908 }, rot = { x = 0.000, y = 207.918, z = 0.000 }, level = 15 },
	{ config_id = 73, gadget_id = 70220004, pos = { x = 178.714, y = 60.546, z = -12.499 }, rot = { x = 0.000, y = 304.827, z = 0.000 }, level = 15 },
	{ config_id = 74, gadget_id = 70211012, pos = { x = 175.790, y = 60.499, z = -34.427 }, rot = { x = 0.000, y = 317.406, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 78, gadget_id = 70900201, pos = { x = 199.615, y = 62.358, z = -22.303 }, rot = { x = 0.000, y = 233.840, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 37, shape = RegionShape.SPHERE, radius = 5, pos = { x = 200.117, y = 81.338, z = -22.515 } }
}

-- 触发器
triggers = {
	{ config_id = 1000033, name = "ANY_MONSTER_DIE_33", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33", action = "action_EVENT_ANY_MONSTER_DIE_33" },
	{ config_id = 1000037, name = "ENTER_REGION_37", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_37", action = "action_EVENT_ENTER_REGION_37", forbid_guest = false },
	{ config_id = 1000038, name = "ANY_MONSTER_DIE_38", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38", action = "action_EVENT_ANY_MONSTER_DIE_38" },
	{ config_id = 1000039, name = "ANY_MONSTER_DIE_39", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39", action = "action_EVENT_ANY_MONSTER_DIE_39" },
	{ config_id = 1000040, name = "ANY_MONSTER_DIE_40", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40", action = "action_EVENT_ANY_MONSTER_DIE_40" },
	{ config_id = 1000041, name = "VARIABLE_CHANGE_41", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41", action = "action_EVENT_VARIABLE_CHANGE_41" },
	{ config_id = 1000042, name = "ANY_MONSTER_LIVE_42", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_42", action = "action_EVENT_ANY_MONSTER_LIVE_42" }
}

-- 变量
variables = {
	{ config_id = 1, name = "key", value = 0, no_refresh = false }
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
		-- description = ,
		monsters = { 23, 24, 25 },
		gadgets = { 44, 48, 57, 58, 59, 60, 61, 62, 71, 72, 73, 74 },
		regions = { 37 },
		triggers = { "ANY_MONSTER_DIE_33", "ENTER_REGION_37", "ANY_MONSTER_DIE_38", "ANY_MONSTER_DIE_39", "ANY_MONSTER_DIE_40", "VARIABLE_CHANGE_41", "ANY_MONSTER_LIVE_42" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33(context, evt)
	--判断死亡怪物的configid是否为 22
	if evt.param1 ~= 22 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33(context, evt)
	-- 将configid为 48 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为78的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 78 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 解锁目标3
	if 0 ~= ScriptLib.UnlockForce(context, 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_force")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "DragonTear") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 44 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 74 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 74, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_37(context, evt)
	if evt.param1 ~= 37 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_37(context, evt)
	-- 触发镜头注目，注目位置为坐标（169，82，-22），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=169, y=82, z=-22}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38(context, evt)
	--判断死亡怪物的configid是否为 23
	if evt.param1 ~= 23 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39(context, evt)
	--判断死亡怪物的configid是否为 24
	if evt.param1 ~= 24 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40(context, evt)
	--判断死亡怪物的configid是否为 25
	if evt.param1 ~= 25 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_41(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为3
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_42(context, evt)
	if 22 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_42(context, evt)
	-- 触发镜头注目，注目位置为坐标（180，60，-21），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=180, y=60, z=-21}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0, is_allow_input = true }) then
					return -1
				end 
	
	return 0
end