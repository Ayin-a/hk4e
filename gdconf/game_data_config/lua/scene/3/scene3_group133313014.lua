-- 基础信息
local base_info = {
	group_id = 133313014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14002, monster_id = 26100501, pos = { x = -794.964, y = -265.453, z = 5707.516 }, rot = { x = 0.000, y = 303.878, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 14003, monster_id = 28061501, pos = { x = -805.854, y = -265.453, z = 5722.061 }, rot = { x = 0.000, y = 175.108, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 14010, monster_id = 24040201, pos = { x = -803.107, y = -265.453, z = 5696.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 14011, monster_id = 24040201, pos = { x = -819.533, y = -265.518, z = 5712.991 }, rot = { x = 0.000, y = 116.224, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 14012, monster_id = 28061501, pos = { x = -814.496, y = -265.518, z = 5702.322 }, rot = { x = 0.000, y = 78.826, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14001, gadget_id = 70290630, pos = { x = -804.998, y = -265.518, z = 5708.981 }, rot = { x = 0.000, y = 354.848, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014004, name = "GROUP_REFRESH_14004", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_14004", trigger_count = 0 },
	{ config_id = 1014005, name = "SELECT_OPTION_14005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14005", action = "action_EVENT_SELECT_OPTION_14005", trigger_count = 0 },
	{ config_id = 1014006, name = "CHALLENGE_SUCCESS_14006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_14006", trigger_count = 0 },
	{ config_id = 1014007, name = "CHALLENGE_FAIL_14007", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_14007", trigger_count = 0 },
	{ config_id = 1014008, name = "ANY_MONSTER_DIE_14008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_14008", trigger_count = 0 },
	{ config_id = 1014009, name = "ANY_MONSTER_DIE_14009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14009", action = "action_EVENT_ANY_MONSTER_DIE_14009" },
	{ config_id = 1014013, name = "ANY_MONSTER_LIVE_14013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_14013" },
	-- 战斗reminder
	{ config_id = 1014014, name = "MONSTER_BATTLE_14014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_14014", action = "action_EVENT_MONSTER_BATTLE_14014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
	{ config_id = 2, name = "fail_num", value = 0, no_refresh = true }
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
	end_suite = 3,
	rand_suite = false,
	father_quest = 73103
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 14001, state = 202 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 2, name = "fail_num", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 14001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_REFRESH_14004", "SELECT_OPTION_14005", "CHALLENGE_SUCCESS_14006", "CHALLENGE_FAIL_14007", "ANY_MONSTER_DIE_14008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 2, name = "fail_num", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 14001, state = 901 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 2, name = "fail_num", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 14001, state = 0 }
		},
		monsters = {
			{ config_id = 14002 },
			{ config_id = 14003 },
			{ config_id = 14012 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14009", "ANY_MONSTER_LIVE_14013", "MONSTER_BATTLE_14014" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 2, name = "fail_num", value = 0, no_refresh = true }
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 14001, state = 0 }
		},
		monsters = {
			{ config_id = 14010 },
			{ config_id = 14011 }
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 2, name = "fail_num", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_REFRESH_14004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313014, 14001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14005(context, evt)
	-- 判断是gadgetid 14001 option_id 7
	if 14001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310327_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133313014, 4, FlowSuiteOperatePolicy.DEFAULT)
	
	-- 删除指定group： 133313014 ；指定config：14001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313014, 14001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 14001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_14006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310328_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_14007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310328_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "fail_num" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fail_num", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14008(context, evt)
	-- 将本组内变量名为 "deadMonster" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133313014, 5, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133313014, 4, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_14013(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为276的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 276, 133313014, 5, 14001, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_14014(context, evt)
	if 14002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"fail_num"为0
	if ScriptLib.GetGroupVariableValue(context, "fail_num") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_14014(context, evt)
	-- 调用提示id为 1000080015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end