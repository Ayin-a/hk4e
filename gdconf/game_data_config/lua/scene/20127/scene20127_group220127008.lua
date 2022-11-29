-- 基础信息
local base_info = {
	group_id = 220127008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8005, monster_id = 20011201, pos = { x = 6.849, y = 41.678, z = 80.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8006, monster_id = 20011201, pos = { x = 14.978, y = 41.627, z = 80.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8007, monster_id = 20011301, pos = { x = 11.200, y = 41.611, z = 75.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8012, gadget_id = 70900201, pos = { x = 11.892, y = 50.688, z = 117.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 关1号门
	{ config_id = 8001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 17.323, y = 42.426, z = 77.053 } },
	-- 关2号门
	{ config_id = 8003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 17.323, y = 42.426, z = 77.053 } },
	-- 判断玩家不在战斗区域
	{ config_id = 8010, shape = RegionShape.CUBIC, size = { x = 20.000, y = 20.000, z = 40.000 }, pos = { x = 12.070, y = 49.594, z = 116.273 } },
	-- 判断玩家不在战斗区域
	{ config_id = 8011, shape = RegionShape.CUBIC, size = { x = 20.000, y = 20.000, z = 40.000 }, pos = { x = 12.070, y = 49.594, z = 116.273 } }
}

-- 触发器
triggers = {
	-- 关1号门
	{ config_id = 1008001, name = "ENTER_REGION_8001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8001", action = "action_EVENT_ENTER_REGION_8001", trigger_count = 0 },
	-- 1号门-开操作台
	{ config_id = 1008002, name = "ANY_MONSTER_DIE_8002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8002", action = "action_EVENT_ANY_MONSTER_DIE_8002" },
	-- 关2号门
	{ config_id = 1008003, name = "ENTER_REGION_8003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8003", action = "action_EVENT_ENTER_REGION_8003", trigger_count = 0 },
	-- 延迟1s开注目和解锁
	{ config_id = 1008004, name = "TIMER_EVENT_8004", event = EventType.EVENT_TIMER_EVENT, source = "_timer_door", condition = "condition_EVENT_TIMER_EVENT_8004", action = "action_EVENT_TIMER_EVENT_8004" },
	-- 2号门-不开操作台
	{ config_id = 1008008, name = "ANY_MONSTER_DIE_8008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8008", action = "action_EVENT_ANY_MONSTER_DIE_8008" },
	-- 判断玩家不在战斗区域
	{ config_id = 1008010, name = "ENTER_REGION_8010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8010", action = "action_EVENT_ENTER_REGION_8010", trigger_count = 0 },
	-- 判断玩家不在战斗区域
	{ config_id = 1008011, name = "ENTER_REGION_8011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8011", action = "action_EVENT_ENTER_REGION_8011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "_doorOpen", value = 0, no_refresh = true },
	{ config_id = 2, name = "addGuide", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1008009, name = "TIMER_EVENT_8009", event = EventType.EVENT_TIMER_EVENT, source = "_timer_door1", condition = "", action = "action_EVENT_TIMER_EVENT_8009" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		monsters = { },
		gadgets = { },
		regions = { 8001, 8003 },
		triggers = { "ENTER_REGION_8001", "ENTER_REGION_8003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8005, 8006, 8007 },
		gadgets = { },
		regions = { 8010, 8011 },
		triggers = { "ANY_MONSTER_DIE_8002", "TIMER_EVENT_8004", "ANY_MONSTER_DIE_8008", "ENTER_REGION_8010", "ENTER_REGION_8011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8001(context, evt)
	if evt.param1 ~= 8001 then return false end
	
	-- 判断变量"platform1"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "platform1", 220127002) ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8001(context, evt)
	-- 添加suite2 3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127008, 2)
	ScriptLib.RemoveExtraGroupSuite(context, 220127008, 1)
	
	-- 改变指定group组220127002中， configid为2067的gadget的state
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2067, 301)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220127008) ~= 0 then
		return false
	end
	
	if 301 ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2067) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8002(context, evt)
	-- 延迟1秒后,向groupId为：220127008的对象,请求一次调用,并将string参数："_timer_door" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220127008, "_timer_door", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组220127002中， configid为2067的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2067, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8003(context, evt)
	if evt.param1 ~= 8003 then return false end
	
	-- 判断变量"platform1"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "platform1", 220127002) ~= 2 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8003(context, evt)
	-- 添加suite2 4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127008, 2)
	ScriptLib.RemoveExtraGroupSuite(context, 220127008, 1)
	
	-- 改变指定group组220127002中， configid为2067的gadget的state
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2067, 302)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_8004(context, evt)
	-- 判断变量"platform1"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "platform1", 220127002) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8004(context, evt)
	-- 将本组内变量名为 "_gearOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "_gearOpen", 1, 220127002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（21，41，79），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=21, y=41, z=79}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220127008, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220127008) ~= 0 then
		return false
	end
	
	if 302 ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2067) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220127008, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 改变指定group组220127002中， configid为2067的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2067, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "_gearOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "_gearOpen", 1, 220127002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "addGuide" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "addGuide", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为8012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 8012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8010(context, evt)
	if evt.param1 ~= 8010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	if 301 ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2067) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127008, 2)
	
	-- 改变指定group组220127002中， configid为2067的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2067, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127008, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8011(context, evt)
	if evt.param1 ~= 8010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	if 302 ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2067) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127008, 2)
	
	-- 改变指定group组220127002中， configid为2067的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2067, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127008, 1)
	
	return 0
end