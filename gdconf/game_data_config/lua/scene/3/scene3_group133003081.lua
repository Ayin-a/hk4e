-- 基础信息
local base_info = {
	group_id = 133003081
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
	{ config_id = 81001, gadget_id = 70360005, pos = { x = 2321.179, y = 270.269, z = -1524.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 1 },
	{ config_id = 81002, gadget_id = 70690027, pos = { x = 2321.249, y = 270.415, z = -1524.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81003, gadget_id = 70690001, pos = { x = 2318.524, y = 278.622, z = -1531.043 }, rot = { x = 0.000, y = 23.506, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81004, gadget_id = 70900203, pos = { x = 2300.803, y = 276.229, z = -1565.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81005, gadget_id = 70690001, pos = { x = 2345.036, y = 309.506, z = -1584.886 }, rot = { x = 0.000, y = 55.161, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81006, gadget_id = 70690001, pos = { x = 2315.598, y = 279.073, z = -1537.522 }, rot = { x = 0.000, y = 23.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81007, gadget_id = 70690001, pos = { x = 2312.474, y = 279.279, z = -1543.948 }, rot = { x = 0.000, y = 23.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81015, gadget_id = 70690001, pos = { x = 2309.089, y = 279.628, z = -1550.694 }, rot = { x = 0.000, y = 23.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81016, gadget_id = 70690008, pos = { x = 2300.341, y = 268.496, z = -1564.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81017, gadget_id = 70690001, pos = { x = 2304.368, y = 291.985, z = -1571.259 }, rot = { x = 0.000, y = 329.895, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81018, gadget_id = 70900203, pos = { x = 2323.594, y = 291.985, z = -1598.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81020, gadget_id = 70690001, pos = { x = 2308.537, y = 291.985, z = -1578.495 }, rot = { x = 0.000, y = 329.895, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81021, gadget_id = 70690001, pos = { x = 2311.966, y = 291.985, z = -1584.739 }, rot = { x = 0.000, y = 329.895, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81022, gadget_id = 70690008, pos = { x = 2323.773, y = 286.795, z = -1598.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81023, gadget_id = 70690001, pos = { x = 2328.443, y = 309.506, z = -1595.423 }, rot = { x = 0.000, y = 55.161, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81024, gadget_id = 70900203, pos = { x = 2360.443, y = 309.506, z = -1573.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81025, gadget_id = 70690001, pos = { x = 2334.029, y = 309.506, z = -1591.829 }, rot = { x = 0.000, y = 55.161, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81026, gadget_id = 70690001, pos = { x = 2339.437, y = 309.506, z = -1588.280 }, rot = { x = 0.000, y = 55.161, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81027, gadget_id = 70690008, pos = { x = 2360.443, y = 284.256, z = -1573.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81028, gadget_id = 70690001, pos = { x = 2359.258, y = 308.205, z = -1564.713 }, rot = { x = 22.081, y = 346.866, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81029, gadget_id = 70690001, pos = { x = 2357.956, y = 304.537, z = -1557.182 }, rot = { x = 22.696, y = 342.696, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 81030, gadget_id = 70690001, pos = { x = 2354.953, y = 300.453, z = -1549.897 }, rot = { x = 23.765, y = 326.439, z = 1.132 }, level = 1, area_id = 1 },
	{ config_id = 81031, gadget_id = 70690001, pos = { x = 2350.475, y = 295.691, z = -1542.588 }, rot = { x = 22.354, y = 327.394, z = 359.106 }, level = 1, area_id = 1 },
	{ config_id = 81032, gadget_id = 70690001, pos = { x = 2344.584, y = 291.692, z = -1536.865 }, rot = { x = 24.628, y = 298.336, z = 10.504 }, level = 1, area_id = 1 },
	{ config_id = 81033, gadget_id = 70900203, pos = { x = 2321.187, y = 270.415, z = -1524.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 81011, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2300.561, y = 274.552, z = -1564.735 }, area_id = 1 },
	{ config_id = 81012, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2323.592, y = 292.780, z = -1598.561 }, area_id = 1 },
	{ config_id = 81013, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2360.443, y = 305.181, z = -1573.783 }, area_id = 1 },
	{ config_id = 81014, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2321.064, y = 270.243, z = -1524.742 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1081008, name = "GADGET_STATE_CHANGE_81008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81008", action = "action_EVENT_GADGET_STATE_CHANGE_81008" },
	{ config_id = 1081009, name = "CHALLENGE_SUCCESS_81009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_81009" },
	{ config_id = 1081010, name = "CHALLENGE_FAIL_81010", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_81010", trigger_count = 0 },
	{ config_id = 1081011, name = "ENTER_REGION_81011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81011", action = "action_EVENT_ENTER_REGION_81011" },
	{ config_id = 1081012, name = "ENTER_REGION_81012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81012", action = "action_EVENT_ENTER_REGION_81012" },
	{ config_id = 1081013, name = "ENTER_REGION_81013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81013", action = "action_EVENT_ENTER_REGION_81013" },
	{ config_id = 1081014, name = "ENTER_REGION_81014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81014", action = "action_EVENT_ENTER_REGION_81014", tag = "666" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 1, no_refresh = false }
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
		gadgets = { 81001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_81008", "CHALLENGE_SUCCESS_81009", "CHALLENGE_FAIL_81010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 81002, 81003, 81004, 81006, 81007, 81015 },
		regions = { 81011 },
		triggers = { "ENTER_REGION_81011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 81016, 81017, 81018, 81020, 81021 },
		regions = { 81012 },
		triggers = { "ENTER_REGION_81012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 81005, 81022, 81023, 81024, 81025, 81026, 81027 },
		regions = { 81013 },
		triggers = { "ENTER_REGION_81013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 81028, 81029, 81030, 81031, 81032, 81033 },
		regions = { 81014 },
		triggers = { "ENTER_REGION_81014" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
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
function condition_EVENT_GADGET_STATE_CHANGE_81008(context, evt)
	if 81001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003081, 2)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为127的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 127, 180, 4, 666, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将本组内变量名为 "start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030811") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_81009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030812") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003081, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003081, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003081, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003081, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_81010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003081, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "start", 1, 133003081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030813") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81011(context, evt)
	if evt.param1 ~= 81011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003081, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2300.56,y=270.3999,z=-1564.735}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110439, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003081, EntityType.GADGET, 81004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81012(context, evt)
	if evt.param1 ~= 81012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003081, EntityType.GADGET, 81018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003081, 4)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2323.592,y=292.7801,z=-1598.561}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110440, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81013(context, evt)
	if evt.param1 ~= 81013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81013(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003081, 5)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2360.443,y=300.9228,z=-1573.783}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110441, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003081, EntityType.GADGET, 81024 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81014(context, evt)
	if evt.param1 ~= 81014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81014(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003081, EntityType.GADGET, 81033 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end