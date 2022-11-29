-- 基础信息
local base_info = {
	group_id = 133302222
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 222016, monster_id = 24020401, pos = { x = -64.089, y = 245.162, z = 2339.606 }, rot = { x = 0.000, y = 350.752, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, affix = { 1048, 5181 }, pose_id = 111, area_id = 20 },
	{ config_id = 222017, monster_id = 24020201, pos = { x = -72.550, y = 245.162, z = 2338.319 }, rot = { x = 0.000, y = 350.752, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, affix = { 1048, 5181 }, pose_id = 111, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 222003, gadget_id = 70290421, pos = { x = -64.089, y = 245.162, z = 2339.606 }, rot = { x = 0.000, y = 350.752, z = 0.000 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 2}, mark_flag = 1, area_id = 20 },
	{ config_id = 222004, gadget_id = 70290422, pos = { x = -57.512, y = 245.289, z = 2347.617 }, rot = { x = 0.000, y = 29.102, z = 0.000 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 20 },
	{ config_id = 222005, gadget_id = 70290422, pos = { x = -56.393, y = 246.754, z = 2334.026 }, rot = { x = 0.000, y = 320.434, z = 0.000 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 20 },
	{ config_id = 222006, gadget_id = 70290422, pos = { x = -79.038, y = 245.295, z = 2346.627 }, rot = { x = 0.000, y = 311.361, z = 0.000 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 2, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 20 },
	{ config_id = 222008, gadget_id = 70290422, pos = { x = -78.735, y = 246.430, z = 2329.389 }, rot = { x = 0.000, y = 36.506, z = 0.000 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 2, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 20 },
	{ config_id = 222009, gadget_id = 70290421, pos = { x = -72.550, y = 245.162, z = 2338.319 }, rot = { x = 0.000, y = 350.752, z = 0.000 }, level = 27, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 2, ["SGV_SEAL_ENABLED"] = 2}, mark_flag = 1, area_id = 20 },
	{ config_id = 222011, gadget_id = 70211011, pos = { x = -56.248, y = 245.068, z = 2339.713 }, rot = { x = 0.000, y = 93.818, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
	-- 保底怪物入战
	{ config_id = 222002, shape = RegionShape.SPHERE, radius = 20, pos = { x = -68.666, y = 245.669, z = 2339.133 }, area_id = 20, vision_type_list = { 33020015 } }
}

-- 触发器
triggers = {
	{ config_id = 1222001, name = "TIME_AXIS_PASS_222001", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_222001", action = "action_EVENT_TIME_AXIS_PASS_222001" },
	-- 保底怪物入战
	{ config_id = 1222002, name = "ENTER_REGION_222002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_222002", action = "action_EVENT_ENTER_REGION_222002", trigger_count = 0 },
	-- 保底任务通知
	{ config_id = 1222007, name = "GROUP_LOAD_222007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_222007", action = "action_EVENT_GROUP_LOAD_222007", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1222010, name = "GADGET_STATE_CHANGE_222010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222010", action = "action_EVENT_GADGET_STATE_CHANGE_222010" },
	-- 和任意操作台（此trigger为1）交互，所有封印环进202，激活所有怪物，删除所有操作台
	{ config_id = 1222012, name = "TIME_AXIS_PASS_222012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_222012", action = "action_EVENT_TIME_AXIS_PASS_222012" },
	-- 所有能量桩都进了202，所有封印圈进201上操作台
	{ config_id = 1222014, name = "GADGET_STATE_CHANGE_222014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222014", action = "action_EVENT_GADGET_STATE_CHANGE_222014" },
	{ config_id = 1222015, name = "ANY_MONSTER_DIE_222015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_222015", action = "action_EVENT_ANY_MONSTER_DIE_222015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlockedRingNum", value = 0, no_refresh = true },
	{ config_id = 2, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 3, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 222016, 222017, 222003, 222004, 222005, 222006, 222008, 222009 }
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
		monsters = { 222016, 222017 },
		gadgets = { 222003, 222004, 222005, 222006, 222008, 222009 },
		regions = { 222002 },
		triggers = { "TIME_AXIS_PASS_222001", "ENTER_REGION_222002", "GROUP_LOAD_222007", "GADGET_STATE_CHANGE_222010", "TIME_AXIS_PASS_222012", "GADGET_STATE_CHANGE_222014", "ANY_MONSTER_DIE_222015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 222004, 222005, 222006, 222008, 222011 },
		regions = { },
		triggers = { "GROUP_LOAD_222007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_222001(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_222001(context, evt)
	-- 将configid为 222003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 222009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-68.10373, y=245.46, z=2338.031}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-68.10373, y=245.46, z=2338.031}
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
function condition_EVENT_ENTER_REGION_222002(context, evt)
	if evt.param1 ~= 222002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133302222) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_222002(context, evt)
	-- 通知groupid为133302222中,configid为：222016的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 222016, 133302222) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  
	end
	
	-- 通知groupid为133302222中,configid为：222017的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 222017, 133302222) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  
	end
	
	-- 将configid为 222003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	-- 将configid为 222009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_222007(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133302222) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_222007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307710_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222010(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302222, 222004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302222, 222005) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302222, 222006) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133302222, 222008) then
		return true
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_222012(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_222012(context, evt)
	-- 通知groupid为133302222中,configid为：222016的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 222016, 133302222) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133302222中,configid为：222017的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 222017, 133302222) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222014(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302222, 222004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302222, 222005) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302222, 222006) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302222, 222008) then
		return false
	end
	
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222014(context, evt)
	-- 将configid为 222003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 222009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222009, GadgetState.GearStart) then
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
function condition_EVENT_ANY_MONSTER_DIE_222015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_222015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302222, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307710_fin") then
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