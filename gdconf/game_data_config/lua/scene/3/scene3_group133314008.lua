-- 基础信息
local base_info = {
	group_id = 133314008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8008, monster_id = 24040101, pos = { x = -897.238, y = -196.518, z = 5070.874 }, rot = { x = 0.000, y = 7.253, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 8009, monster_id = 24040101, pos = { x = -900.885, y = -196.518, z = 5097.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 8012, monster_id = 24040201, pos = { x = -880.191, y = -196.518, z = 5087.852 }, rot = { x = 0.000, y = 264.752, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 8013, monster_id = 24040301, pos = { x = -909.883, y = -196.518, z = 5090.651 }, rot = { x = 0.000, y = 107.890, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8001, gadget_id = 70290630, pos = { x = -894.325, y = -196.518, z = 5085.693 }, rot = { x = 0.000, y = 27.563, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008002, name = "GROUP_REFRESH_8002", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_8002", trigger_count = 0 },
	{ config_id = 1008003, name = "SELECT_OPTION_8003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8003", action = "action_EVENT_SELECT_OPTION_8003", trigger_count = 0 },
	{ config_id = 1008004, name = "ANY_MONSTER_DIE_8004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_8004", trigger_count = 0 },
	{ config_id = 1008005, name = "CHALLENGE_SUCCESS_8005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8005", trigger_count = 0 },
	{ config_id = 1008006, name = "CHALLENGE_FAIL_8006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8006", trigger_count = 0 },
	-- 开启挑战
	{ config_id = 1008007, name = "ANY_MONSTER_LIVE_8007", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8007", action = "action_EVENT_ANY_MONSTER_LIVE_8007" },
	{ config_id = 1008010, name = "ANY_MONSTER_DIE_8010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8010", action = "action_EVENT_ANY_MONSTER_DIE_8010" },
	-- 播开车
	{ config_id = 1008014, name = "MONSTER_BATTLE_8014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_8014", action = "action_EVENT_MONSTER_BATTLE_8014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
	{ config_id = 3, name = "fail_num", value = 0, no_refresh = true }
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
	father_quest = 73186
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 8001, state = 202 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 3, name = "fail_num", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 8001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_REFRESH_8002", "SELECT_OPTION_8003", "ANY_MONSTER_DIE_8004", "CHALLENGE_SUCCESS_8005", "CHALLENGE_FAIL_8006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 3, name = "fail_num", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 8001, state = 901 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 3, name = "fail_num", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 8001, state = 201 }
		},
		monsters = {
			{ config_id = 8008 },
			{ config_id = 8009 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_8007", "ANY_MONSTER_DIE_8010", "MONSTER_BATTLE_8014" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 3, name = "fail_num", value = 0, no_refresh = true }
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 8001, state = 201 }
		},
		monsters = {
			{ config_id = 8012 },
			{ config_id = 8013 }
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 3, name = "fail_num", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_REFRESH_8002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314008, 8001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_8003(context, evt)
	-- 判断是gadgetid 8001 option_id 7
	if 8001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318623_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133314008, 4, FlowSuiteOperatePolicy.DEFAULT)
	
	-- 删除指定group： 133314008 ；指定config：8001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314008, 8001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 8001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8004(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318624_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318624_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 变量"deadMonster"赋值为0
	ScriptLib.SetGroupVariableValue(context, "deadMonster", 0)
	
	-- 针对当前group内变量名为 "fail_num" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fail_num", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314008, 8001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_8007(context, evt)
	if 8008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8007(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为276的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 276, 133314008, 4, 8001, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8010(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133314008, 5, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133314008, 4, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_8014(context, evt)
	if 8008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_8014(context, evt)
	-- 调用提示id为 1000080010 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end