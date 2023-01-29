-- 基础信息
local base_info = {
	group_id = 133316094
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
	{ config_id = 94001, gadget_id = 70330343, pos = { x = 517.264, y = 298.916, z = 6270.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 94002, gadget_id = 70360001, pos = { x = 517.264, y = 298.916, z = 6270.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } }, area_id = 30 },
	{ config_id = 94007, gadget_id = 70220103, pos = { x = 515.879, y = 306.817, z = 6276.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 94008, gadget_id = 70220103, pos = { x = 517.713, y = 313.483, z = 6298.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 94009, gadget_id = 70220103, pos = { x = 507.307, y = 313.483, z = 6341.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 94010, gadget_id = 70220103, pos = { x = 521.756, y = 307.236, z = 6362.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 94011, gadget_id = 70220103, pos = { x = 528.306, y = 297.854, z = 6405.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 94012, gadget_id = 70220103, pos = { x = 580.285, y = 297.854, z = 6448.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 94013, gadget_id = 70800448, pos = { x = 594.925, y = 292.674, z = 6447.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 94015, gadget_id = 70360025, pos = { x = 595.016, y = 293.813, z = 6446.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 }
}

-- 区域
regions = {
	{ config_id = 94014, shape = RegionShape.SPHERE, radius = 2, pos = { x = 595.070, y = 293.451, z = 6446.948 }, area_id = 30 }
}

-- 触发器
triggers = {
	{ config_id = 1094003, name = "QUEST_START_94003", event = EventType.EVENT_QUEST_START, source = "7331902", condition = "", action = "action_EVENT_QUEST_START_94003", trigger_count = 0 },
	{ config_id = 1094004, name = "SELECT_OPTION_94004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_94004", action = "action_EVENT_SELECT_OPTION_94004", trigger_count = 0 },
	{ config_id = 1094005, name = "CHALLENGE_SUCCESS_94005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_94005", trigger_count = 0 },
	{ config_id = 1094006, name = "CHALLENGE_FAIL_94006", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_94006", trigger_count = 0 },
	{ config_id = 1094014, name = "ENTER_REGION_94014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", tag = "101" }
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
			{ config_id = 94001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_94003", "SELECT_OPTION_94004", "CHALLENGE_SUCCESS_94005", "CHALLENGE_FAIL_94006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 94002, state = 0 }
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
			{ config_id = 94007, state = 0 },
			{ config_id = 94008, state = 0 },
			{ config_id = 94009, state = 0 },
			{ config_id = 94010, state = 0 },
			{ config_id = 94011, state = 0 },
			{ config_id = 94012, state = 0 },
			{ config_id = 94013, state = 0 },
			{ config_id = 94015, state = 0 }
		},
		monsters = {
		},
		regions = { 94014 },
		triggers = { "ENTER_REGION_94014" },
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
function action_EVENT_QUEST_START_94003(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133316094, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_94004(context, evt)
	-- 判断是gadgetid 94002 option_id 175
	if 94002 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_94004(context, evt)
	-- 删除指定group： 133316094 ；指定config：94002；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133316094, 94002, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7331902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133316094, 3, FlowSuiteOperatePolicy.DEFAULT)
	
	-- 创建编号为1（该挑战的识别id),挑战内容为135的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 135, 90, 4, 101, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_94005(context, evt)
	TLA_add_quest_progress(context, evt, "Q7331903")
	
	ScriptLib.ShowReminder(context, 1000020000)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_94006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133316094, 1)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133316094, 94002, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end