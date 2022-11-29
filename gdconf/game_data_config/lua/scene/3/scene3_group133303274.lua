-- 基础信息
local base_info = {
	group_id = 133303274
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 274001, monster_id = 24010201, pos = { x = -1617.712, y = 287.099, z = 3587.952 }, rot = { x = 0.000, y = 32.525, z = 0.000 }, level = 30, drop_tag = "遗迹守卫", disableWander = true, affix = { 5181, 1048 }, pose_id = 111, area_id = 23 },
	{ config_id = 274014, monster_id = 21010401, pos = { x = -1621.583, y = 288.401, z = 3593.048 }, rot = { x = 0.000, y = 232.195, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 23 },
	{ config_id = 274015, monster_id = 26090901, pos = { x = -1619.024, y = 288.254, z = 3578.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 274016, monster_id = 21010101, pos = { x = -1616.154, y = 286.761, z = 3586.899 }, rot = { x = 0.000, y = 306.581, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 274017, monster_id = 21010101, pos = { x = -1618.768, y = 287.266, z = 3590.207 }, rot = { x = 0.000, y = 134.102, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 274018, monster_id = 21010101, pos = { x = -1619.713, y = 290.464, z = 3604.899 }, rot = { x = 0.000, y = 214.261, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 23 },
	{ config_id = 274023, monster_id = 21020101, pos = { x = -1624.373, y = 289.049, z = 3589.901 }, rot = { x = 0.000, y = 97.384, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 274002, gadget_id = 70290421, pos = { x = -1617.696, y = 293.391, z = 3587.977 }, rot = { x = 357.575, y = 15.277, z = 350.249 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_MARK"] = 1, ["SGV_SEAL_ENABLED"] = 3}, mark_flag = 1, area_id = 23 },
	{ config_id = 274003, gadget_id = 70290422, pos = { x = -1603.741, y = 285.633, z = 3593.464 }, rot = { x = 0.000, y = 244.309, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 1}, area_id = 23 },
	{ config_id = 274004, gadget_id = 70290422, pos = { x = -1630.582, y = 297.668, z = 3590.784 }, rot = { x = 0.000, y = 279.459, z = 0.000 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 2}, area_id = 23 },
	{ config_id = 274005, gadget_id = 70290422, pos = { x = -1620.332, y = 288.164, z = 3577.165 }, rot = { x = 8.216, y = 27.350, z = 349.653 }, level = 30, persistent = true, server_global_value_config = {["SGV_GRASSSEAL_TARGET"] = 1, ["SGV_GRASSSEAL_ATTACHPOINT"] = 3}, area_id = 23 },
	{ config_id = 274006, gadget_id = 70950145, pos = { x = -1618.203, y = 290.967, z = 3586.799 }, rot = { x = 0.000, y = 32.525, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 274007, gadget_id = 70211011, pos = { x = -1617.013, y = 287.023, z = 3589.053 }, rot = { x = 355.725, y = 0.950, z = 348.479 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 274013, gadget_id = 70330219, pos = { x = -1620.189, y = 287.986, z = 3576.664 }, rot = { x = 0.000, y = 16.084, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 274019, gadget_id = 70310198, pos = { x = -1620.683, y = 290.332, z = 3603.471 }, rot = { x = 20.227, y = 154.387, z = 6.316 }, level = 30, area_id = 23 },
	{ config_id = 274020, gadget_id = 70220005, pos = { x = -1630.085, y = 297.658, z = 3591.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 274021, gadget_id = 70220014, pos = { x = -1623.524, y = 289.178, z = 3593.055 }, rot = { x = 357.862, y = 47.380, z = 76.971 }, level = 30, area_id = 23 },
	{ config_id = 274022, gadget_id = 70220005, pos = { x = -1622.837, y = 288.941, z = 3593.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 274025, gadget_id = 70220014, pos = { x = -1629.401, y = 297.219, z = 3592.588 }, rot = { x = 357.862, y = 47.380, z = 76.971 }, level = 30, area_id = 23 },
	{ config_id = 274026, gadget_id = 70220014, pos = { x = -1620.736, y = 287.910, z = 3582.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 274027, gadget_id = 70220014, pos = { x = -1619.453, y = 288.110, z = 3581.964 }, rot = { x = 0.000, y = 0.000, z = 95.034 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	-- 保底怪物入战，销毁封印环
	{ config_id = 274012, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1618.092, y = 286.877, z = 3586.599 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 三个能量桩都进202了，封印圈进201
	{ config_id = 1274008, name = "GADGET_STATE_CHANGE_274008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274008", action = "action_EVENT_GADGET_STATE_CHANGE_274008" },
	{ config_id = 1274009, name = "TIME_AXIS_PASS_274009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_274009", action = "action_EVENT_TIME_AXIS_PASS_274009" },
	{ config_id = 1274010, name = "ANY_MONSTER_DIE_274010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_274010", action = "action_EVENT_ANY_MONSTER_DIE_274010" },
	{ config_id = 1274011, name = "TIME_AXIS_PASS_274011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_274011", action = "action_EVENT_TIME_AXIS_PASS_274011" },
	-- 保底怪物入战，销毁封印环
	{ config_id = 1274012, name = "ENTER_REGION_274012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_274012", action = "action_EVENT_ENTER_REGION_274012", trigger_count = 0 },
	{ config_id = 1274024, name = "ANY_GADGET_DIE_274024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_274024", action = "action_EVENT_ANY_GADGET_DIE_274024" },
	-- 保底任务通知
	{ config_id = 1274028, name = "GROUP_LOAD_274028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_274028", action = "action_EVENT_GROUP_LOAD_274028", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1274029, name = "GADGET_STATE_CHANGE_274029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274029", action = "action_EVENT_GADGET_STATE_CHANGE_274029" }
}

-- 变量
variables = {
	{ config_id = 1, name = "alldead", value = 0, no_refresh = true },
	{ config_id = 2, name = "questfin", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 274001, 274002, 274003, 274004, 274005 }
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
		monsters = { 274001, 274014, 274016, 274017, 274018, 274023 },
		gadgets = { 274002, 274003, 274004, 274005, 274006, 274013, 274019, 274020, 274021, 274022, 274025, 274026, 274027 },
		regions = { 274012 },
		triggers = { "GADGET_STATE_CHANGE_274008", "TIME_AXIS_PASS_274009", "ANY_MONSTER_DIE_274010", "TIME_AXIS_PASS_274011", "ENTER_REGION_274012", "ANY_GADGET_DIE_274024", "GROUP_LOAD_274028", "GADGET_STATE_CHANGE_274029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 274003, 274004, 274005, 274007 },
		regions = { },
		triggers = { "GROUP_LOAD_274028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274008(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303274, 274003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303274, 274004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303274, 274005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274008(context, evt)
	-- 将configid为 274002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274002, GadgetState.GearStart) then
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
function condition_EVENT_TIME_AXIS_PASS_274009(context, evt)
	if "delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_274009(context, evt)
	-- 通知groupid为133303274中,configid为：274001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 274001, 133303274) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_274010(context, evt)
	--判断死亡怪物的configid是否为 274001
	if evt.param1 ~= 274001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_274010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303274, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307712_fin") then
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
function condition_EVENT_TIME_AXIS_PASS_274011(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_274011(context, evt)
	-- 将configid为 274002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1617.696, y=293.3905, z=3587.977}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1617.696, y=293.3905, z=3587.977}
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
function condition_EVENT_ENTER_REGION_274012(context, evt)
	if evt.param1 ~= 274012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alldead"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "alldead", 133303274) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_274012(context, evt)
	-- 通知groupid为133303274中,configid为：274001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 274001, 133303274) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 将configid为 274002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_274024(context, evt)
	if 274013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_274024(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 274015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_274028(context, evt)
	-- 判断变量"questfin"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questfin", 133303274) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_274028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7307712_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274029(context, evt)
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303274, 274003) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303274, 274004) then
		return true
	end
	
	if 202 == ScriptLib.GetGadgetStateByConfigId(context, 133303274, 274005) then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274029(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30001, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end