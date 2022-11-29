-- 基础信息
local base_info = {
	group_id = 133301093
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 93001, monster_id = 24021101, pos = { x = -905.331, y = -4.787, z = 3143.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, affix = { 5181, 5182, 5183, 5185, 5184 }, pose_id = 111, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 93002, gadget_id = 70290423, pos = { x = -905.364, y = -4.568, z = 3144.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 3}, mark_flag = 1, area_id = 23 },
	{ config_id = 93003, gadget_id = 70290422, pos = { x = -894.203, y = -5.631, z = 3144.886 }, rot = { x = 0.000, y = 276.841, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 23 },
	{ config_id = 93004, gadget_id = 70290422, pos = { x = -915.444, y = -5.627, z = 3154.154 }, rot = { x = 0.000, y = 311.610, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 23 },
	{ config_id = 93005, gadget_id = 70290422, pos = { x = -912.633, y = -5.631, z = 3133.069 }, rot = { x = 0.000, y = 45.239, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 23 },
	{ config_id = 93007, gadget_id = 70360001, pos = { x = -908.940, y = -5.625, z = 3143.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	-- 保底怪物入战
	{ config_id = 93012, shape = RegionShape.SPHERE, radius = 25, pos = { x = -906.212, y = -5.080, z = 3144.337 }, area_id = 23, vision_type_list = { 33010033 } }
}

-- 触发器
triggers = {
	-- 保底任务通知
	{ config_id = 1093006, name = "GROUP_LOAD_93006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_93006", action = "action_EVENT_GROUP_LOAD_93006", trigger_count = 0 },
	-- 三个能量桩都进202了，封印圈进201上操作台
	{ config_id = 1093008, name = "GADGET_STATE_CHANGE_93008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93008", action = "action_EVENT_GADGET_STATE_CHANGE_93008" },
	{ config_id = 1093009, name = "TIME_AXIS_PASS_93009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_93009", action = "action_EVENT_TIME_AXIS_PASS_93009" },
	{ config_id = 1093010, name = "ANY_MONSTER_DIE_93010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_93010", action = "action_EVENT_ANY_MONSTER_DIE_93010" },
	{ config_id = 1093011, name = "TIME_AXIS_PASS_93011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_93011", action = "action_EVENT_TIME_AXIS_PASS_93011" },
	-- 保底怪物入战
	{ config_id = 1093012, name = "ENTER_REGION_93012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_93012", action = "action_EVENT_ENTER_REGION_93012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 2, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 93001, 93002, 93003, 93004, 93005 }
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
		monsters = { 93001 },
		gadgets = { 93002, 93003, 93004, 93005, 93007 },
		regions = { 93012 },
		triggers = { "GROUP_LOAD_93006", "GADGET_STATE_CHANGE_93008", "TIME_AXIS_PASS_93009", "ANY_MONSTER_DIE_93010", "TIME_AXIS_PASS_93011", "ENTER_REGION_93012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_93006(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133301093) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_93006(context, evt)
	-- 将configid为 93007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93008(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301093, 93003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301093, 93004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301093, 93005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93008(context, evt)
	-- 将configid为 93002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"delay"，时间节点为{2,3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {2,3}, false)
	
	
	-- 将本组内变量名为 "alldead" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alldead", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_93009(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_93009(context, evt)
	-- 通知groupid为133301093中,configid为：93001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 93001, 133301093) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_93010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_93010(context, evt)
	-- 将configid为 93007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "questfin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questfin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_93011(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_93011(context, evt)
	-- 将configid为 93002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-905.3311, y=-3.287384, z=3143.989}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-905.3311, y=-3.287384, z=3143.989}
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
function condition_EVENT_ENTER_REGION_93012(context, evt)
	if evt.param1 ~= 93012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133301093) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_93012(context, evt)
	-- 通知groupid为133301093中,configid为：93001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 93001, 133301093) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 93002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end