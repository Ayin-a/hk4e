-- 基础信息
local base_info = {
	group_id = 133316095
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
	{ config_id = 95001, gadget_id = 70330343, pos = { x = 525.411, y = 299.692, z = 6269.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95005, gadget_id = 70360001, pos = { x = 517.264, y = 298.916, z = 6270.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } }, area_id = 30 },
	{ config_id = 95007, gadget_id = 70360025, pos = { x = 589.318, y = 356.591, z = 6529.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95008, gadget_id = 70800448, pos = { x = 589.127, y = 355.858, z = 6529.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95009, gadget_id = 70220103, pos = { x = 509.964, y = 306.341, z = 6279.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95010, gadget_id = 70220103, pos = { x = 490.171, y = 306.341, z = 6301.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95011, gadget_id = 70220103, pos = { x = 480.412, y = 306.341, z = 6331.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95012, gadget_id = 70220103, pos = { x = 460.773, y = 310.026, z = 6324.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95013, gadget_id = 70220103, pos = { x = 447.856, y = 310.026, z = 6343.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95014, gadget_id = 70220103, pos = { x = 431.967, y = 298.603, z = 6389.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95015, gadget_id = 70220103, pos = { x = 423.571, y = 294.561, z = 6430.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95016, gadget_id = 70220103, pos = { x = 428.369, y = 303.131, z = 6476.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95017, gadget_id = 70220103, pos = { x = 457.023, y = 329.035, z = 6499.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95018, gadget_id = 70220103, pos = { x = 489.745, y = 340.991, z = 6515.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95019, gadget_id = 70220103, pos = { x = 515.022, y = 346.700, z = 6519.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95020, gadget_id = 70220103, pos = { x = 542.695, y = 357.750, z = 6524.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 95021, gadget_id = 70220103, pos = { x = 571.990, y = 364.922, z = 6529.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1095002, name = "QUEST_START_95002", event = EventType.EVENT_QUEST_START, source = "7331907", condition = "", action = "action_EVENT_QUEST_START_95002", trigger_count = 0 },
	{ config_id = 1095003, name = "SELECT_OPTION_95003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_95003", action = "action_EVENT_SELECT_OPTION_95003", trigger_count = 0 },
	{ config_id = 1095004, name = "CHALLENGE_SUCCESS_95004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95004", trigger_count = 0 },
	{ config_id = 1095006, name = "CHALLENGE_FAIL_95006", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95006", trigger_count = 0 }
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
	io_type = 1,
	sub_flow_type = 1,
	secure_suite_index = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false,
	father_quest = 73319
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 95001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_95002", "SELECT_OPTION_95003", "CHALLENGE_SUCCESS_95004", "CHALLENGE_FAIL_95006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 95005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 95007, state = 0 },
			{ config_id = 95008, state = 0 },
			{ config_id = 95009, state = 0 },
			{ config_id = 95010, state = 0 },
			{ config_id = 95011, state = 0 },
			{ config_id = 95012, state = 0 },
			{ config_id = 95013, state = 0 },
			{ config_id = 95014, state = 0 },
			{ config_id = 95015, state = 0 },
			{ config_id = 95016, state = 0 },
			{ config_id = 95017, state = 0 },
			{ config_id = 95018, state = 0 },
			{ config_id = 95019, state = 0 },
			{ config_id = 95020, state = 0 },
			{ config_id = 95021, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 通知任务进度
function TLA_add_quest_progress(context, evt, quest_param)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, quest_param) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_95002(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133316095, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_95003(context, evt)
	-- 判断是gadgetid 95005 option_id 175
	if 95005 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_95003(context, evt)
	-- 删除指定group： 133316095 ；指定config：95005；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133316095, 95005, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7331907") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133316095, 3, FlowSuiteOperatePolicy.DEFAULT)
	
	-- 将configid为 95001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为1（该挑战的识别id),挑战内容为135的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 135, 90, 4, 101, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95004(context, evt)
	TLA_add_quest_progress(context, evt, "Q7331908")
	
	ScriptLib.ShowReminder(context, 1000020000)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_95006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133316095, 1)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133316095, 95005, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end