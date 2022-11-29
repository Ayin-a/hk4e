-- 基础信息
local base_info = {
	group_id = 133212173
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 173001, monster_id = 21011601, pos = { x = -3574.172, y = 201.237, z = -1761.062 }, rot = { x = 0.000, y = 198.837, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 173002, monster_id = 21011601, pos = { x = -3575.136, y = 200.978, z = -1776.737 }, rot = { x = 0.000, y = 331.381, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 173003, monster_id = 21010501, pos = { x = -3585.667, y = 204.087, z = -1772.586 }, rot = { x = 0.000, y = 66.649, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 173004, monster_id = 21010501, pos = { x = -3576.663, y = 204.433, z = -1755.958 }, rot = { x = 0.000, y = 197.149, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 173005, monster_id = 22010401, pos = { x = -3568.539, y = 200.706, z = -1769.096 }, rot = { x = 0.000, y = 293.933, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 13 },
	{ config_id = 173006, monster_id = 21020701, pos = { x = -3593.300, y = 200.370, z = -1746.614 }, rot = { x = 0.000, y = 136.632, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 173027, monster_id = 21020701, pos = { x = -3566.611, y = 200.466, z = -1795.453 }, rot = { x = 0.000, y = 19.938, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 173034, monster_id = 21010502, pos = { x = -3586.846, y = 204.363, z = -1771.747 }, rot = { x = 0.000, y = 58.083, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 173007, gadget_id = 70220004, pos = { x = -3565.387, y = 200.506, z = -1768.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173008, gadget_id = 70220004, pos = { x = -3580.660, y = 201.168, z = -1783.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173009, gadget_id = 70900388, pos = { x = -3583.434, y = 201.253, z = -1784.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173010, gadget_id = 70900388, pos = { x = -3568.662, y = 200.411, z = -1763.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173011, gadget_id = 70220005, pos = { x = -3583.951, y = 202.936, z = -1775.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173012, gadget_id = 70220005, pos = { x = -3590.847, y = 200.688, z = -1752.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173013, gadget_id = 70220005, pos = { x = -3583.468, y = 201.320, z = -1753.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173014, gadget_id = 70220005, pos = { x = -3591.297, y = 200.638, z = -1751.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173015, gadget_id = 70220004, pos = { x = -3570.415, y = 200.717, z = -1762.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173016, gadget_id = 70350036, pos = { x = -3577.753, y = 201.188, z = -1768.243 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173017, gadget_id = 70350023, pos = { x = -3577.753, y = 201.188, z = -1768.243 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, persistent = true, area_id = 13 },
	{ config_id = 173022, gadget_id = 70900388, pos = { x = -3578.044, y = 201.048, z = -1783.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173028, gadget_id = 70220005, pos = { x = -3562.047, y = 200.143, z = -1775.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173029, gadget_id = 70220005, pos = { x = -3562.541, y = 200.190, z = -1775.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173030, gadget_id = 70220005, pos = { x = -3571.973, y = 200.842, z = -1774.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173031, gadget_id = 70220005, pos = { x = -3572.300, y = 200.875, z = -1773.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173032, gadget_id = 70220005, pos = { x = -3569.515, y = 200.247, z = -1788.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173033, gadget_id = 70220005, pos = { x = -3569.101, y = 200.212, z = -1789.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 173035, gadget_id = 70220005, pos = { x = -3588.460, y = 204.505, z = -1771.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1173018, name = "ANY_MONSTER_DIE_173018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_173018", action = "action_EVENT_ANY_MONSTER_DIE_173018", trigger_count = 0 },
	{ config_id = 1173019, name = "ANY_MONSTER_DIE_173019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_173019", action = "action_EVENT_ANY_MONSTER_DIE_173019", trigger_count = 0 },
	{ config_id = 1173020, name = "GADGET_CREATE_173020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_173020", action = "action_EVENT_GADGET_CREATE_173020", trigger_count = 0 },
	{ config_id = 1173021, name = "ANY_MONSTER_DIE_173021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_173021", trigger_count = 0 },
	{ config_id = 1173023, name = "SELECT_OPTION_173023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_173023", action = "action_EVENT_SELECT_OPTION_173023", trigger_count = 0 },
	{ config_id = 1173024, name = "CHALLENGE_SUCCESS_173024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_173024", trigger_count = 0 },
	{ config_id = 1173025, name = "CHALLENGE_FAIL_173025", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_173025", trigger_count = 0 },
	{ config_id = 1173026, name = "ANY_MONSTER_LIVE_173026", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_173026", action = "action_EVENT_ANY_MONSTER_LIVE_173026", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
	{ config_id = 2, name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 173007, 173008, 173009, 173010, 173011, 173012, 173013, 173014, 173015, 173017, 173022, 173028, 173029, 173030, 173031, 173032, 173033, 173035 },
		regions = { },
		triggers = { "GADGET_CREATE_173020", "ANY_MONSTER_DIE_173021", "SELECT_OPTION_173023", "CHALLENGE_SUCCESS_173024", "CHALLENGE_FAIL_173025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 173001, 173002, 173003, 173004, 173005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_173018", "ANY_MONSTER_LIVE_173026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 173006, 173027, 173034 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_173019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_5,
		monsters = { },
		gadgets = { 173016 },
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
function condition_EVENT_ANY_MONSTER_DIE_173018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_173018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3577.753,y=201.1883,z=-1768.243}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212173, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212173, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_173019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_173019(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212173, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_173020(context, evt)
	if 173017 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_173020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212173, 173017, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_173021(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_173023(context, evt)
	-- 判断是gadgetid 173017 option_id 7
	if 173017 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_173023(context, evt)
	-- 将configid为 173017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212173, 2)
	
	-- 删除指定group： 133212173 ；指定config：173017；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212173, 173017, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_173024(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212173, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212173, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212173, 4)
	
	-- 将configid为 173017 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173017, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_173025(context, evt)
	-- 将configid为 173017 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 173017, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212173, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212173, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212173, 4)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212173, 173017, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_173026(context, evt)
	if 173001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_173026(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212173, 4)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133212173, 8, 173016, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end