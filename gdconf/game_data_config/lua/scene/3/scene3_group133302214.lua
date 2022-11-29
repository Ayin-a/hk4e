-- 基础信息
local base_info = {
	group_id = 133302214
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214001, monster_id = 24020101, pos = { x = -665.666, y = 102.800, z = 2276.366 }, rot = { x = 0.000, y = 354.317, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 24 },
	{ config_id = 214002, monster_id = 24020201, pos = { x = -668.167, y = 102.800, z = 2285.894 }, rot = { x = 0.000, y = 304.265, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 24 },
	{ config_id = 214003, monster_id = 24020301, pos = { x = -658.969, y = 102.800, z = 2285.080 }, rot = { x = 0.000, y = 343.411, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 214004, gadget_id = 70290421, pos = { x = -665.666, y = 102.800, z = 2276.366 }, rot = { x = 0.000, y = 217.271, z = 0.000 }, level = 15, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 1}, mark_flag = 1, area_id = 24 },
	{ config_id = 214005, gadget_id = 70290422, pos = { x = -662.628, y = 103.456, z = 2258.610 }, rot = { x = 0.000, y = 172.127, z = 0.000 }, level = 15, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 24 },
	{ config_id = 214006, gadget_id = 70290422, pos = { x = -680.921, y = 102.958, z = 2288.070 }, rot = { x = 0.000, y = 302.500, z = 0.000 }, level = 15, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 2, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 24 },
	{ config_id = 214007, gadget_id = 70290422, pos = { x = -638.173, y = 103.691, z = 2291.953 }, rot = { x = 0.000, y = 251.187, z = 0.000 }, level = 15, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 3, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 24 },
	{ config_id = 214009, gadget_id = 70290421, pos = { x = -668.750, y = 102.800, z = 2285.151 }, rot = { x = 15.011, y = 91.789, z = 349.216 }, level = 15, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 2, ["SGV_SEAL_ENABLED"] = 1}, mark_flag = 1, area_id = 24 },
	{ config_id = 214010, gadget_id = 70290421, pos = { x = -658.969, y = 102.800, z = 2285.080 }, rot = { x = 0.000, y = 350.531, z = 0.000 }, level = 15, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 3, ["SGV_SEAL_ENABLED"] = 1}, mark_flag = 1, area_id = 24 },
	{ config_id = 214013, gadget_id = 70211011, pos = { x = -658.366, y = 103.998, z = 2276.743 }, rot = { x = 0.000, y = 304.246, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
	-- 保底怪物入战，封印环销毁
	{ config_id = 214016, shape = RegionShape.SPHERE, radius = 20, pos = { x = -664.037, y = 103.160, z = 2282.565 }, area_id = 24, vision_type_list = { 33020008 } }
}

-- 触发器
triggers = {
	-- 保底任务通知
	{ config_id = 1214008, name = "GROUP_LOAD_214008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_214008", action = "action_EVENT_GROUP_LOAD_214008", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1214011, name = "GADGET_STATE_CHANGE_214011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_214011", action = "action_EVENT_GADGET_STATE_CHANGE_214011" },
	{ config_id = 1214014, name = "TIME_AXIS_PASS_214014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_214014", action = "action_EVENT_TIME_AXIS_PASS_214014" },
	-- 保底怪物入战，封印环销毁
	{ config_id = 1214016, name = "ENTER_REGION_214016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214016", action = "action_EVENT_ENTER_REGION_214016", trigger_count = 0 },
	{ config_id = 1214017, name = "TIME_AXIS_PASS_214017", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_214017", action = "action_EVENT_TIME_AXIS_PASS_214017" },
	-- 能量桩都解封了，封印环一起改变状态到201
	{ config_id = 1214019, name = "GADGET_STATE_CHANGE_214019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_214019", action = "action_EVENT_GADGET_STATE_CHANGE_214019" },
	{ config_id = 1214020, name = "ANY_MONSTER_DIE_214020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_214020", action = "action_EVENT_ANY_MONSTER_DIE_214020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlockedRingNum", value = 0, no_refresh = true },
	{ config_id = 2, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 3, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 214001, 214002, 214003, 214004, 214005, 214006, 214007, 214009, 214010 }
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
		monsters = { 214001, 214002, 214003 },
		gadgets = { 214004, 214005, 214006, 214007, 214009, 214010 },
		regions = { 214016 },
		triggers = { "GROUP_LOAD_214008", "GADGET_STATE_CHANGE_214011", "TIME_AXIS_PASS_214014", "ENTER_REGION_214016", "TIME_AXIS_PASS_214017", "GADGET_STATE_CHANGE_214019", "ANY_MONSTER_DIE_214020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 214005, 214006, 214007, 214013 },
		regions = { },
		triggers = { "GROUP_LOAD_214008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_214008(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133302214) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_214008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307708_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_214011(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302214, 214005) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302214, 214006) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302214, 214007) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_214011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_214014(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_214014(context, evt)
	-- 将configid为 214004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 214009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 214010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-664.4972, y=103.3066, z=2282.053}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-664.4972, y=103.3066, z=2282.053}
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
function condition_EVENT_ENTER_REGION_214016(context, evt)
	if evt.param1 ~= 214016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133302214) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_214016(context, evt)
	-- 通知groupid为133302214中,configid为：214001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 214001, 133302214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  
	end
	
	-- 通知groupid为133302214中,configid为：214002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 214002, 133302214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  
	end
	
	-- 通知groupid为133302214中,configid为：214003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 214003, 133302214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  
	end
	
	-- 将configid为 214004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	-- 将configid为 214009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	-- 将configid为 214010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_214017(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_214017(context, evt)
	-- 通知groupid为133302214中,configid为：214001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 214001, 133302214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133302214中,configid为：214002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 214002, 133302214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133302214中,configid为：214003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 214003, 133302214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_214019(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302214, 214005) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302214, 214006) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302214, 214007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_214019(context, evt)
	-- 将configid为 214004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 214009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 214010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 214010, GadgetState.GearStart) then
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
function condition_EVENT_ANY_MONSTER_DIE_214020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_214020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302214, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307708_fin") then
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