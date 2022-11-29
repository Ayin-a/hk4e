-- 基础信息
local base_info = {
	group_id = 201059001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1002, monster_id = 20010801, pos = { x = -17.938, y = 148.490, z = 42.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 20010801, pos = { x = -34.777, y = 148.490, z = 53.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 20010901, pos = { x = -24.211, y = 148.516, z = 54.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, monster_id = 20010801, pos = { x = -30.884, y = 148.516, z = 42.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, monster_id = 20010901, pos = { x = -15.990, y = 148.492, z = 49.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, monster_id = 20010801, pos = { x = -37.669, y = 148.492, z = 48.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, monster_id = 20010801, pos = { x = -18.946, y = 148.491, z = 52.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, monster_id = 20010801, pos = { x = -24.882, y = 148.492, z = 42.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 视觉解谜1 代替
	{ config_id = 1001, gadget_id = 70350146, pos = { x = -32.966, y = 151.448, z = 67.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 区域2大门
	{ config_id = 1006, gadget_id = 70350005, pos = { x = -24.597, y = 148.229, z = 35.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70900201, pos = { x = -15.248, y = 148.586, z = 82.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70900201, pos = { x = -23.947, y = 156.334, z = 16.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70230031, pos = { x = -39.000, y = 153.420, z = 77.870 }, rot = { x = 7.687, y = 15.599, z = 349.812 }, level = 1 },
	{ config_id = 1021, gadget_id = 70230032, pos = { x = -40.590, y = 157.560, z = 73.370 }, rot = { x = 10.229, y = 54.276, z = 1.071 }, level = 1 },
	{ config_id = 1022, gadget_id = 70220003, pos = { x = -10.331, y = 147.729, z = 77.476 }, rot = { x = 0.000, y = 57.520, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70220003, pos = { x = -10.938, y = 147.745, z = 82.057 }, rot = { x = 0.000, y = 93.948, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70220003, pos = { x = -9.482, y = 147.734, z = 86.620 }, rot = { x = 0.000, y = 103.162, z = 0.000 }, level = 1 },
	-- 降魔印提示点
	{ config_id = 1025, gadget_id = 70710058, pos = { x = -36.106, y = 148.490, z = 82.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1012, shape = RegionShape.SPHERE, radius = 5, pos = { x = -28.824, y = 148.339, z = 51.379 } },
	{ config_id = 1014, shape = RegionShape.SPHERE, radius = 10, pos = { x = 17.406, y = 147.290, z = 87.190 } },
	{ config_id = 1016, shape = RegionShape.CUBIC, size = { x = 2.000, y = 10.000, z = 25.000 }, pos = { x = -9.889, y = 152.261, z = 82.297 } },
	{ config_id = 1017, shape = RegionShape.SPHERE, radius = 3, pos = { x = -34.633, y = 148.491, z = 83.978 } },
	{ config_id = 1027, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 5.000 }, pos = { x = -31.897, y = 148.339, z = 70.835 } },
	{ config_id = 1028, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 5.000 }, pos = { x = -32.249, y = 148.339, z = 61.929 } }
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "QUEST_FINISH_1005", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_1005", action = "action_EVENT_QUEST_FINISH_1005" },
	{ config_id = 1001012, name = "ENTER_REGION_1012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1012", action = "action_EVENT_ENTER_REGION_1012" },
	{ config_id = 1001013, name = "ANY_MONSTER_DIE_1013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1013", action = "action_EVENT_ANY_MONSTER_DIE_1013" },
	{ config_id = 1001014, name = "ENTER_REGION_1014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1014", action = "action_EVENT_ENTER_REGION_1014" },
	{ config_id = 1001015, name = "TIMER_EVENT_1015", event = EventType.EVENT_TIMER_EVENT, source = "OpenDoor", condition = "", action = "action_EVENT_TIMER_EVENT_1015" },
	{ config_id = 1001016, name = "ENTER_REGION_1016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1016", action = "action_EVENT_ENTER_REGION_1016" },
	{ config_id = 1001017, name = "ENTER_REGION_1017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1017", action = "action_EVENT_ENTER_REGION_1017" },
	{ config_id = 1001027, name = "ENTER_REGION_1027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1027", action = "action_EVENT_ENTER_REGION_1027" },
	{ config_id = 1001028, name = "ENTER_REGION_1028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1028", action = "action_EVENT_ENTER_REGION_1028" }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest", value = 0, no_refresh = false }
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
		-- description = 视觉解谜替代,
		monsters = { },
		gadgets = { 1001, 1006, 1011, 1022, 1023, 1024, 1025 },
		regions = { 1012, 1014, 1016, 1017, 1027, 1028 },
		triggers = { "QUEST_FINISH_1005", "ENTER_REGION_1012", "ENTER_REGION_1014", "TIMER_EVENT_1015", "ENTER_REGION_1016", "ENTER_REGION_1017", "ENTER_REGION_1027", "ENTER_REGION_1028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 怪物第一波,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1019, 1021 },
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
function condition_EVENT_QUEST_FINISH_1005(context, evt)
	--检查ID为1111306的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1111306 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1005(context, evt)
	-- 延迟1秒后,向groupId为：201059001的对象,请求一次调用,并将string参数："OpenDoor" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201059001, "OpenDoor", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-31，153，67），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-31, y=153, z=67}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201059001, EntityType.GADGET, 1025 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1012(context, evt)
	if evt.param1 ~= 1012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059001, 2)
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为8，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 201059001, {1002,1007,1008,1009,1010,1003,1004,1026}, 8, 5, 5) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201059001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1013(context, evt)
	-- 将configid为 1006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为1018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 10590107 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10590107) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1014(context, evt)
	if evt.param1 ~= 1014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1014(context, evt)
	-- 调用提示id为 10590101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10590101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1015(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1016(context, evt)
	if evt.param1 ~= 1016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1017(context, evt)
	if evt.param1 ~= 1017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1017(context, evt)
	-- 调用提示id为 10590104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10590104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1027(context, evt)
	if evt.param1 ~= 1027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"quest"为1
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1027(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1028(context, evt)
	if evt.param1 ~= 1028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"quest"为1
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1028(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end