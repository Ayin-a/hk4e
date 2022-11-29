-- 基础信息
local base_info = {
	group_id = 220127006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6010, monster_id = 26040102, pos = { x = 54.530, y = 56.622, z = 128.525 }, rot = { x = 0.000, y = 163.446, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 6012, monster_id = 26040102, pos = { x = 65.108, y = 56.589, z = 128.659 }, rot = { x = 0.000, y = 222.456, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6005, gadget_id = 70710749, pos = { x = 60.610, y = 60.490, z = 141.810 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 6006, gadget_id = 70211021, pos = { x = 59.935, y = 56.708, z = 131.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗高级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 6001, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 60.013, y = 61.266, z = 128.094 } },
	-- 判断玩家不在战斗区域
	{ config_id = 6007, shape = RegionShape.CUBIC, size = { x = 70.000, y = 30.000, z = 40.000 }, pos = { x = 38.891, y = 53.856, z = 90.760 } },
	-- 判断玩家不在战斗区域
	{ config_id = 6008, shape = RegionShape.CUBIC, size = { x = 20.000, y = 20.000, z = 20.000 }, pos = { x = 11.734, y = 52.387, z = 130.390 } }
}

-- 触发器
triggers = {
	{ config_id = 1006001, name = "ENTER_REGION_6001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6001", action = "action_EVENT_ENTER_REGION_6001", trigger_count = 0 },
	{ config_id = 1006002, name = "ANY_MONSTER_DIE_6002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6002", action = "action_EVENT_ANY_MONSTER_DIE_6002" },
	{ config_id = 1006003, name = "TIMER_EVENT_6003", event = EventType.EVENT_TIMER_EVENT, source = "success", condition = "", action = "action_EVENT_TIMER_EVENT_6003" },
	{ config_id = 1006004, name = "TIMER_EVENT_6004", event = EventType.EVENT_TIMER_EVENT, source = "finish", condition = "", action = "action_EVENT_TIMER_EVENT_6004" },
	-- 判断玩家不在战斗区域
	{ config_id = 1006007, name = "ENTER_REGION_6007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6007", action = "action_EVENT_ENTER_REGION_6007", trigger_count = 0 },
	-- 判断玩家不在战斗区域
	{ config_id = 1006008, name = "ENTER_REGION_6008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6008", action = "action_EVENT_ENTER_REGION_6008", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		regions = { 6001 },
		triggers = { "ENTER_REGION_6001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 6010, 6012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6002", "TIMER_EVENT_6003", "TIMER_EVENT_6004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 6007, 6008 },
		triggers = { "ENTER_REGION_6007", "ENTER_REGION_6008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_6001(context, evt)
	if evt.param1 ~= 6001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127006, 2)
	ScriptLib.AddExtraGroupSuite(context, 220127006, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 220127006, 1)
	
	-- 改变指定group组220127002中， configid为2071的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2071, 302) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "102808") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：220127006的对象,请求一次调用,并将string参数："success" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220127006, "success", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127006, 3)
	
	-- 将本组内变量名为 "levelFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "levelFinished", 1, 220127002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_6003(context, evt)
	-- 创建id为6005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（60，60，141），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=60, y=60, z=141}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 201270401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201270401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟1秒后,向groupId为：220127006的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220127006, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_6004(context, evt)
	-- 创建id为6006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6007(context, evt)
	if evt.param1 ~= 6007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	if 302 ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2071) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127006, 2)
	
	-- 改变指定group组220127002中， configid为2071的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2071, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127006, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6008(context, evt)
	if evt.param1 ~= 6007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	if 302 ~= ScriptLib.GetGadgetStateByConfigId(context, 220127002, 2071) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127006, 2)
	
	-- 改变指定group组220127002中， configid为2071的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2071, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127006, 1)
	
	return 0
end