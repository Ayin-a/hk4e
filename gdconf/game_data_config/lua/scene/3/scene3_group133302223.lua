-- 基础信息
local base_info = {
	group_id = 133302223
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 223001, monster_id = 24030201, pos = { x = -71.996, y = 280.859, z = 2803.935 }, rot = { x = 0.000, y = 223.027, z = 0.000 }, level = 27, drop_tag = "遗迹龙兽", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 223002, gadget_id = 70290423, pos = { x = -71.981, y = 280.862, z = 2803.904 }, rot = { x = 0.000, y = 223.027, z = 0.000 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 3}, mark_flag = 1, area_id = 20 },
	{ config_id = 223003, gadget_id = 70290422, pos = { x = -88.291, y = 276.866, z = 2816.547 }, rot = { x = 7.583, y = 115.667, z = 349.433 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 20 },
	{ config_id = 223004, gadget_id = 70290422, pos = { x = -73.661, y = 280.384, z = 2787.884 }, rot = { x = 2.539, y = 93.071, z = 7.170 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 20 },
	{ config_id = 223005, gadget_id = 70290422, pos = { x = -62.278, y = 284.466, z = 2810.271 }, rot = { x = 356.237, y = 247.604, z = 355.344 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 20 },
	{ config_id = 223006, gadget_id = 70950145, pos = { x = -71.981, y = 280.862, z = 2803.904 }, rot = { x = 0.000, y = 223.027, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 223007, gadget_id = 70211011, pos = { x = -74.044, y = 280.219, z = 2799.432 }, rot = { x = 0.000, y = 223.027, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
	-- 保底怪物入战，销毁封印环
	{ config_id = 223012, shape = RegionShape.SPHERE, radius = 20, pos = { x = -71.502, y = 280.977, z = 2803.325 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 三个能量桩都进202了，封印圈进201上操作台
	{ config_id = 1223008, name = "GADGET_STATE_CHANGE_223008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_223008", action = "action_EVENT_GADGET_STATE_CHANGE_223008" },
	{ config_id = 1223009, name = "TIME_AXIS_PASS_223009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_223009", action = "action_EVENT_TIME_AXIS_PASS_223009" },
	{ config_id = 1223010, name = "ANY_MONSTER_DIE_223010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_223010", action = "action_EVENT_ANY_MONSTER_DIE_223010" },
	{ config_id = 1223011, name = "TIME_AXIS_PASS_223011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_223011", action = "action_EVENT_TIME_AXIS_PASS_223011" },
	-- 保底怪物入战，销毁封印环
	{ config_id = 1223012, name = "ENTER_REGION_223012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_223012", action = "action_EVENT_ENTER_REGION_223012", trigger_count = 0 },
	-- 保底任务通知
	{ config_id = 1223013, name = "GROUP_LOAD_223013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_223013", action = "action_EVENT_GROUP_LOAD_223013", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1223014, name = "GADGET_STATE_CHANGE_223014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_223014", action = "action_EVENT_GADGET_STATE_CHANGE_223014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 2, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 223001, 223002, 223003, 223004, 223005 }
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
		monsters = { 223001 },
		gadgets = { 223002, 223003, 223004, 223005, 223006 },
		regions = { 223012 },
		triggers = { "GADGET_STATE_CHANGE_223008", "TIME_AXIS_PASS_223009", "ANY_MONSTER_DIE_223010", "TIME_AXIS_PASS_223011", "ENTER_REGION_223012", "GROUP_LOAD_223013", "GADGET_STATE_CHANGE_223014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 223003, 223004, 223005, 223007 },
		regions = { },
		triggers = { "GROUP_LOAD_223013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_223008(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302223, 223003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302223, 223004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302223, 223005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_223008(context, evt)
	-- 将configid为 223002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223002, GadgetState.GearStart) then
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
function condition_EVENT_TIME_AXIS_PASS_223009(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_223009(context, evt)
	-- 通知groupid为133302223中,configid为：223001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 223001, 133302223) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_223010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_223010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302223, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307711_fin") then
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
function condition_EVENT_TIME_AXIS_PASS_223011(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_223011(context, evt)
	-- 将configid为 223002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-71.9964, y=282.3, z=2803.935}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-71.9964, y=282.3, z=2803.935}
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
function condition_EVENT_ENTER_REGION_223012(context, evt)
	if evt.param1 ~= 223012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133302223) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_223012(context, evt)
	-- 通知groupid为133302223中,configid为：223001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 223001, 133302223) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 223002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_223013(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133302223) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_223013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307711_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_223014(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302223, 223003) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302223, 223004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302223, 223005) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_223014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end