-- 基础信息
local base_info = {
	group_id = 133303307
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 307001, monster_id = 24010101, pos = { x = -1120.141, y = 268.984, z = 3389.817 }, rot = { x = 0.000, y = 150.069, z = 0.000 }, level = 30, drop_tag = "遗迹守卫", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 23 },
	{ config_id = 307014, monster_id = 21010101, pos = { x = -1117.537, y = 268.681, z = 3385.544 }, rot = { x = 0.000, y = 158.817, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 307015, monster_id = 21020101, pos = { x = -1120.573, y = 267.992, z = 3381.337 }, rot = { x = 0.000, y = 23.074, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 23 },
	{ config_id = 307016, monster_id = 21010101, pos = { x = -1113.545, y = 268.229, z = 3385.825 }, rot = { x = 0.000, y = 255.793, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 307017, monster_id = 21010101, pos = { x = -1114.480, y = 267.837, z = 3383.504 }, rot = { x = 0.000, y = 301.073, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 307002, gadget_id = 70290421, pos = { x = -1119.749, y = 270.482, z = 3389.321 }, rot = { x = 0.000, y = 16.917, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 3}, mark_flag = 1, area_id = 23 },
	{ config_id = 307003, gadget_id = 70290422, pos = { x = -1108.156, y = 271.147, z = 3387.433 }, rot = { x = 0.000, y = 258.873, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 23 },
	{ config_id = 307004, gadget_id = 70290422, pos = { x = -1137.423, y = 281.608, z = 3398.395 }, rot = { x = 0.000, y = 302.376, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 23 },
	{ config_id = 307005, gadget_id = 70290422, pos = { x = -1133.072, y = 274.273, z = 3381.850 }, rot = { x = 0.000, y = 229.420, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 23 },
	{ config_id = 307006, gadget_id = 70950145, pos = { x = -1120.080, y = 268.947, z = 3389.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 307007, gadget_id = 70211011, pos = { x = -1123.640, y = 269.691, z = 3390.477 }, rot = { x = 8.521, y = 126.629, z = 357.487 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 307013, gadget_id = 70330219, pos = { x = -1137.570, y = 280.917, z = 3398.694 }, rot = { x = 0.000, y = 108.931, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 307018, gadget_id = 70300089, pos = { x = -1114.468, y = 268.479, z = 3387.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 307022, gadget_id = 70220014, pos = { x = -1127.921, y = 267.818, z = 3372.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 307023, gadget_id = 70220014, pos = { x = -1127.258, y = 267.632, z = 3372.631 }, rot = { x = 73.037, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 307024, gadget_id = 70310198, pos = { x = -1127.045, y = 267.484, z = 3370.952 }, rot = { x = 0.000, y = 118.227, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	-- 保底怪物入战，销毁封印环
	{ config_id = 307012, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1119.829, y = 268.712, z = 3389.914 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 三个能量桩都进202了，封印圈进201
	{ config_id = 1307008, name = "GADGET_STATE_CHANGE_307008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_307008", action = "action_EVENT_GADGET_STATE_CHANGE_307008" },
	{ config_id = 1307009, name = "TIME_AXIS_PASS_307009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_307009", action = "action_EVENT_TIME_AXIS_PASS_307009" },
	{ config_id = 1307010, name = "ANY_MONSTER_DIE_307010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_307010", action = "action_EVENT_ANY_MONSTER_DIE_307010" },
	{ config_id = 1307011, name = "TIME_AXIS_PASS_307011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_307011", action = "action_EVENT_TIME_AXIS_PASS_307011" },
	-- 保底怪物入战，销毁封印环
	{ config_id = 1307012, name = "ENTER_REGION_307012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_307012", action = "action_EVENT_ENTER_REGION_307012", trigger_count = 0 },
	-- 保底任务通知
	{ config_id = 1307019, name = "GROUP_LOAD_307019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_307019", action = "action_EVENT_GROUP_LOAD_307019", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1307020, name = "GADGET_STATE_CHANGE_307020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_307020", action = "action_EVENT_GADGET_STATE_CHANGE_307020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 2, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 307001, 307002, 307003, 307004, 307005 }
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
		monsters = { 307001, 307014, 307015, 307016, 307017 },
		gadgets = { 307002, 307003, 307004, 307005, 307006, 307013, 307018, 307022, 307023, 307024 },
		regions = { 307012 },
		triggers = { "GADGET_STATE_CHANGE_307008", "TIME_AXIS_PASS_307009", "ANY_MONSTER_DIE_307010", "TIME_AXIS_PASS_307011", "ENTER_REGION_307012", "GROUP_LOAD_307019", "GADGET_STATE_CHANGE_307020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 307003, 307004, 307005, 307007 },
		regions = { },
		triggers = { "GROUP_LOAD_307019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_307008(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303307, 307003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303307, 307004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303307, 307005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_307008(context, evt)
	-- 将configid为 307002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 307002, GadgetState.GearStart) then
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
function condition_EVENT_TIME_AXIS_PASS_307009(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_307009(context, evt)
	-- 通知groupid为133303307中,configid为：307001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 307001, 133303307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_307010(context, evt)
	--判断死亡怪物的configid是否为 307001
	if evt.param1 ~= 307001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_307010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303307, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307713_fin") then
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
function condition_EVENT_TIME_AXIS_PASS_307011(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_307011(context, evt)
	-- 将configid为 307002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 307002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1119.749, y=270.4824, z=3389.321}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1119.749, y=270.4824, z=3389.321}
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
function condition_EVENT_ENTER_REGION_307012(context, evt)
	if evt.param1 ~= 307012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133303307) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_307012(context, evt)
	-- 通知groupid为133303307中,configid为：307001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 307001, 133303307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 307002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 307002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_307019(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133303307) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_307019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307713_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_307020(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303307, 307003) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303307, 307004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303307, 307005) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_307020(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end