-- 基础信息
local base_info = {
	group_id = 201062002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2003, monster_id = 25080201, pos = { x = 85.323, y = -14.784, z = -15.058 }, rot = { x = 0.000, y = 261.849, z = 0.000 }, level = 1, disableWander = true, pose_id = 1003 },
	{ config_id = 2005, monster_id = 25080301, pos = { x = 85.005, y = -14.784, z = -24.119 }, rot = { x = 0.000, y = 294.643, z = 0.000 }, level = 1, disableWander = true, pose_id = 1003 },
	{ config_id = 2008, monster_id = 25080101, pos = { x = 80.742, y = -14.784, z = -19.438 }, rot = { x = 0.000, y = 264.091, z = 0.000 }, level = 1, disableWander = true, pose_id = 1004 },
	{ config_id = 2009, monster_id = 25080201, pos = { x = 78.092, y = -14.784, z = -13.020 }, rot = { x = 0.000, y = 170.103, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2010, monster_id = 25080201, pos = { x = 78.198, y = -14.784, z = -26.300 }, rot = { x = 0.000, y = 353.295, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2011, monster_id = 25080101, pos = { x = 71.710, y = -14.784, z = -24.681 }, rot = { x = 0.000, y = 44.850, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2019, monster_id = 25080101, pos = { x = 71.337, y = -14.784, z = -13.833 }, rot = { x = 0.000, y = 129.184, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2020, monster_id = 25080301, pos = { x = 69.746, y = -14.784, z = -19.957 }, rot = { x = 0.000, y = 85.828, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2024, monster_id = 25080301, pos = { x = 55.981, y = -14.035, z = -19.923 }, rot = { x = 0.000, y = 265.777, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2025, monster_id = 25080301, pos = { x = 69.746, y = -14.784, z = -19.957 }, rot = { x = 0.000, y = 85.828, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2026, monster_id = 25080201, pos = { x = 86.827, y = -14.728, z = -19.164 }, rot = { x = 0.000, y = 264.091, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2027, monster_id = 25080101, pos = { x = 90.566, y = -14.036, z = -25.944 }, rot = { x = 0.000, y = 294.643, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2028, monster_id = 25080301, pos = { x = 91.172, y = -14.027, z = -12.924 }, rot = { x = 0.000, y = 261.849, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70290137, pos = { x = 58.977, y = -13.847, z = -19.929 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70290137, pos = { x = 94.877, y = -13.846, z = -19.915 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70900205, pos = { x = 49.753, y = -13.358, z = -113.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70360280, pos = { x = 81.366, y = -13.224, z = -30.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2013, gadget_id = 70360291, pos = { x = 81.366, y = -13.224, z = -9.964 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70360280, pos = { x = 71.641, y = -13.224, z = -30.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70360291, pos = { x = 71.641, y = -13.224, z = -9.964 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2023, gadget_id = 70211001, pos = { x = 77.308, y = -13.090, z = -6.106 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 2007, shape = RegionShape.CUBIC, size = { x = 2.000, y = 15.000, z = 30.000 }, pos = { x = 66.814, y = -11.176, z = -19.927 } },
	-- 雷矢触发
	{ config_id = 2014, shape = RegionShape.CUBIC, size = { x = 2.000, y = 15.000, z = 21.000 }, pos = { x = 71.454, y = -11.176, z = -20.156 } },
	-- 雷矢触发
	{ config_id = 2021, shape = RegionShape.CUBIC, size = { x = 2.000, y = 15.000, z = 21.000 }, pos = { x = 81.368, y = -11.176, z = -20.156 } }
}

-- 触发器
triggers = {
	-- 房间2开门
	{ config_id = 1002006, name = "ANY_MONSTER_DIE_2006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2006", action = "action_EVENT_ANY_MONSTER_DIE_2006" },
	{ config_id = 1002007, name = "ENTER_REGION_2007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2007", action = "action_EVENT_ENTER_REGION_2007" },
	-- 雷矢触发
	{ config_id = 1002014, name = "ENTER_REGION_2014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2014", action = "action_EVENT_ENTER_REGION_2014", trigger_count = 0 },
	{ config_id = 1002015, name = "ANY_MONSTER_LIVE_2015", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2015", action = "action_EVENT_ANY_MONSTER_LIVE_2015" },
	{ config_id = 1002016, name = "CHALLENGE_SUCCESS_2016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2016" },
	-- 雷矢触发
	{ config_id = 1002021, name = "ENTER_REGION_2021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2021", action = "action_EVENT_ENTER_REGION_2021", trigger_count = 0 },
	{ config_id = 1002022, name = "CHALLENGE_FAIL_2022", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2022", trigger_count = 0 },
	-- 刷第二波
	{ config_id = 1002029, name = "ANY_MONSTER_DIE_2029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2029", action = "action_EVENT_ANY_MONSTER_DIE_2029", trigger_count = 0 },
	-- 刷第三波
	{ config_id = 1002030, name = "ANY_MONSTER_DIE_2030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2030", action = "action_EVENT_ANY_MONSTER_DIE_2030", trigger_count = 0 },
	-- 刷第四波
	{ config_id = 1002031, name = "ANY_MONSTER_DIE_2031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2031", action = "action_EVENT_ANY_MONSTER_DIE_2031", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "key", value = 0, no_refresh = false }
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
		gadgets = { 2001, 2002, 2004, 2012, 2013, 2017, 2018, 2023 },
		regions = { 2007, 2014, 2021 },
		triggers = { "ANY_MONSTER_DIE_2006", "ENTER_REGION_2007", "ENTER_REGION_2014", "ANY_MONSTER_LIVE_2015", "CHALLENGE_SUCCESS_2016", "ENTER_REGION_2021", "CHALLENGE_FAIL_2022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2024 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2003, 2005, 2008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2029" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 2010, 2011, 2025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2030" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 2009, 2019, 2020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2031" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 2026, 2027, 2028 },
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
function condition_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	if 2024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062010, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062002, 3)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062012, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2007(context, evt)
	if evt.param1 ~= 2007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2007(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2014(context, evt)
	if evt.param1 ~= 2014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"trap"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "trap", 201062008) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2014(context, evt)
	-- 将configid为 2017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2015(context, evt)
	if 2008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2015(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为252的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 252, 201062002, 12, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2016(context, evt)
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062010, 3)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062003, 2)
	
	-- 将本组内变量名为 "trap" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "trap", 1, 201062008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2021(context, evt)
	if evt.param1 ~= 2021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"trap"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "trap", 201062008) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2021(context, evt)
	-- 将configid为 2012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201062002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062002, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062012, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2029(context, evt)
	-- 判断变量"key"为0
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 0 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2029(context, evt)
	-- 调用提示id为 10620101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10620101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062002, 4)
	
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2030(context, evt)
	-- 判断变量"key"为1
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 1 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2030(context, evt)
	-- 调用提示id为 10620101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10620101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062002, 5)
	
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2031(context, evt)
	-- 判断变量"key"为2
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 2 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2031(context, evt)
	-- 调用提示id为 10620101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10620101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062002, 6)
	
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end