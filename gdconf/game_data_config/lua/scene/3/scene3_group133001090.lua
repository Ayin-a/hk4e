-- 基础信息
local base_info = {
	group_id = 133001090
}

-- Trigger变量
local defs = {
	gadget_id_1 = 1717
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 429, monster_id = 21020101, pos = { x = 1257.553, y = 258.516, z = -1687.204 }, rot = { x = 0.000, y = 80.079, z = 0.000 }, level = 21, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 2 },
	{ config_id = 536, monster_id = 22010201, pos = { x = 1273.998, y = 258.484, z = -1692.625 }, rot = { x = 0.000, y = 319.549, z = 0.000 }, level = 21, drop_tag = "深渊法师", disableWander = true, area_id = 2 },
	{ config_id = 537, monster_id = 21030301, pos = { x = 1271.427, y = 258.565, z = -1676.000 }, rot = { x = 0.000, y = 196.594, z = 0.000 }, level = 21, drop_tag = "丘丘萨满", disableWander = true, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1717, gadget_id = 70900007, pos = { x = 1266.951, y = 259.361, z = -1688.478 }, rot = { x = 0.000, y = 79.834, z = 0.000 }, level = 15, state = GadgetState.GearStop, persistent = true, area_id = 2 },
	{ config_id = 1793, gadget_id = 70211001, pos = { x = 1252.683, y = 261.857, z = -1647.305 }, rot = { x = 0.000, y = 175.934, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 3038, gadget_id = 70211022, pos = { x = 1260.942, y = 258.602, z = -1683.167 }, rot = { x = 0.000, y = 268.853, z = 0.000 }, level = 11, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 180, shape = RegionShape.SPHERE, radius = 19.1, pos = { x = 1269.673, y = 260.565, z = -1686.378 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1000093, name = "GADGET_STATE_CHANGE_93", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93", action = "action_EVENT_GADGET_STATE_CHANGE_93", tlog_tag = "解除黑日族封印" },
	{ config_id = 1000100, name = "ANY_MONSTER_DIE_100", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100", action = "action_EVENT_ANY_MONSTER_DIE_100" },
	{ config_id = 1000180, name = "ENTER_REGION_180", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180", action = "action_EVENT_ENTER_REGION_180" },
	{ config_id = 1000199, name = "TIMER_EVENT_199", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_199", action = "action_EVENT_TIMER_EVENT_199" },
	{ config_id = 1090001, name = "GADGET_CREATE_90001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_90001", action = "action_EVENT_GADGET_CREATE_90001", trigger_count = 0 }
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
		-- description = ,
		monsters = { 429, 536, 537 },
		gadgets = { 1717, 1793, 3038 },
		regions = { 180 },
		triggers = { "GADGET_STATE_CHANGE_93", "ANY_MONSTER_DIE_100", "ENTER_REGION_180", "TIMER_EVENT_199", "GADGET_CREATE_90001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93(context, evt)
	if GadgetState.GearStart ~= evt.param1 or defs.gadget_id_1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93(context, evt)
	-- 延迟2秒后,向groupId为：133001090的对象,请求一次调用,并将string参数："KillPZ1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001090, "KillPZ1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置指定Group为可竞争
	    ScriptLib.SetGroupReplaceable(context, 133001090, true)
	
	-- 通知场景上的所有玩家播放名字为9 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 9, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100(context, evt)
	-- 将configid为 1717 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1717, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（1267，260，-1689），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1267, y=260, z=-1689}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 3038 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3038, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180(context, evt)
	if evt.param1 ~= 180 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180(context, evt)
	-- 通知groupid为133001090中,configid为：536的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 536, 133001090) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133001090中,configid为：537的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 537, 133001090) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133001090中,configid为：429的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 429, 133001090) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_199(context, evt)
	if "KillPZ1" ~= evt.source_name then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_199(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001088, monsters = {}, gadgets = {1776} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_90001(context, evt)
	if 1717 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_90001(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133001088, monsters = {}, gadgets = {1776} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end