-- 基础信息
local base_info = {
	group_id = 133313006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6002, monster_id = 28060401, pos = { x = -361.654, y = -246.118, z = 5476.340 }, rot = { x = 0.000, y = 224.314, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 6003, monster_id = 26100401, pos = { x = -369.906, y = -246.053, z = 5457.181 }, rot = { x = 0.000, y = 326.975, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 6012, monster_id = 24040301, pos = { x = -351.682, y = -246.118, z = 5465.366 }, rot = { x = 0.000, y = 292.840, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 6013, monster_id = 24040201, pos = { x = -383.352, y = -246.053, z = 5470.549 }, rot = { x = 0.000, y = 96.808, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 6014, monster_id = 28060401, pos = { x = -368.791, y = -246.118, z = 5478.915 }, rot = { x = 0.000, y = 174.391, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6001, gadget_id = 70290623, pos = { x = -370.497, y = -246.149, z = 5469.916 }, rot = { x = 0.000, y = 264.817, z = 0.000 }, level = 1, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006004, name = "GROUP_REFRESH_6004", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_6004", trigger_count = 0 },
	{ config_id = 1006005, name = "SELECT_OPTION_6005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6005", action = "action_EVENT_SELECT_OPTION_6005", trigger_count = 0 },
	{ config_id = 1006006, name = "CHALLENGE_SUCCESS_6006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6006", trigger_count = 0 },
	{ config_id = 1006007, name = "CHALLENGE_FAIL_6007", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6007", trigger_count = 0 },
	{ config_id = 1006008, name = "ANY_MONSTER_LIVE_6008", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6008", action = "action_EVENT_ANY_MONSTER_LIVE_6008" },
	{ config_id = 1006009, name = "ANY_MONSTER_DIE_6009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_6009", trigger_count = 0 },
	{ config_id = 1006010, name = "ANY_MONSTER_DIE_6010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6010", action = "action_EVENT_ANY_MONSTER_DIE_6010" },
	-- 播reminder，没有失败过
	{ config_id = 1006011, name = "MONSTER_BATTLE_6011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_6011", action = "action_EVENT_MONSTER_BATTLE_6011" }
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
	father_quest = 73187
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 6001, state = 202 }
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
			{ config_id = 6001, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_REFRESH_6004", "SELECT_OPTION_6005", "CHALLENGE_SUCCESS_6006", "CHALLENGE_FAIL_6007", "ANY_MONSTER_DIE_6009" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 2, name = "fail_num", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 6001, state = 901 }
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
			{ config_id = 6001, state = 0 }
		},
		monsters = {
			{ config_id = 6002 },
			{ config_id = 6003 },
			{ config_id = 6014 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6008", "ANY_MONSTER_DIE_6010", "MONSTER_BATTLE_6011" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
			{ config_id = 2, name = "fail_num", value = 0, no_refresh = true }
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 6001, state = 0 }
		},
		monsters = {
			{ config_id = 6012 },
			{ config_id = 6013 }
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
function action_EVENT_GROUP_REFRESH_6004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313006, 6001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6005(context, evt)
	-- 判断是gadgetid 6001 option_id 7
	if 6001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318734_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133313006, 4, FlowSuiteOperatePolicy.DEFAULT)
	
	-- 删除指定group： 133313006 ；指定config：6001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133313006, 6001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318729_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7318729_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313006, 6001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 针对当前group内变量名为 "fail_num" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fail_num", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 变量"deadMonster"赋值为0
	ScriptLib.SetGroupVariableValue(context, "deadMonster", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6008(context, evt)
	if 6002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6008(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为276的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 276, 133313006, 5, 6001, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6009(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6010(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133313006, 5, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133313006, 4, FlowSuiteOperatePolicy.DEFAULT)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_6011(context, evt)
	if 6002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"fail_num"为0
	if ScriptLib.GetGroupVariableValue(context, "fail_num") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_6011(context, evt)
	-- 调用提示id为 1000080013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end