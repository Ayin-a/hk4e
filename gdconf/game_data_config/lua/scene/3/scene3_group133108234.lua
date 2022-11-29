-- 基础信息
local base_info = {
	group_id = 133108234
}

-- Trigger变量
local defs = {
	group_id = 133108234,
	num_monster = 2
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 234001, monster_id = 25010401, pos = { x = -504.551, y = 200.177, z = -760.570 }, rot = { x = 0.000, y = 93.249, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 7 },
	{ config_id = 234002, monster_id = 25010301, pos = { x = -508.696, y = 200.186, z = -762.190 }, rot = { x = 0.000, y = 264.811, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 234003, gadget_id = 70800105, pos = { x = -506.448, y = 200.000, z = -758.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 234004, gadget_id = 70800060, pos = { x = -512.689, y = 200.000, z = -762.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 234005, gadget_id = 70800089, pos = { x = -504.210, y = 200.041, z = -758.832 }, rot = { x = 0.000, y = 7.359, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 234006, gadget_id = 70800089, pos = { x = -507.719, y = 200.041, z = -764.138 }, rot = { x = 0.000, y = 172.601, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 234014, gadget_id = 70800105, pos = { x = -505.624, y = 200.000, z = -764.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 234015, gadget_id = 70800105, pos = { x = -501.966, y = 200.000, z = -760.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	-- 1 挑战开始, 2200
	{ config_id = 234007, shape = RegionShape.SPHERE, radius = 45, pos = { x = -506.692, y = 199.848, z = -760.695 }, area_id = 7 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 234008, shape = RegionShape.SPHERE, radius = 55, pos = { x = -506.650, y = 199.848, z = -760.763 }, area_id = 7 }
}

-- 触发器
triggers = {
	-- 1 挑战开始, 2200
	{ config_id = 1234007, name = "ENTER_REGION_234007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_234007", action = "action_EVENT_ENTER_REGION_234007", trigger_count = 0 },
	-- 2 超出范围, flag还原，挑战失败
	{ config_id = 1234008, name = "LEAVE_REGION_234008", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_234008", action = "action_EVENT_LEAVE_REGION_234008", trigger_count = 0 },
	-- 保底
	{ config_id = 1234009, name = "GROUP_LOAD_234009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_234009", action = "action_EVENT_GROUP_LOAD_234009", trigger_count = 0 },
	-- 5 宝箱交互，临时
	{ config_id = 1234010, name = "SELECT_OPTION_234010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_234010", action = "action_EVENT_SELECT_OPTION_234010", trigger_count = 0 },
	-- 6 giveReward变1，事件结束
	{ config_id = 1234011, name = "VARIABLE_CHANGE_234011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_234011", action = "action_EVENT_VARIABLE_CHANGE_234011", trigger_count = 0 },
	-- 4 挑战失败，刷回
	{ config_id = 1234012, name = "CHALLENGE_FAIL_234012", event = EventType.EVENT_CHALLENGE_FAIL, source = "2200", condition = "", action = "action_EVENT_CHALLENGE_FAIL_234012", trigger_count = 0 },
	-- 3 挑战成功，加交互
	{ config_id = 1234013, name = "CHALLENGE_SUCCESS_234013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2200", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_234013", trigger_count = 0 },
	-- 重置challengeStart
	{ config_id = 1234017, name = "GROUP_LOAD_234017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_234017", action = "action_EVENT_GROUP_LOAD_234017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeStart", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 3, name = "hasReward", value = 0, no_refresh = true },
	{ config_id = 4, name = "giveReward", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1234016, name = "GROUP_LOAD_234016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_234016", action = "action_EVENT_GROUP_LOAD_234016", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 234003, 234004, 234005, 234006, 234014, 234015 },
		regions = { 234007, 234008 },
		triggers = { "ENTER_REGION_234007", "LEAVE_REGION_234008", "GROUP_LOAD_234009", "VARIABLE_CHANGE_234011", "CHALLENGE_FAIL_234012", "CHALLENGE_SUCCESS_234013", "GROUP_LOAD_234017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 234001, 234002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "SELECT_OPTION_234010" },
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
function condition_EVENT_ENTER_REGION_234007(context, evt)
	if evt.param1 ~= 234007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"challengeStart"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 0 then
			return false
	end
	
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	-- 判断变量"Enable_StartChallenge"为1
	if ScriptLib.GetLanternRiteValue(context) ~=0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_234007(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 开启时将本组内变量名为 "Variable_StartWatcherCountDown" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_StartWatcherCountDown", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建编号为2200（该挑战的识别id),挑战内容为2004004的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2200, 2004004, defs.group_id, defs.num_monster, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 刷出suite2怪物
	ScriptLib.AddExtraGroupSuite(context, 133108234, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_234008(context, evt)
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	-- 判断是区域234008
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 234008 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_234008(context, evt)
	-- 终止识别id为2200的挑战，并判定失败
		ScriptLib.StopChallenge(context, 2200, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_234009(context, evt)
	-- 判断变量"challengeSuccess"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_234009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108234, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108234, 234004, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 234004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 234004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_234010(context, evt)
	-- 判断是gadgetid 234004 option_id 68
	if 234004 ~= evt.param1 then
		return false	
	end
	
	if 68 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_234010(context, evt)
	-- 改变指定group组133108234中， configid为234004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133108234, 234004, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 133108234 ；指定config：234004；物件身上指定option：68；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108234, 234004, 68) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "giveReward" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "giveReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_234011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"giveReward"为1
	if ScriptLib.GetGroupVariableValue(context, "giveReward") ~= 1 then
			return false
	end
	
	-- 判断变量"hasReward"为0
	if ScriptLib.GetGroupVariableValue(context, "hasReward") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_234011(context, evt)
	-- 将本组内变量名为 "hasReward" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.FinishGroupLinkBundle(context, defs.group_id)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108234, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_234012(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108234, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_234013(context, evt)
	-- 将本组内变量名为 "challengeSuccess" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeSuccess", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108234, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108234, 234004, {68}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 234004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 234004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_234017(context, evt)
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_234017(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/SeaLamp_Challenge_Manager"
require "V2_4/Firecracker"