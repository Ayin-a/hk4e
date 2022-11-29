-- 基础信息
local base_info = {
	group_id = 133304446
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 446001, monster_id = 24010301, pos = { x = -1624.741, y = 91.635, z = 2175.060 }, rot = { x = 0.000, y = 338.368, z = 0.000 }, level = 30, drop_tag = "遗迹重机", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 446002, gadget_id = 70290424, pos = { x = -1623.519, y = 91.974, z = 2174.319 }, rot = { x = 0.000, y = 351.139, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 3}, mark_flag = 1, area_id = 21 },
	{ config_id = 446003, gadget_id = 70290422, pos = { x = -1597.916, y = 92.435, z = 2183.162 }, rot = { x = 10.921, y = 259.489, z = 0.001 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 21 },
	{ config_id = 446004, gadget_id = 70290422, pos = { x = -1638.748, y = 92.540, z = 2189.091 }, rot = { x = 350.592, y = 311.610, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 21 },
	{ config_id = 446005, gadget_id = 70290422, pos = { x = -1629.068, y = 92.826, z = 2147.410 }, rot = { x = 15.269, y = 9.438, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 21 },
	{ config_id = 446007, gadget_id = 70211011, pos = { x = -1628.815, y = 91.662, z = 2169.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
	-- 保底怪物入战封印环销毁
	{ config_id = 446011, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1624.451, y = 89.395, z = 2174.696 }, area_id = 21, vision_type_list = { 33040006 } }
}

-- 触发器
triggers = {
	-- 保底任务通知
	{ config_id = 1446006, name = "GROUP_LOAD_446006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_446006", action = "action_EVENT_GROUP_LOAD_446006", trigger_count = 0 },
	-- 三个能量桩都进202了，封印圈进201
	{ config_id = 1446008, name = "GADGET_STATE_CHANGE_446008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_446008", action = "action_EVENT_GADGET_STATE_CHANGE_446008" },
	{ config_id = 1446009, name = "TIME_AXIS_PASS_446009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_446009", action = "action_EVENT_TIME_AXIS_PASS_446009" },
	{ config_id = 1446010, name = "TIME_AXIS_PASS_446010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_446010", action = "action_EVENT_TIME_AXIS_PASS_446010" },
	-- 保底怪物入战封印环销毁
	{ config_id = 1446011, name = "ENTER_REGION_446011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_446011", action = "action_EVENT_ENTER_REGION_446011", trigger_count = 0 },
	{ config_id = 1446012, name = "ANY_MONSTER_DIE_446012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_446012", action = "action_EVENT_ANY_MONSTER_DIE_446012" },
	-- 运营埋点
	{ config_id = 1446013, name = "GADGET_STATE_CHANGE_446013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_446013", action = "action_EVENT_GADGET_STATE_CHANGE_446013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 2, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 446002, 446003, 446004, 446005, 446001 }
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
		monsters = { 446001 },
		gadgets = { 446002, 446003, 446004, 446005 },
		regions = { 446011 },
		triggers = { "GROUP_LOAD_446006", "GADGET_STATE_CHANGE_446008", "TIME_AXIS_PASS_446009", "TIME_AXIS_PASS_446010", "ENTER_REGION_446011", "ANY_MONSTER_DIE_446012", "GADGET_STATE_CHANGE_446013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 446003, 446004, 446005, 446007 },
		regions = { },
		triggers = { "GROUP_LOAD_446006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_446006(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133304446) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_446006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307719_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_446008(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133304446, 446003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133304446, 446004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133304446, 446005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_446008(context, evt)
	-- 将configid为 446002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 446002, GadgetState.GearStart) then
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
function condition_EVENT_TIME_AXIS_PASS_446009(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_446009(context, evt)
	-- 通知groupid为133304446中,configid为：446001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 446001, 133304446) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_446010(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_446010(context, evt)
	-- 将configid为 446002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 446002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1624.741, y=93.1, z=2175.06}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1624.741, y=93.1, z=2175.06}
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
function condition_EVENT_ENTER_REGION_446011(context, evt)
	if evt.param1 ~= 446011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133304446) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_446011(context, evt)
	-- 通知groupid为133304446中,configid为：446001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 446001, 133304446) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 446002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 446002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_446012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_446012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304446, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307719_fin") then
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
function condition_EVENT_GADGET_STATE_CHANGE_446013(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133304446, 446003) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133304446, 446004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133304446, 446005) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_446013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end