-- 基础信息
local base_info = {
	group_id = 133304189
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 189001, monster_id = 24010201, pos = { x = -1148.164, y = 149.270, z = 2225.196 }, rot = { x = 0.000, y = 15.306, z = 0.000 }, level = 30, drop_tag = "遗迹守卫", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 21 },
	{ config_id = 189002, monster_id = 24020401, pos = { x = -1158.670, y = 150.985, z = 2234.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 189003, gadget_id = 70290423, pos = { x = -1148.463, y = 154.225, z = 2224.938 }, rot = { x = 0.000, y = 224.554, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 2}, mark_flag = 1, area_id = 21 },
	{ config_id = 189004, gadget_id = 70290422, pos = { x = -1148.906, y = 151.068, z = 2200.864 }, rot = { x = 357.674, y = 9.989, z = 352.312 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 21 },
	{ config_id = 189005, gadget_id = 70290422, pos = { x = -1124.018, y = 150.810, z = 2246.482 }, rot = { x = 357.251, y = 35.877, z = 356.380 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 21 },
	{ config_id = 189006, gadget_id = 70290422, pos = { x = -1155.399, y = 150.767, z = 2257.318 }, rot = { x = 0.056, y = 21.352, z = 7.772 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 2, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 21 },
	{ config_id = 189008, gadget_id = 70290422, pos = { x = -1177.920, y = 151.699, z = 2230.956 }, rot = { x = 352.311, y = 265.912, z = 4.112 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 2, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 21 },
	{ config_id = 189009, gadget_id = 70290421, pos = { x = -1158.670, y = 152.556, z = 2234.292 }, rot = { x = 0.000, y = 65.713, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 2, ["SGV_SEAL_ENABLED"] = 2}, mark_flag = 1, area_id = 21 },
	{ config_id = 189011, gadget_id = 70211011, pos = { x = -1152.884, y = 150.997, z = 2227.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 189013, gadget_id = 70360001, pos = { x = -1155.952, y = 150.983, z = 2231.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	-- 保底怪物入战，封印环销毁
	{ config_id = 189017, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1154.538, y = 150.984, z = 2230.738 }, area_id = 21, vision_type_list = { 33040019 } }
}

-- 触发器
triggers = {
	-- 保底任务通知
	{ config_id = 1189007, name = "GROUP_LOAD_189007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_189007", action = "action_EVENT_GROUP_LOAD_189007", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1189010, name = "GADGET_STATE_CHANGE_189010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_189010", action = "action_EVENT_GADGET_STATE_CHANGE_189010" },
	{ config_id = 1189012, name = "TIME_AXIS_PASS_189012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_189012", action = "action_EVENT_TIME_AXIS_PASS_189012" },
	-- 所有能量桩都进了202，所有封印圈进201
	{ config_id = 1189014, name = "GADGET_STATE_CHANGE_189014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_189014", action = "action_EVENT_GADGET_STATE_CHANGE_189014" },
	{ config_id = 1189015, name = "ANY_MONSTER_DIE_189015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_189015", action = "action_EVENT_ANY_MONSTER_DIE_189015" },
	{ config_id = 1189016, name = "TIME_AXIS_PASS_189016", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_189016", action = "action_EVENT_TIME_AXIS_PASS_189016" },
	-- 保底怪物入战，封印环销毁
	{ config_id = 1189017, name = "ENTER_REGION_189017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_189017", action = "action_EVENT_ENTER_REGION_189017", trigger_count = 0 },
	{ config_id = 1189018, name = "VARIABLE_CHANGE_189018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_189018", action = "action_EVENT_VARIABLE_CHANGE_189018", trigger_count = 0 },
	{ config_id = 1189019, name = "GROUP_LOAD_189019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_189019", action = "action_EVENT_GROUP_LOAD_189019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlockedRingNum", value = 0, no_refresh = true },
	{ config_id = 2, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 3, name = "questfin", value = 0, no_refresh = true },
	{ config_id = 4, name = "qsuite", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 189001, 189002 }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		monsters = { 189001, 189002 },
		gadgets = { 189003, 189004, 189005, 189006, 189008, 189009 },
		regions = { 189017 },
		triggers = { "GROUP_LOAD_189007", "GADGET_STATE_CHANGE_189010", "TIME_AXIS_PASS_189012", "GADGET_STATE_CHANGE_189014", "ANY_MONSTER_DIE_189015", "TIME_AXIS_PASS_189016", "ENTER_REGION_189017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 189004, 189005, 189006, 189008, 189011 },
		regions = { },
		triggers = { "GROUP_LOAD_189007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 189013 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_189018", "GROUP_LOAD_189019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_189007(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133304189) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_189007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307717_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_189010(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133304189, 189004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133304189, 189005) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133304189, 189006) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133304189, 189008) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_189010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_189012(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_189012(context, evt)
	-- 通知groupid为133304189中,configid为：189001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 189001, 133304189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133304189中,configid为：189002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 189002, 133304189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_189014(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133304189, 189004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133304189, 189005) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133304189, 189006) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133304189, 189008) then
		return false
	end
	
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_189014(context, evt)
	-- 将configid为 189003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 189009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189009, GadgetState.GearStart) then
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
function condition_EVENT_ANY_MONSTER_DIE_189015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_189015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304189, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307717_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "questfin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questfin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_189016(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_189016(context, evt)
	-- 将configid为 189003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 189009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1154.87, y=152.3, z=2228.845}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1154.87, y=152.3, z=2228.845}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_189017(context, evt)
	if evt.param1 ~= 189017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133304189) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_189017(context, evt)
	-- 通知groupid为133304189中,configid为：189001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 189001, 133304189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  
	end
	
	-- 通知groupid为133304189中,configid为：189002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 189002, 133304189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  
	end
	
	-- 将configid为 189009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	-- 将configid为 189003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_189018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"qsuite"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "qsuite", 133304189) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_189018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304189, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_189019(context, evt)
	-- 判断变量"qsuite"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "qsuite", 133304189) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_189019(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304189, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end