-- 基础信息
local base_info = {
	group_id = 133304152
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 24030101, pos = { x = -1484.090, y = 223.581, z = 2771.954 }, rot = { x = 0.000, y = 71.543, z = 0.000 }, level = 30, drop_tag = "遗迹龙兽", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 152002, gadget_id = 70290423, pos = { x = -1483.985, y = 224.504, z = 2772.228 }, rot = { x = 359.449, y = 322.829, z = 359.871 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 3}, mark_flag = 1, area_id = 21 },
	{ config_id = 152003, gadget_id = 70290422, pos = { x = -1477.557, y = 226.537, z = 2783.284 }, rot = { x = 351.492, y = 200.680, z = 0.217 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 21 },
	{ config_id = 152004, gadget_id = 70290422, pos = { x = -1497.688, y = 222.124, z = 2775.818 }, rot = { x = 7.130, y = 264.693, z = 355.518 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 21 },
	{ config_id = 152005, gadget_id = 70290422, pos = { x = -1479.930, y = 224.012, z = 2762.567 }, rot = { x = 355.551, y = 323.536, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 21 },
	{ config_id = 152007, gadget_id = 70211011, pos = { x = -1491.486, y = 222.877, z = 2782.585 }, rot = { x = 355.796, y = 97.910, z = 351.369 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
	-- 保底怪物入战
	{ config_id = 152014, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1482.754, y = 223.978, z = 2772.148 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 任务通知保底
	{ config_id = 1152006, name = "GROUP_LOAD_152006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_152006", action = "action_EVENT_GROUP_LOAD_152006", trigger_count = 0 },
	-- 三个能量桩都进202了，封印圈进201上操作台
	{ config_id = 1152008, name = "GADGET_STATE_CHANGE_152008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_152008", action = "action_EVENT_GADGET_STATE_CHANGE_152008" },
	{ config_id = 1152009, name = "TIME_AXIS_PASS_152009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_152009", action = "action_EVENT_TIME_AXIS_PASS_152009" },
	{ config_id = 1152010, name = "ANY_MONSTER_DIE_152010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_152010", action = "action_EVENT_ANY_MONSTER_DIE_152010" },
	{ config_id = 1152011, name = "TIME_AXIS_PASS_152011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_152011", action = "action_EVENT_TIME_AXIS_PASS_152011" },
	-- 运营埋点
	{ config_id = 1152013, name = "GADGET_STATE_CHANGE_152013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_152013", action = "action_EVENT_GADGET_STATE_CHANGE_152013" },
	-- 保底怪物入战
	{ config_id = 1152014, name = "ENTER_REGION_152014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_152014", action = "action_EVENT_ENTER_REGION_152014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 2, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 152002, 152003, 152004, 152005, 152001 }
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
		monsters = { 152001 },
		gadgets = { 152002, 152003, 152004, 152005 },
		regions = { 152014 },
		triggers = { "GROUP_LOAD_152006", "GADGET_STATE_CHANGE_152008", "TIME_AXIS_PASS_152009", "ANY_MONSTER_DIE_152010", "TIME_AXIS_PASS_152011", "GADGET_STATE_CHANGE_152013", "ENTER_REGION_152014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 152003, 152004, 152005, 152007 },
		regions = { },
		triggers = { "GROUP_LOAD_152006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_152006(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133304152) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_152006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307716_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_152008(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133304152, 152003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133304152, 152004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133304152, 152005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_152008(context, evt)
	-- 将configid为 152002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 152002, GadgetState.GearStart) then
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
function condition_EVENT_TIME_AXIS_PASS_152009(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_152009(context, evt)
	-- 通知groupid为133304152中,configid为：152001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 152001, 133304152) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_152010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_152010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304152, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307716_fin") then
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
function condition_EVENT_TIME_AXIS_PASS_152011(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_152011(context, evt)
	-- 将configid为 152002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 152002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1484.09, y=225, z=2771.954}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1484.09, y=225, z=2771.954}
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
function condition_EVENT_GADGET_STATE_CHANGE_152013(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133304152, 152003) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133304152, 152004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133304152, 152005) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_152013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_152014(context, evt)
	if evt.param1 ~= 152014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133304152) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_152014(context, evt)
	-- 通知groupid为133304152中,configid为：152001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 152001, 133304152) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 152002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 152002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end