-- 基础信息
local base_info = {
	group_id = 199003008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 8005, npc_id = 20615, pos = { x = -726.116, y = 232.981, z = -29.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 8006, npc_id = 20616, pos = { x = -728.063, y = 233.091, z = -48.615 }, rot = { x = 0.000, y = 32.854, z = 0.000 }, area_id = 403 },
	{ config_id = 8007, npc_id = 20617, pos = { x = -729.339, y = 231.927, z = -7.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 8032, npc_id = 20854, pos = { x = -728.063, y = 233.091, z = -48.615 }, rot = { x = 0.000, y = 32.854, z = 0.000 }, area_id = 403 }
}

-- 装置
gadgets = {
	{ config_id = 8002, gadget_id = 70350006, pos = { x = -732.628, y = 232.652, z = -42.589 }, rot = { x = 0.000, y = 309.388, z = 0.000 }, level = 1, persistent = true, area_id = 403 },
	{ config_id = 8003, gadget_id = 70220024, pos = { x = -731.866, y = 232.685, z = -17.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 403 },
	{ config_id = 8012, gadget_id = 70210112, pos = { x = -732.344, y = 233.267, z = -29.205 }, rot = { x = 0.823, y = 146.288, z = 0.420 }, level = 20, area_id = 403 },
	-- 4
	{ config_id = 8014, gadget_id = 70310011, pos = { x = -736.680, y = 232.013, z = -14.236 }, rot = { x = 0.823, y = 146.288, z = 0.420 }, level = 1, area_id = 403 },
	-- 1
	{ config_id = 8018, gadget_id = 70310011, pos = { x = -743.140, y = 232.924, z = -31.892 }, rot = { x = 0.823, y = 146.288, z = 0.420 }, level = 20, area_id = 403 },
	-- 2
	{ config_id = 8021, gadget_id = 70310011, pos = { x = -736.331, y = 231.927, z = -34.480 }, rot = { x = 0.823, y = 146.288, z = 0.420 }, level = 20, area_id = 403 },
	-- 3
	{ config_id = 8022, gadget_id = 70310011, pos = { x = -732.363, y = 231.927, z = -29.195 }, rot = { x = 0.823, y = 146.288, z = 0.420 }, level = 20, area_id = 403 },
	{ config_id = 8023, gadget_id = 70310397, pos = { x = -743.190, y = 233.523, z = -31.829 }, rot = { x = 4.278, y = 110.779, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 8024, gadget_id = 70310397, pos = { x = -736.045, y = 232.964, z = -34.043 }, rot = { x = 0.768, y = 31.099, z = 355.791 }, level = 20, area_id = 403 },
	{ config_id = 8025, gadget_id = 70310397, pos = { x = -733.647, y = 233.014, z = -25.839 }, rot = { x = 357.154, y = 339.125, z = 356.805 }, level = 20, area_id = 403 },
	{ config_id = 8033, gadget_id = 70210112, pos = { x = -743.121, y = 234.235, z = -31.902 }, rot = { x = 0.823, y = 146.288, z = 0.420 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	-- 离开区域重置门
	{ config_id = 8008, shape = RegionShape.CYLINDER, radius = 30, pos = { x = -734.000, y = 235.218, z = -25.544 }, height = 20.000, area_id = 403 },
	-- 如果没有任务则播不知道的reminder
	{ config_id = 8010, shape = RegionShape.SPHERE, radius = 5, pos = { x = -738.171, y = 231.927, z = -34.609 }, area_id = 403 },
	-- 进入区域关门给镜头
	{ config_id = 8019, shape = RegionShape.SPHERE, radius = 5, pos = { x = -736.373, y = 234.213, z = -38.184 }, area_id = 403 },
	-- 进入区域完成7901313
	{ config_id = 8020, shape = RegionShape.SPHERE, radius = 5, pos = { x = -736.373, y = 234.213, z = -38.184 }, area_id = 403 },
	-- 保底开门
	{ config_id = 8037, shape = RegionShape.SPHERE, radius = 5, pos = { x = -726.490, y = 231.927, z = -46.107 }, area_id = 403 }
}

-- 触发器
triggers = {
	-- 7901315开始，提示留言finish+1
	{ config_id = 1008001, name = "QUEST_START_8001", event = EventType.EVENT_QUEST_START, source = "7901315", condition = "", action = "action_EVENT_QUEST_START_8001", trigger_count = 0 },
	-- 7901314开始播reminder，来过
	{ config_id = 1008004, name = "QUEST_START_8004", event = EventType.EVENT_QUEST_START, source = "7901314", condition = "condition_EVENT_QUEST_START_8004", action = "action_EVENT_QUEST_START_8004", trigger_count = 0 },
	-- 离开区域重置门
	{ config_id = 1008008, name = "LEAVE_REGION_8008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_8008", action = "action_EVENT_LEAVE_REGION_8008", trigger_count = 0 },
	-- 7901314开始播reminder，没来过
	{ config_id = 1008009, name = "QUEST_START_8009", event = EventType.EVENT_QUEST_START, source = "7901314", condition = "condition_EVENT_QUEST_START_8009", action = "action_EVENT_QUEST_START_8009", trigger_count = 0 },
	-- 如果没有任务则播不知道的reminder
	{ config_id = 1008010, name = "ENTER_REGION_8010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8010", action = "action_EVENT_ENTER_REGION_8010", trigger_count = 0 },
	-- 7901313任务开始重置门重置门
	{ config_id = 1008011, name = "QUEST_START_8011", event = EventType.EVENT_QUEST_START, source = "7901313", condition = "condition_EVENT_QUEST_START_8011", action = "action_EVENT_QUEST_START_8011", trigger_count = 0 },
	-- 7901904任务开始重置门重置门
	{ config_id = 1008013, name = "QUEST_START_8013", event = EventType.EVENT_QUEST_START, source = "7901904", condition = "condition_EVENT_QUEST_START_8013", action = "action_EVENT_QUEST_START_8013", trigger_count = 0 },
	-- 7901907失败过改变量
	{ config_id = 1008015, name = "QUEST_START_8015", event = EventType.EVENT_QUEST_START, source = "7901907", condition = "condition_EVENT_QUEST_START_8015", action = "action_EVENT_QUEST_START_8015", trigger_count = 0 },
	-- 进区域，如果任务没完成过，开门
	{ config_id = 1008017, name = "GROUP_LOAD_8017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_8017", action = "action_EVENT_GROUP_LOAD_8017", trigger_count = 0 },
	-- 进入区域关门给镜头
	{ config_id = 1008019, name = "ENTER_REGION_8019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8019", action = "action_EVENT_ENTER_REGION_8019", trigger_count = 0 },
	-- 进入区域完成7901313
	{ config_id = 1008020, name = "ENTER_REGION_8020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8020", action = "action_EVENT_ENTER_REGION_8020", trigger_count = 0 },
	{ config_id = 1008026, name = "GADGET_STATE_CHANGE_8026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8026", action = "action_EVENT_GADGET_STATE_CHANGE_8026", trigger_count = 0 },
	{ config_id = 1008027, name = "GADGET_STATE_CHANGE_8027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8027", action = "action_EVENT_GADGET_STATE_CHANGE_8027", trigger_count = 0 },
	{ config_id = 1008028, name = "GADGET_STATE_CHANGE_8028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8028", action = "action_EVENT_GADGET_STATE_CHANGE_8028", trigger_count = 0 },
	-- 激活火把开门
	{ config_id = 1008029, name = "VARIABLE_CHANGE_8029", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8029", action = "action_EVENT_VARIABLE_CHANGE_8029", trigger_count = 0 },
	-- 火把顺序
	{ config_id = 1008030, name = "GADGET_STATE_CHANGE_8030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8030", action = "action_EVENT_GADGET_STATE_CHANGE_8030", trigger_count = 0 },
	-- 驱散风迷雾改变量
	{ config_id = 1008031, name = "ANY_GADGET_DIE_8031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_8031", action = "action_EVENT_ANY_GADGET_DIE_8031", trigger_count = 0 },
	-- 驱散风迷雾改变量
	{ config_id = 1008034, name = "ANY_GADGET_DIE_8034", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_8034", action = "action_EVENT_ANY_GADGET_DIE_8034", trigger_count = 0 },
	-- 没吹散雾直接灭
	{ config_id = 1008035, name = "GADGET_STATE_CHANGE_8035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8035", action = "action_EVENT_GADGET_STATE_CHANGE_8035", trigger_count = 0 },
	{ config_id = 1008036, name = "GADGET_STATE_CHANGE_8036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8036", action = "action_EVENT_GADGET_STATE_CHANGE_8036", trigger_count = 0 },
	-- 保底开门
	{ config_id = 1008037, name = "ENTER_REGION_8037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8037", action = "action_EVENT_ENTER_REGION_8037", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 3, name = "beenhere", value = 0, no_refresh = true },
	{ config_id = 4, name = "finish", value = 0, no_refresh = true },
	{ config_id = 5, name = "destroyed", value = 0, no_refresh = true },
	{ config_id = 1, name = "times", value = 0, no_refresh = true },
	{ config_id = 2, name = "key", value = 0, no_refresh = true },
	{ config_id = 6, name = "wind1", value = 0, no_refresh = true },
	{ config_id = 7, name = "wind2", value = 0, no_refresh = true },
	{ config_id = 8, name = "once", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1008016, name = "GADGET_STATE_CHANGE_8016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8016", action = "action_EVENT_GADGET_STATE_CHANGE_8016", trigger_count = 0 }
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
		gadgets = { 8002, 8003, 8012, 8014, 8018, 8021, 8022, 8023, 8024, 8025, 8033 },
		regions = { 8008, 8010, 8019, 8020, 8037 },
		triggers = { "QUEST_START_8001", "QUEST_START_8004", "LEAVE_REGION_8008", "QUEST_START_8009", "ENTER_REGION_8010", "QUEST_START_8011", "QUEST_START_8013", "QUEST_START_8015", "GROUP_LOAD_8017", "ENTER_REGION_8019", "ENTER_REGION_8020", "GADGET_STATE_CHANGE_8026", "GADGET_STATE_CHANGE_8027", "GADGET_STATE_CHANGE_8028", "VARIABLE_CHANGE_8029", "GADGET_STATE_CHANGE_8030", "ANY_GADGET_DIE_8031", "ANY_GADGET_DIE_8034", "GADGET_STATE_CHANGE_8035", "GADGET_STATE_CHANGE_8036", "ENTER_REGION_8037" },
		npcs = { 8005, 8006, 8007, 8032 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_8001(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_8004(context, evt)
	-- 判断变量"beenhere"为1
	if ScriptLib.GetGroupVariableValue(context, "beenhere") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_8004(context, evt)
	-- 调用提示id为 1111133 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111133) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_8008(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_8008(context, evt)
	-- 将configid为 8002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "beenhere" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "beenhere", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_8009(context, evt)
	-- 判断变量"beenhere"为0
	if ScriptLib.GetGroupVariableValue(context, "beenhere") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_8009(context, evt)
	-- 调用提示id为 1110753 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110753) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8010(context, evt)
	if evt.param1 ~= 8010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"beenhere"为0
	if ScriptLib.GetGroupVariableValue(context, "beenhere") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8010(context, evt)
		if ScriptLib.GetHostQuestState(context,7901313)==0 or ScriptLib.GetHostQuestState(context,7901313)==1
		then
			--播对应的reminder
			ScriptLib.ShowReminder(context, 1111131)
			end
	ScriptLib.SetGroupVariableValue(context, "beenhere", 1)
		return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_8011(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_8011(context, evt)
	-- 将configid为 8002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_8013(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_8013(context, evt)
	-- 将configid为 8002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_8015(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_8015(context, evt)
	-- 将本组内变量名为 "beenhere" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "beenhere", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_8017(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_8017(context, evt)
	-- 将configid为 8002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "once" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "once", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8019(context, evt)
	if evt.param1 ~= 8019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003008, 8002) then
		return false
	end
	
	-- 判断变量"once"为0
	if ScriptLib.GetGroupVariableValue(context, "once") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8019(context, evt)
	-- 将configid为 8002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-732，232，-42），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-732, y=232, z=-42}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "beenhere" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "beenhere", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "once" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "once", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8020(context, evt)
	if evt.param1 ~= 8020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7901313finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8026(context, evt)
	if 8018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"wind1"为1
	if ScriptLib.GetGroupVariableValue(context, "wind1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8026(context, evt)
	    local k=0
	    local t=0
	
	        k=ScriptLib.GetGroupVariableValue(context, "key")
	        t=ScriptLib.GetGroupVariableValue(context, "times")
	
	        k=k+1*10^t
	        t=t+1
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	    return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8027(context, evt)
	if 8021 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8027(context, evt)
	    local k=0
	    local t=0
	
	        k=ScriptLib.GetGroupVariableValue(context, "key")
	        t=ScriptLib.GetGroupVariableValue(context, "times")
	
	        k=k+2*10^t
	        t=t+1
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	    return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8028(context, evt)
	if 8022 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"wind2"为1
	if ScriptLib.GetGroupVariableValue(context, "wind2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8028(context, evt)
	    local k=0
	    local t=0
	
	        k=ScriptLib.GetGroupVariableValue(context, "key")
	        t=ScriptLib.GetGroupVariableValue(context, "times")
	
	        k=k+3*10^t
	        t=t+1
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	    return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为4
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8029(context, evt)
		if ScriptLib.GetGroupVariableValueByGroup(context, "key", 199003008) == 4321 then
		
		ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.GearStart) 
		ScriptLib.SetGroupGadgetStateByConfigId(context, 199003011, 11001, GadgetState.GearStart) 
		ScriptLib.AddQuestProgress(context, "7901314finish") 
			
		
		
		local pos = {x=-732, y=232, z=-42}
		local pos_follow = {x=0, y=0, z=0}
		 ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
		                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
		                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 })
					
		
		else
	if ScriptLib.GetGroupVariableValue(context,"finish") == 0 then
		--提示解谜reminder
		ScriptLib.ShowReminder(context, 1110751)	
	end
		
		end
		
			
			-- 将configid为 22001 的物件更改为状态 GadgetState.Default
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8014, GadgetState.Default) then
			  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
					return -1
				end 
			
			-- 将configid为 22002 的物件更改为状态 GadgetState.Default
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8018, GadgetState.Default) then
			  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
					return -1
				end 
			
			-- 将configid为 22003 的物件更改为状态 GadgetState.Default
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8021, GadgetState.Default) then
			  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
					return -1
				end 
			-- 将configid为 22003 的物件更改为状态 GadgetState.Default
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8022, GadgetState.Default) then
			  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
					return -1
				end 
			if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", 0) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_0")
					return -1
				  end	
			if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", 0) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_0")
					return -1
				  end	
			
			return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8030(context, evt)
	if 8014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8030(context, evt)
	    local k=0
	    local t=0
	
	        k=ScriptLib.GetGroupVariableValue(context, "key")
	        t=ScriptLib.GetGroupVariableValue(context, "times")
	
	        k=k+4*10^t
	        t=t+1
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", k) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	
	        if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", t) then
	            ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_is_k")
	            return -1
	          end
	    return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_8031(context, evt)
	if 8012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_8031(context, evt)
	-- 将本组内变量名为 "wind2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wind2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_8034(context, evt)
	if 8033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_8034(context, evt)
	-- 将本组内变量名为 "wind1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wind1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8035(context, evt)
	if 8018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"wind1"为0
	if ScriptLib.GetGroupVariableValue(context, "wind1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8035(context, evt)
	-- 将configid为 8018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8036(context, evt)
	if 8022 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"wind2"为0
	if ScriptLib.GetGroupVariableValue(context, "wind2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8036(context, evt)
	-- 将configid为 8022 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8022, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8037(context, evt)
	if evt.param1 ~= 8037 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8037(context, evt)
	-- 将configid为 8002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end