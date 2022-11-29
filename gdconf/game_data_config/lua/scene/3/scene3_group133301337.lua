-- 基础信息
local base_info = {
	group_id = 133301337
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 337001, monster_id = 24030101, pos = { x = -441.063, y = 155.500, z = 3579.987 }, rot = { x = 0.000, y = 294.909, z = 0.000 }, level = 33, drop_tag = "遗迹龙兽", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 337002, gadget_id = 70290423, pos = { x = -441.730, y = 157.729, z = 3580.116 }, rot = { x = 354.681, y = 334.657, z = 358.584 }, level = 33, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 3}, mark_flag = 1, area_id = 22 },
	{ config_id = 337003, gadget_id = 70290422, pos = { x = -414.693, y = 203.111, z = 3583.677 }, rot = { x = 14.202, y = 246.613, z = 3.885 }, level = 33, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 22 },
	{ config_id = 337004, gadget_id = 70290422, pos = { x = -485.336, y = 158.946, z = 3616.881 }, rot = { x = 355.407, y = 129.726, z = 358.248 }, level = 33, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 22 },
	{ config_id = 337005, gadget_id = 70290422, pos = { x = -439.640, y = 168.483, z = 3563.555 }, rot = { x = 15.428, y = 4.127, z = 9.602 }, level = 33, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 22 },
	{ config_id = 337006, gadget_id = 70950145, pos = { x = -449.626, y = 155.500, z = 3583.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 337007, gadget_id = 70211011, pos = { x = -455.691, y = 155.437, z = 3588.876 }, rot = { x = 353.158, y = 300.153, z = 2.001 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 337013, gadget_id = 70220005, pos = { x = -413.405, y = 203.260, z = 3582.748 }, rot = { x = 2.319, y = 0.090, z = 359.748 }, level = 33, isOneoff = true, area_id = 22 }
}

-- 区域
regions = {
	-- 保底怪物入战
	{ config_id = 337011, shape = RegionShape.SPHERE, radius = 20, pos = { x = -439.605, y = 155.500, z = 3578.641 }, area_id = 22 }
}

-- 触发器
triggers = {
	-- 三个能量桩都进202了，封印圈进201上操作台
	{ config_id = 1337008, name = "GADGET_STATE_CHANGE_337008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_337008", action = "action_EVENT_GADGET_STATE_CHANGE_337008" },
	{ config_id = 1337009, name = "TIME_AXIS_PASS_337009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_337009", action = "action_EVENT_TIME_AXIS_PASS_337009" },
	{ config_id = 1337010, name = "TIME_AXIS_PASS_337010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_337010", action = "action_EVENT_TIME_AXIS_PASS_337010" },
	-- 保底怪物入战
	{ config_id = 1337011, name = "ENTER_REGION_337011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_337011", action = "action_EVENT_ENTER_REGION_337011", trigger_count = 0 },
	{ config_id = 1337012, name = "ANY_MONSTER_DIE_337012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_337012", action = "action_EVENT_ANY_MONSTER_DIE_337012" },
	-- 保底任务通知
	{ config_id = 1337014, name = "GROUP_LOAD_337014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_337014", action = "action_EVENT_GROUP_LOAD_337014", trigger_count = 0 },
	{ config_id = 1337015, name = "GADGET_STATE_CHANGE_337015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_337015", action = "action_EVENT_GADGET_STATE_CHANGE_337015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 2, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 337001, 337002, 337003, 337004, 337005 }
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
		monsters = { 337001 },
		gadgets = { 337002, 337003, 337004, 337005, 337006, 337013 },
		regions = { 337011 },
		triggers = { "GADGET_STATE_CHANGE_337008", "TIME_AXIS_PASS_337009", "TIME_AXIS_PASS_337010", "ENTER_REGION_337011", "ANY_MONSTER_DIE_337012", "GROUP_LOAD_337014", "GADGET_STATE_CHANGE_337015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 337003, 337004, 337005, 337007 },
		regions = { },
		triggers = { "GROUP_LOAD_337014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_337008(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301337, 337003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301337, 337004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301337, 337005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_337008(context, evt)
	-- 将configid为 337002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 337002, GadgetState.GearStart) then
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
function condition_EVENT_TIME_AXIS_PASS_337009(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_337009(context, evt)
	-- 通知groupid为133301337中,configid为：337001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 337001, 133301337) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_337010(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_337010(context, evt)
	-- 将configid为 337002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 337002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-441.063, y=155.5, z=3579.987}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-441.063, y=155.5, z=3579.987}
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
function condition_EVENT_ENTER_REGION_337011(context, evt)
	if evt.param1 ~= 337011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133301337) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_337011(context, evt)
	-- 通知groupid为133301337中,configid为：337001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 337001, 133301337) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 337002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 337002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_337012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_337012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301337, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307706_fin") then
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
function condition_EVENT_GROUP_LOAD_337014(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133301337) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_337014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307706_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_337015(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133301337, 337003) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133301337, 337004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133301337, 337005) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_337015(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end