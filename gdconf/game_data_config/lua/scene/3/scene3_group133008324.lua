-- 基础信息
local base_info = {
	group_id = 133008324
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 324001, monster_id = 24010301, pos = { x = 830.257, y = 325.842, z = -637.403 }, rot = { x = 0.000, y = 185.927, z = 0.000 }, level = 35, drop_tag = "遗迹重机", affix = { 5009 }, isElite = true, isOneoff = true, pose_id = 101, climate_area_id = 1, area_id = 10 },
	{ config_id = 324007, monster_id = 24010301, pos = { x = 830.257, y = 325.842, z = -637.403 }, rot = { x = 0.000, y = 185.927, z = 0.000 }, level = 30, drop_tag = "遗迹重机", isElite = true, isOneoff = true, pose_id = 100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 324003, gadget_id = 70360001, pos = { x = 837.846, y = 325.918, z = -644.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1324002, name = "ANY_MONSTER_DIE_324002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_324002", action = "action_EVENT_ANY_MONSTER_DIE_324002" },
	{ config_id = 1324004, name = "ANY_GADGET_DIE_324004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_324004", action = "action_EVENT_ANY_GADGET_DIE_324004", trigger_count = 0 },
	{ config_id = 1324005, name = "GROUP_LOAD_324005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_324005", action = "action_EVENT_GROUP_LOAD_324005", trigger_count = 0 },
	{ config_id = 1324006, name = "ANY_MONSTER_DIE_324006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_324006", action = "action_EVENT_ANY_MONSTER_DIE_324006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActivate", value = 0, no_refresh = true }
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
		monsters = { 324001 },
		gadgets = { 324003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_324002", "ANY_GADGET_DIE_324004", "GROUP_LOAD_324005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 324007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_324006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_324002(context, evt)
	--判断死亡怪物的configid是否为 324001
	if evt.param1 ~= 324001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_324002(context, evt)
	-- 改变指定group组133008228中， configid为228001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008228, 228001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133008228中， configid为228006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008228, 228006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133008165中， configid为165001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008165, 165001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（814，326，-657），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=814, y=326, z=-657}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "isActivate" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActivate", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_324004(context, evt)
	if 324003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_324004(context, evt)
	-- 将本组内变量名为 "isActivate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActivate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {324001}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为133008324中,configid为：324001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 324001, 133008324) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_324005(context, evt)
	-- 判断变量"isActivate"为1
	if ScriptLib.GetGroupVariableValue(context, "isActivate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_324005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008324, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_324006(context, evt)
	--判断死亡怪物的configid是否为 324007
	if evt.param1 ~= 324007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_324006(context, evt)
	-- 改变指定group组133008228中， configid为228001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008228, 228001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133008228中， configid为228006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008228, 228006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133008165中， configid为165001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008165, 165001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（814，326，-657），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=814, y=326, z=-657}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end