-- 基础信息
local base_info = {
	group_id = 133220424
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 424001, monster_id = 21011001, pos = { x = -2754.328, y = 226.451, z = -4461.557 }, rot = { x = 0.000, y = 300.841, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 424002, monster_id = 21011001, pos = { x = -2756.397, y = 226.104, z = -4457.798 }, rot = { x = 0.000, y = 241.647, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 424003, monster_id = 21010201, pos = { x = -2756.589, y = 226.324, z = -4459.263 }, rot = { x = 0.000, y = 274.861, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 424004, gadget_id = 70220066, pos = { x = -2759.209, y = 229.050, z = -4458.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 424005, gadget_id = 70210102, pos = { x = -2758.691, y = 229.110, z = -4458.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 424007, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2758.763, y = 225.864, z = -4458.347 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1424006, name = "ANY_GADGET_DIE_424006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_424006", action = "action_EVENT_ANY_GADGET_DIE_424006" },
	{ config_id = 1424007, name = "ENTER_REGION_424007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_424007", action = "action_EVENT_ENTER_REGION_424007" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1424008, name = "GADGET_STATE_CHANGE_424008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_424008", action = "action_EVENT_GADGET_STATE_CHANGE_424008" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1424009, name = "GADGET_STATE_CHANGE_424009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_424009", action = "action_EVENT_GADGET_STATE_CHANGE_424009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1424010, name = "GADGET_STATE_CHANGE_424010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_424010", action = "action_EVENT_GADGET_STATE_CHANGE_424010" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1424011, name = "GADGET_STATE_CHANGE_424011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_424011", action = "action_EVENT_GADGET_STATE_CHANGE_424011" }
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
		monsters = { 424001, 424002, 424003 },
		gadgets = { 424004 },
		regions = { 424007 },
		triggers = { "ANY_GADGET_DIE_424006", "ENTER_REGION_424007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 424005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_424008", "GADGET_STATE_CHANGE_424009", "GADGET_STATE_CHANGE_424010", "GADGET_STATE_CHANGE_424011" },
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
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_ANY_GADGET_DIE_424006(context, evt)
	if 424004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_424006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220424, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_424007(context, evt)
	if evt.param1 ~= 424007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_424007(context, evt)
	-- 触发镜头注目，注目位置为坐标（-2759.209，229.3203，-4458.039），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2759.209, y=229.3203, z=-4458.039}
	  local pos_follow = {x=0, y=1, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 322072835 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072835) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_424008(context, evt)
	if 424005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"done"为5
	if ScriptLib.GetGroupVariableValueByGroup(context, "done", 133220430) == 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_424008(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "done", 2, 133220430) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_424009(context, evt)
	if 424005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"done"为5
	if ScriptLib.GetGroupVariableValueByGroup(context, "done", 133220430) ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_424009(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 2, 133220430) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_424010(context, evt)
	if 424005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_424010(context, evt)
	-- 调用提示id为 322072830 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072830) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210806") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220438, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_424011(context, evt)
	if 424005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"done"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "done", 133220430) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_424011(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133220430) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "done", 1, 133220430) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end