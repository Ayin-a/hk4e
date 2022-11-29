-- 基础信息
local base_info = {
	group_id = 133302216
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 216011, monster_id = 24010201, pos = { x = 131.263, y = 399.939, z = 2110.685 }, rot = { x = 0.000, y = 111.360, z = 0.000 }, level = 27, drop_tag = "遗迹守卫", disableWander = true, affix = { 1048, 5181 }, pose_id = 111, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 216002, gadget_id = 70290424, pos = { x = 131.263, y = 400.913, z = 2110.685 }, rot = { x = 0.000, y = 359.072, z = 0.000 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 3}, mark_flag = 1, area_id = 20 },
	{ config_id = 216003, gadget_id = 70290422, pos = { x = 156.958, y = 397.112, z = 2119.648 }, rot = { x = 0.000, y = 78.731, z = 0.000 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 20 },
	{ config_id = 216004, gadget_id = 70290422, pos = { x = 125.382, y = 399.533, z = 2122.609 }, rot = { x = 0.000, y = 332.515, z = 0.000 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 20 },
	{ config_id = 216005, gadget_id = 70290422, pos = { x = 130.190, y = 401.833, z = 2099.516 }, rot = { x = 0.000, y = 3.072, z = 0.000 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 20 },
	{ config_id = 216007, gadget_id = 70211011, pos = { x = 103.923, y = 402.612, z = 2119.491 }, rot = { x = 358.301, y = 150.417, z = 7.771 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
	-- 保底怪物入战，封印环销毁
	{ config_id = 216012, shape = RegionShape.SPHERE, radius = 20, pos = { x = 131.263, y = 399.939, z = 2110.685 }, area_id = 20, vision_type_list = { 33150005 } }
}

-- 触发器
triggers = {
	{ config_id = 1216001, name = "TIME_AXIS_PASS_216001", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_216001", action = "action_EVENT_TIME_AXIS_PASS_216001" },
	-- 保底任务通知
	{ config_id = 1216006, name = "GROUP_LOAD_216006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_216006", action = "action_EVENT_GROUP_LOAD_216006", trigger_count = 0 },
	-- 三个能量桩都进202了，封印圈进201
	{ config_id = 1216008, name = "GADGET_STATE_CHANGE_216008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_216008", action = "action_EVENT_GADGET_STATE_CHANGE_216008" },
	{ config_id = 1216009, name = "TIME_AXIS_PASS_216009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_216009", action = "action_EVENT_TIME_AXIS_PASS_216009" },
	{ config_id = 1216010, name = "ANY_MONSTER_DIE_216010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_216010", action = "action_EVENT_ANY_MONSTER_DIE_216010" },
	-- 保底怪物入战，封印环销毁
	{ config_id = 1216012, name = "ENTER_REGION_216012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_216012", action = "action_EVENT_ENTER_REGION_216012", trigger_count = 0 },
	{ config_id = 1216013, name = "GADGET_STATE_CHANGE_216013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_216013", action = "action_EVENT_GADGET_STATE_CHANGE_216013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 2, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 216011, 216002, 216003, 216004, 216005 }
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
		monsters = { 216011 },
		gadgets = { 216002, 216003, 216004, 216005 },
		regions = { 216012 },
		triggers = { "TIME_AXIS_PASS_216001", "GROUP_LOAD_216006", "GADGET_STATE_CHANGE_216008", "TIME_AXIS_PASS_216009", "ANY_MONSTER_DIE_216010", "ENTER_REGION_216012", "GADGET_STATE_CHANGE_216013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 216003, 216004, 216005, 216007 },
		regions = { },
		triggers = { "GROUP_LOAD_216006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_216001(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_216001(context, evt)
	-- 将configid为 216002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=131.263, y=399.9393, z=2110.685}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=131.263, y=399.9393, z=2110.685}
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
function condition_EVENT_GROUP_LOAD_216006(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133302216) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_216006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307709_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_216008(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302216, 216003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302216, 216004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302216, 216005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_216008(context, evt)
	-- 将configid为 216002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216002, GadgetState.GearStart) then
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
function condition_EVENT_TIME_AXIS_PASS_216009(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_216009(context, evt)
	-- 通知groupid为133302216中,configid为：216011的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 216011, 133302216) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_216010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_216010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302216, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307709_fin") then
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
function condition_EVENT_ENTER_REGION_216012(context, evt)
	if evt.param1 ~= 216012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133302216) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_216012(context, evt)
	-- 通知groupid为133302216中,configid为：216011的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 216011, 133302216) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 216002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 216002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_216013(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302216, 216003) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302216, 216004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302216, 216005) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_216013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end