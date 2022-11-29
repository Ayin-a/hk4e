-- 基础信息
local base_info = {
	group_id = 220123010
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
}

-- 装置
gadgets = {
	{ config_id = 10005, gadget_id = 70310008, pos = { x = 2.555, y = -13.531, z = -30.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10011, gadget_id = 70211021, pos = { x = 7.252, y = -6.997, z = -28.841 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗高级稻妻", isOneoff = true, persistent = true },
	{ config_id = 10012, gadget_id = 70330162, pos = { x = 4.820, y = -6.473, z = -35.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 进区域提示玩家看镜子，调整目标点group变量，准备开始挑战
	{ config_id = 10001, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 20.000 }, pos = { x = 0.388, y = -6.938, z = -31.946 } },
	-- 看镜子，并且起一个时间轴
	{ config_id = 10006, shape = RegionShape.CUBIC, size = { x = 5.000, y = 3.000, z = 3.000 }, pos = { x = 4.707, y = -6.473, z = -35.027 } },
	-- 挑战失败后重新开始
	{ config_id = 10014, shape = RegionShape.SPHERE, radius = 50, pos = { x = 19.147, y = 3.036, z = -35.605 } }
}

-- 触发器
triggers = {
	-- 进区域提示玩家看镜子，调整目标点group变量，准备开始挑战
	{ config_id = 1010001, name = "ENTER_REGION_10001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10001", action = "action_EVENT_ENTER_REGION_10001" },
	-- 接受变量开始点灯挑战
	{ config_id = 1010002, name = "VARIABLE_CHANGE_10002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10002", action = "action_EVENT_VARIABLE_CHANGE_10002" },
	{ config_id = 1010003, name = "CHALLENGE_SUCCESS_10003", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10003" },
	-- 统计点灯数量的trigger
	{ config_id = 1010004, name = "VARIABLE_CHANGE_10004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10004", action = "action_EVENT_VARIABLE_CHANGE_10004", trigger_count = 0, tag = "123" },
	-- 看镜子，并且起一个时间轴
	{ config_id = 1010006, name = "ENTER_REGION_10006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10006", action = "action_EVENT_ENTER_REGION_10006" },
	-- 时间轴到了开始挑战
	{ config_id = 1010007, name = "TIME_AXIS_PASS_10007", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_10007" },
	{ config_id = 1010009, name = "DUNGEON_ALL_AVATAR_DIE_10009", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_10009", trigger_count = 0 },
	{ config_id = 1010010, name = "DUNGEON_SETTLE_10010", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_10010", action = "action_EVENT_DUNGEON_SETTLE_10010" },
	-- 挑战失败，加载suite2
	{ config_id = 1010013, name = "CHALLENGE_FAIL_10013", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10013", trigger_count = 0 },
	-- 挑战失败后重新开始
	{ config_id = 1010014, name = "ENTER_REGION_10014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10014", action = "action_EVENT_ENTER_REGION_10014", trigger_count = 0 },
	-- 把Lamp变量置回0，然后重新加回到之前的数值
	{ config_id = 1010015, name = "GADGET_CREATE_10015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10015", action = "action_EVENT_GADGET_CREATE_10015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Start", value = 0, no_refresh = false },
	{ config_id = 2, name = "Lamp", value = 0, no_refresh = false },
	{ config_id = 3, name = "Yes", value = 0, no_refresh = false },
	{ config_id = 4, name = "Omega", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1010008, name = "TIME_AXIS_PASS_10008", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_10008" }
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
		gadgets = { 10012 },
		regions = { 10001 },
		triggers = { "ENTER_REGION_10001", "VARIABLE_CHANGE_10002", "CHALLENGE_SUCCESS_10003", "VARIABLE_CHANGE_10004", "TIME_AXIS_PASS_10007", "DUNGEON_ALL_AVATAR_DIE_10009", "DUNGEON_SETTLE_10010", "CHALLENGE_FAIL_10013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 10014 },
		triggers = { "ENTER_REGION_10014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 10005 },
		regions = { },
		triggers = { "GADGET_CREATE_10015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_10001(context, evt)
	if evt.param1 ~= 10001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10001(context, evt)
	-- 触发镜头注目，注目位置为坐标（4.9，-6，-36），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=4.9, y=-6, z=-36}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 4000123 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 4000123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 改变指定group组220123004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220123004, 4001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 4, 220123001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"T1"，时间节点为{7}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {7}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Start"为1
	if ScriptLib.GetGroupVariableValue(context, "Start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10002(context, evt)
	-- 创建编号为101（该挑战的识别id),挑战内容为2005010的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 2005010, 3, 123, 4, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
	    return -1
	end
	
	ScriptLib.AddExtraGroupSuite(context, 220123004, 6)
	ScriptLib.AddExtraGroupSuite(context, 220123004, 7)
	ScriptLib.AddExtraGroupSuite(context, 220123004, 8)
	ScriptLib.AddExtraGroupSuite(context, 220123004, 9)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10003(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 6, 220123001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Finish", 1, 220123004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_10004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Lamp"为1
	if ScriptLib.GetGroupVariableValue(context, "Lamp") == 1 then
	        return true
	end
	
	-- 判断变量"Lamp"为2
	if ScriptLib.GetGroupVariableValue(context, "Lamp") == 2 then
	        return true
	end
	
	-- 判断变量"Lamp"为3
	if ScriptLib.GetGroupVariableValue(context, "Lamp") == 3 then
	        return true
	end
	
	-- 判断变量"Lamp"为4
	if ScriptLib.GetGroupVariableValue(context, "Lamp") == 4 then
	        return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10004(context, evt)
	ScriptLib.PrintLog('Counting Lamps')
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10006(context, evt)
	if evt.param1 ~= 10006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10006(context, evt)
	-- 调用提示id为 4000124 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 4000124) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"T"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_10007(context, evt)
	-- 将本组内变量名为 "Start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "stage" 的变量设置为 5
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 5, 220123001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Challenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Challenge", 1, 220123004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_10009(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_10010(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_10010(context, evt)
	-- 创建id为10011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123010, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10014(context, evt)
	if evt.param1 ~= 10014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10014(context, evt)
	-- 创建编号为101（该挑战的识别id),挑战内容为2005010的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 2005010, 3, 123, 4, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
	    return -1
	end
	
	ScriptLib.AddExtraGroupSuite(context, 220123010, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 220123010, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10015(context, evt)
	if 10005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10015(context, evt)
	local c = 0
	
	c = ScriptLib.GetGroupVariableValue(context, "Lamp")
	
	if c == 1 then
	    ScriptLib.ChangeGroupVariableValue(context, "Omega", 1)
	end
	
	if c == 2 then
	    ScriptLib.ChangeGroupVariableValue(context, "Omega", 1)
	    ScriptLib.ChangeGroupVariableValue(context, "Omega", 1)
	end
	
	if c == 3 then
	    ScriptLib.ChangeGroupVariableValue(context, "Omega", 1)
	    ScriptLib.ChangeGroupVariableValue(context, "Omega", 1)
	    ScriptLib.ChangeGroupVariableValue(context, "Omega", 1)
	end
	
	if c == 4 then
	    ScriptLib.ChangeGroupVariableValue(context, "Omega", 1)
	    ScriptLib.ChangeGroupVariableValue(context, "Omega", 1)
	    ScriptLib.ChangeGroupVariableValue(context, "Omega", 1)
	    ScriptLib.ChangeGroupVariableValue(context, "Omega", 1)
	end
	
	ScriptLib.RemoveExtraGroupSuite(context, 220123010, 3)
	
	return 0
end