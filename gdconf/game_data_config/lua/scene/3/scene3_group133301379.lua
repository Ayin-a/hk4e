-- 基础信息
local base_info = {
	group_id = 133301379
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 379001, monster_id = 24020101, pos = { x = -893.121, y = 269.456, z = 3288.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 23 },
	{ config_id = 379002, monster_id = 24020101, pos = { x = -901.846, y = 269.048, z = 3292.992 }, rot = { x = 0.000, y = 71.844, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 23 },
	{ config_id = 379003, monster_id = 24020301, pos = { x = -895.953, y = 269.242, z = 3292.773 }, rot = { x = 0.000, y = 224.964, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 379004, gadget_id = 70290421, pos = { x = -893.101, y = 270.345, z = 3287.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 1}, mark_flag = 1, area_id = 23 },
	{ config_id = 379005, gadget_id = 70290422, pos = { x = -901.311, y = 277.290, z = 3248.733 }, rot = { x = 356.799, y = 16.249, z = 339.463 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 23 },
	{ config_id = 379006, gadget_id = 70290422, pos = { x = -904.650, y = 276.323, z = 3284.512 }, rot = { x = 356.312, y = 244.245, z = 328.328 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 2, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 23 },
	{ config_id = 379007, gadget_id = 70290422, pos = { x = -938.249, y = 271.627, z = 3275.314 }, rot = { x = 1.620, y = 68.896, z = 17.974 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 3, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 23 },
	{ config_id = 379009, gadget_id = 70290421, pos = { x = -896.251, y = 269.206, z = 3292.454 }, rot = { x = 0.000, y = 19.234, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 2, ["SGV_SEAL_ENABLED"] = 1}, mark_flag = 1, area_id = 23 },
	{ config_id = 379010, gadget_id = 70290421, pos = { x = -901.676, y = 269.911, z = 3292.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 3, ["SGV_SEAL_ENABLED"] = 1}, mark_flag = 1, area_id = 23 },
	{ config_id = 379013, gadget_id = 70211011, pos = { x = -897.824, y = 269.124, z = 3290.280 }, rot = { x = 0.000, y = 219.358, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	-- 保底怪物入战，封印环销毁
	{ config_id = 379016, shape = RegionShape.SPHERE, radius = 20, pos = { x = -896.681, y = 269.157, z = 3290.715 }, area_id = 23, vision_type_list = { 33010024 } }
}

-- 触发器
triggers = {
	-- 保底任务通知
	{ config_id = 1379008, name = "GROUP_LOAD_379008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_379008", action = "action_EVENT_GROUP_LOAD_379008", trigger_count = 0 },
	{ config_id = 1379011, name = "GADGET_STATE_CHANGE_379011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_379011", action = "action_EVENT_GADGET_STATE_CHANGE_379011" },
	{ config_id = 1379014, name = "TIME_AXIS_PASS_379014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_379014", action = "action_EVENT_TIME_AXIS_PASS_379014" },
	-- 保底怪物入战，封印环销毁
	{ config_id = 1379016, name = "ENTER_REGION_379016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_379016", action = "action_EVENT_ENTER_REGION_379016", trigger_count = 0 },
	-- 和操作台2交互，所有封印圈都进入202+激活所有怪物+删除所有操作台
	{ config_id = 1379017, name = "TIME_AXIS_PASS_379017", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_379017", action = "action_EVENT_TIME_AXIS_PASS_379017" },
	-- 封印环1、2、3关联的能量桩都解封了，封印环一起改变状态到201上操作台
	{ config_id = 1379019, name = "GADGET_STATE_CHANGE_379019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_379019", action = "action_EVENT_GADGET_STATE_CHANGE_379019" },
	{ config_id = 1379020, name = "ANY_MONSTER_DIE_379020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_379020", action = "action_EVENT_ANY_MONSTER_DIE_379020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlockedRingNum", value = 0, no_refresh = true },
	{ config_id = 2, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 3, name = "questfin", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 379012, gadget_id = 70290422, pos = { x = -924.765, y = 240.505, z = 3243.442 }, rot = { x = 1.771, y = 351.659, z = 359.740 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 3, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 23 },
		{ config_id = 379015, gadget_id = 70290422, pos = { x = -914.975, y = 283.957, z = 3255.010 }, rot = { x = 5.249, y = 266.471, z = 355.997 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 3, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 23 },
		{ config_id = 379018, gadget_id = 70290422, pos = { x = -897.036, y = 270.525, z = 3264.969 }, rot = { x = 2.065, y = 232.048, z = 353.733 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 3, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 23 },
		{ config_id = 379021, gadget_id = 70290422, pos = { x = -930.591, y = 299.150, z = 3270.051 }, rot = { x = 335.542, y = 326.784, z = 2.974 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 3, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 23 }
	}
}

-- 视野组
sight_groups = {
	{ 379001, 379002, 379003, 379004, 379005, 379006, 379007, 379009, 379010 }
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
		monsters = { 379001, 379002, 379003 },
		gadgets = { 379004, 379005, 379006, 379007, 379009, 379010 },
		regions = { 379016 },
		triggers = { "GROUP_LOAD_379008", "GADGET_STATE_CHANGE_379011", "TIME_AXIS_PASS_379014", "ENTER_REGION_379016", "TIME_AXIS_PASS_379017", "GADGET_STATE_CHANGE_379019", "ANY_MONSTER_DIE_379020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 379005, 379006, 379007, 379013 },
		regions = { },
		triggers = { "GROUP_LOAD_379008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_379008(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133301379) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_379008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307707_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_379011(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133301379, 379005) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133301379, 379006) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133301379, 379007) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_379011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_379014(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_379014(context, evt)
	-- 将configid为 379004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 379009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 379010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_379016(context, evt)
	if evt.param1 ~= 379016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133301379) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_379016(context, evt)
	-- 通知groupid为133301379中,configid为：379001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 379001, 133301379) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	
	end
	
	-- 通知groupid为133301379中,configid为：379002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 379002, 133301379) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  
	end
	
	-- 通知groupid为133301379中,configid为：379003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 379003, 133301379) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  
	end
	
	-- 将configid为 379004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	-- 将configid为 379009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	-- 将configid为 379010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_379017(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_379017(context, evt)
	-- 通知groupid为133301379中,configid为：379001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 379001, 133301379) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133301379中,configid为：379002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 379002, 133301379) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133301379中,configid为：379003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 379003, 133301379) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_379019(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301379, 379005) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301379, 379006) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301379, 379007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_379019(context, evt)
	-- 将configid为 379004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 379009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 379010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 379010, GadgetState.GearStart) then
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
function condition_EVENT_ANY_MONSTER_DIE_379020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_379020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301379, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307707_fin") then
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