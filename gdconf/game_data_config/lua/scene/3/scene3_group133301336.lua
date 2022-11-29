-- 基础信息
local base_info = {
	group_id = 133301336
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 336001, monster_id = 24030201, pos = { x = -922.466, y = 171.908, z = 3693.801 }, rot = { x = 0.000, y = 248.668, z = 0.000 }, level = 33, drop_tag = "遗迹龙兽", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 23 },
	{ config_id = 336018, monster_id = 26090101, pos = { x = -911.511, y = 172.170, z = 3698.860 }, rot = { x = 0.000, y = 1.472, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 105, area_id = 23 },
	{ config_id = 336019, monster_id = 26090101, pos = { x = -915.536, y = 172.170, z = 3701.269 }, rot = { x = 0.000, y = 164.589, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 336020, monster_id = 26090101, pos = { x = -927.057, y = 172.424, z = 3669.581 }, rot = { x = 0.000, y = 98.393, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 336021, monster_id = 26120301, pos = { x = -923.456, y = 172.170, z = 3688.661 }, rot = { x = 0.000, y = 31.771, z = 0.000 }, level = 33, drop_tag = "大蕈兽", disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 336023, monster_id = 26090101, pos = { x = -918.838, y = 172.170, z = 3692.575 }, rot = { x = 0.000, y = 309.395, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 336024, monster_id = 26090101, pos = { x = -918.145, y = 172.170, z = 3694.652 }, rot = { x = 0.000, y = 207.474, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 336002, gadget_id = 70290423, pos = { x = -922.587, y = 172.332, z = 3693.910 }, rot = { x = 0.000, y = 84.630, z = 0.000 }, level = 33, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 3}, mark_flag = 1, area_id = 23 },
	{ config_id = 336003, gadget_id = 70290422, pos = { x = -926.553, y = 172.710, z = 3667.704 }, rot = { x = 1.327, y = 13.556, z = 0.000 }, level = 33, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 23 },
	{ config_id = 336004, gadget_id = 70290422, pos = { x = -913.040, y = 172.647, z = 3703.363 }, rot = { x = 7.099, y = 244.200, z = 6.537 }, level = 33, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 23 },
	{ config_id = 336005, gadget_id = 70290422, pos = { x = -941.643, y = 181.032, z = 3693.968 }, rot = { x = 28.867, y = 95.596, z = 353.122 }, level = 33, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 23 },
	{ config_id = 336006, gadget_id = 70950145, pos = { x = -921.135, y = 172.650, z = 3693.229 }, rot = { x = 0.000, y = 213.801, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 336007, gadget_id = 70211011, pos = { x = -919.217, y = 172.336, z = 3690.100 }, rot = { x = 358.102, y = 134.947, z = 0.635 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	-- 17
	{ config_id = 336013, gadget_id = 70330219, pos = { x = -942.093, y = 181.086, z = 3693.433 }, rot = { x = 21.048, y = 81.241, z = 0.633 }, level = 33, area_id = 23 },
	-- 19
	{ config_id = 336014, gadget_id = 70330219, pos = { x = -913.163, y = 171.979, z = 3703.333 }, rot = { x = 354.089, y = 223.473, z = 0.000 }, level = 33, area_id = 23 },
	-- 20
	{ config_id = 336015, gadget_id = 70330219, pos = { x = -926.399, y = 172.722, z = 3667.567 }, rot = { x = 1.979, y = 2.393, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 336016, gadget_id = 70310198, pos = { x = -920.805, y = 173.277, z = 3670.586 }, rot = { x = 0.000, y = 11.806, z = 0.000 }, level = 33, area_id = 23 }
}

-- 区域
regions = {
	-- 保底怪物入战，封印环销毁
	{ config_id = 336011, shape = RegionShape.SPHERE, radius = 20, pos = { x = -922.466, y = 171.793, z = 3693.801 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 三个能量桩都进202了，封印圈进201上操作台
	{ config_id = 1336008, name = "GADGET_STATE_CHANGE_336008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_336008", action = "action_EVENT_GADGET_STATE_CHANGE_336008" },
	{ config_id = 1336009, name = "TIME_AXIS_PASS_336009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_336009", action = "action_EVENT_TIME_AXIS_PASS_336009" },
	{ config_id = 1336010, name = "TIME_AXIS_PASS_336010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_336010", action = "action_EVENT_TIME_AXIS_PASS_336010" },
	-- 保底怪物入战，封印环销毁
	{ config_id = 1336011, name = "ENTER_REGION_336011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_336011", action = "action_EVENT_ENTER_REGION_336011", trigger_count = 0 },
	{ config_id = 1336012, name = "ANY_MONSTER_DIE_336012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_336012", action = "action_EVENT_ANY_MONSTER_DIE_336012" },
	{ config_id = 1336017, name = "ANY_GADGET_DIE_336017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_336017", action = "action_EVENT_ANY_GADGET_DIE_336017" },
	{ config_id = 1336022, name = "ANY_GADGET_DIE_336022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_336022", action = "action_EVENT_ANY_GADGET_DIE_336022" },
	-- 保底任务通知
	{ config_id = 1336025, name = "GROUP_LOAD_336025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_336025", action = "action_EVENT_GROUP_LOAD_336025", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1336026, name = "GADGET_STATE_CHANGE_336026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_336026", action = "action_EVENT_GADGET_STATE_CHANGE_336026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 2, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 336001, 336002, 336003, 336004, 336005 }
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
		monsters = { 336001, 336018, 336021, 336023, 336024 },
		gadgets = { 336002, 336003, 336004, 336005, 336006, 336013, 336014, 336015, 336016 },
		regions = { 336011 },
		triggers = { "GADGET_STATE_CHANGE_336008", "TIME_AXIS_PASS_336009", "TIME_AXIS_PASS_336010", "ENTER_REGION_336011", "ANY_MONSTER_DIE_336012", "ANY_GADGET_DIE_336017", "ANY_GADGET_DIE_336022", "GROUP_LOAD_336025", "GADGET_STATE_CHANGE_336026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 336003, 336004, 336005, 336007 },
		regions = { },
		triggers = { "GROUP_LOAD_336025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_336008(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301336, 336003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301336, 336004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301336, 336005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_336008(context, evt)
	-- 将configid为 336002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 336002, GadgetState.GearStart) then
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
function condition_EVENT_TIME_AXIS_PASS_336009(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_336009(context, evt)
	-- 通知groupid为133301336中,configid为：336001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 336001, 133301336) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_336010(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_336010(context, evt)
	-- 将configid为 336002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 336002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-922.5869, y=172.3317, z=3693.91}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-922.5869, y=172.3317, z=3693.91}
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
function condition_EVENT_ENTER_REGION_336011(context, evt)
	if evt.param1 ~= 336011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133301336) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_336011(context, evt)
	-- 通知groupid为133301336中,configid为：336001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 336001, 133301336) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 336002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 336002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_336012(context, evt)
	--判断死亡怪物的configid是否为 336001
	if evt.param1 ~= 336001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_336012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301336, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307705_fin") then
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
function condition_EVENT_ANY_GADGET_DIE_336017(context, evt)
	if 336015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_336017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 336020, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_336022(context, evt)
	if 336014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_336022(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 336019, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_336025(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133301336) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_336025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307705_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_336026(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133301336, 336003) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133301336, 336004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133301336, 336005) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_336026(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end