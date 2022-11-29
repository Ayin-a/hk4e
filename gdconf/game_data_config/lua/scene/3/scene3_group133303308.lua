-- 基础信息
local base_info = {
	group_id = 133303308
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 308001, monster_id = 24020301, pos = { x = -1565.262, y = 255.417, z = 3107.130 }, rot = { x = 0.000, y = 324.785, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 21 },
	{ config_id = 308002, monster_id = 24020401, pos = { x = -1572.170, y = 256.349, z = 3099.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308003, gadget_id = 70290423, pos = { x = -1565.259, y = 255.748, z = 3107.263 }, rot = { x = 0.000, y = 148.200, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 2}, mark_flag = 1, area_id = 21 },
	{ config_id = 308004, gadget_id = 70290422, pos = { x = -1564.970, y = 256.260, z = 3118.749 }, rot = { x = 0.000, y = 184.935, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 21 },
	{ config_id = 308005, gadget_id = 70290422, pos = { x = -1550.383, y = 260.616, z = 3092.835 }, rot = { x = 0.000, y = 295.314, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 21 },
	{ config_id = 308006, gadget_id = 70290422, pos = { x = -1586.729, y = 256.730, z = 3104.783 }, rot = { x = 0.000, y = 99.009, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 2, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 21 },
	{ config_id = 308007, gadget_id = 70950145, pos = { x = -1562.242, y = 256.124, z = 3103.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 308008, gadget_id = 70290422, pos = { x = -1577.121, y = 260.692, z = 3088.671 }, rot = { x = 0.000, y = 21.367, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 2, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 21 },
	{ config_id = 308009, gadget_id = 70290423, pos = { x = -1572.170, y = 256.349, z = 3099.442 }, rot = { x = 0.000, y = 340.540, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 2, ["SGV_SEAL_ENABLED"] = 2}, mark_flag = 1, area_id = 21 },
	{ config_id = 308010, gadget_id = 70950145, pos = { x = -1572.170, y = 256.370, z = 3099.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 308011, gadget_id = 70211011, pos = { x = -1566.492, y = 256.170, z = 3101.055 }, rot = { x = 11.710, y = 347.039, z = 3.616 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
	-- 保底怪物入战，销毁封印环
	{ config_id = 308017, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1569.033, y = 255.843, z = 3103.417 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 和任意操作台（此trigger为1）交互，所有封印环进202，激活所有怪物，删除所有操作台
	{ config_id = 1308012, name = "TIME_AXIS_PASS_308012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_308012", action = "action_EVENT_TIME_AXIS_PASS_308012" },
	-- 烧出史莱姆04
	{ config_id = 1308013, name = "GADGET_STATE_CHANGE_308013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308013", action = "action_EVENT_GADGET_STATE_CHANGE_308013" },
	-- 所有能量桩都进了202，所有封印圈进201
	{ config_id = 1308014, name = "GADGET_STATE_CHANGE_308014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308014", action = "action_EVENT_GADGET_STATE_CHANGE_308014" },
	{ config_id = 1308015, name = "ANY_MONSTER_DIE_308015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_308015", action = "action_EVENT_ANY_MONSTER_DIE_308015" },
	{ config_id = 1308016, name = "TIME_AXIS_PASS_308016", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_308016", action = "action_EVENT_TIME_AXIS_PASS_308016" },
	-- 保底怪物入战，销毁封印环
	{ config_id = 1308017, name = "ENTER_REGION_308017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_308017", action = "action_EVENT_ENTER_REGION_308017", trigger_count = 0 },
	-- 烧出史莱姆05
	{ config_id = 1308018, name = "GADGET_STATE_CHANGE_308018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308018", action = "action_EVENT_GADGET_STATE_CHANGE_308018" },
	-- 烧出史莱姆06
	{ config_id = 1308019, name = "GADGET_STATE_CHANGE_308019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308019", action = "action_EVENT_GADGET_STATE_CHANGE_308019" },
	-- 烧出史莱姆08
	{ config_id = 1308020, name = "GADGET_STATE_CHANGE_308020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308020", action = "action_EVENT_GADGET_STATE_CHANGE_308020" },
	-- 保底任务通知
	{ config_id = 1308021, name = "GROUP_LOAD_308021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_308021", action = "action_EVENT_GROUP_LOAD_308021", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1308022, name = "GADGET_STATE_CHANGE_308022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_308022", action = "action_EVENT_GADGET_STATE_CHANGE_308022" }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlockedRingNum", value = 0, no_refresh = true },
	{ config_id = 2, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 3, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 308001, 308002, 308003, 308004, 308005, 308006, 308008, 308009 }
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
		monsters = { 308001, 308002 },
		gadgets = { 308003, 308004, 308005, 308006, 308007, 308008, 308009, 308010 },
		regions = { 308017 },
		triggers = { "TIME_AXIS_PASS_308012", "GADGET_STATE_CHANGE_308013", "GADGET_STATE_CHANGE_308014", "ANY_MONSTER_DIE_308015", "TIME_AXIS_PASS_308016", "ENTER_REGION_308017", "GADGET_STATE_CHANGE_308018", "GADGET_STATE_CHANGE_308019", "GADGET_STATE_CHANGE_308020", "GROUP_LOAD_308021", "GADGET_STATE_CHANGE_308022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 308004, 308005, 308006, 308008, 308011 },
		regions = { },
		triggers = { "GROUP_LOAD_308021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_308012(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_308012(context, evt)
	-- 通知groupid为133303308中,configid为：308001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 308001, 133303308) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133303308中,configid为：308002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 308002, 133303308) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308013(context, evt)
	if 308004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303214, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308014(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303308, 308004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303308, 308005) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303308, 308006) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303308, 308008) then
		return false
	end
	
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308014(context, evt)
	-- 将configid为 308003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 308009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308009, GadgetState.GearStart) then
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
function condition_EVENT_ANY_MONSTER_DIE_308015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_308015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303308, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307714_fin") then
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
function condition_EVENT_TIME_AXIS_PASS_308016(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_308016(context, evt)
	-- 将configid为 308003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 308009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1565.259, y=255.7481, z=3107.263}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1565.259, y=255.7481, z=3107.263}
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
function condition_EVENT_ENTER_REGION_308017(context, evt)
	if evt.param1 ~= 308017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133303308) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_308017(context, evt)
	-- 通知groupid为133303308中,configid为：308001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 308001, 133303308) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  
	end
	
	-- 通知groupid为133303308中,configid为：308002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 308002, 133303308) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  
	end
	
	-- 将configid为 308003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	-- 将configid为 308009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308018(context, evt)
	if 308005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308018(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303214, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308019(context, evt)
	if 308006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308019(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303214, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308020(context, evt)
	if 308008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308020(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303214, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_308021(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133303308) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_308021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307714_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_308022(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303308, 308004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303308, 308005) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303308, 308006) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303308, 308008) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_308022(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end