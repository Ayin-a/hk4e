-- 基础信息
local base_info = {
	group_id = 133217038
}

-- Trigger变量
local defs = {
	inner_region = 38028,
	outer_region = 38028,
	related_region = 38028,
	group_id = 133217038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38001, monster_id = 25080101, pos = { x = -4310.305, y = 200.244, z = -3772.680 }, rot = { x = 0.000, y = 352.762, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, pose_id = 1, area_id = 14 },
	{ config_id = 38002, monster_id = 25010301, pos = { x = -4310.220, y = 200.235, z = -3772.729 }, rot = { x = 0.000, y = 352.762, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 38003, monster_id = 25010501, pos = { x = -4272.850, y = 200.066, z = -3730.567 }, rot = { x = 0.000, y = 236.851, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 38004, monster_id = 25070101, pos = { x = -4310.126, y = 200.233, z = -3772.622 }, rot = { x = 0.000, y = 352.762, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 38005, monster_id = 25030301, pos = { x = -4272.850, y = 200.066, z = -3730.567 }, rot = { x = 0.000, y = 236.851, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 14 },
	{ config_id = 38006, monster_id = 25080301, pos = { x = -4294.375, y = 200.962, z = -3712.569 }, rot = { x = 0.000, y = 185.755, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 38022, monster_id = 25080101, pos = { x = -4272.850, y = 200.066, z = -3730.567 }, rot = { x = 0.000, y = 236.851, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 38023, monster_id = 25010301, pos = { x = -4294.375, y = 200.962, z = -3712.569 }, rot = { x = 0.000, y = 185.755, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 38024, monster_id = 25010601, pos = { x = -4291.147, y = 200.603, z = -3712.684 }, rot = { x = 0.000, y = 178.627, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 38025, monster_id = 25080201, pos = { x = -4294.375, y = 200.962, z = -3712.569 }, rot = { x = 0.000, y = 185.755, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, pose_id = 1, area_id = 14 },
	{ config_id = 38026, monster_id = 25080201, pos = { x = -4291.147, y = 200.603, z = -3712.684 }, rot = { x = 0.000, y = 178.627, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 38027, monster_id = 25080301, pos = { x = -4291.147, y = 200.603, z = -3712.684 }, rot = { x = 0.000, y = 178.627, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 38007, gadget_id = 70350036, pos = { x = -4300.464, y = 200.130, z = -3744.632 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 38008, gadget_id = 70350023, pos = { x = -4300.464, y = 200.130, z = -3744.632 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 38018, gadget_id = 70330064, pos = { x = -4296.181, y = 200.137, z = -3750.559 }, rot = { x = 0.000, y = 34.750, z = 0.000 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 38019, gadget_id = 70330062, pos = { x = -4294.380, y = 200.135, z = -3744.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 38020, gadget_id = 70330062, pos = { x = -4300.329, y = 200.142, z = -3739.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 38021, gadget_id = 70330062, pos = { x = -4306.937, y = 200.135, z = -3744.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 38028, shape = RegionShape.SPHERE, radius = 35, pos = { x = -4300.418, y = 200.131, z = -3744.673 }, area_id = 14, team_ability_group_list = { "RoleElectricPowerSourceBigWorld_Play_TeamBuff" } }
}

-- 触发器
triggers = {
	{ config_id = 1038009, name = "ANY_MONSTER_DIE_38009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38009", action = "action_EVENT_ANY_MONSTER_DIE_38009", trigger_count = 0 },
	{ config_id = 1038010, name = "ANY_MONSTER_DIE_38010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38010", action = "action_EVENT_ANY_MONSTER_DIE_38010", trigger_count = 0 },
	{ config_id = 1038011, name = "GADGET_CREATE_38011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_38011", action = "action_EVENT_GADGET_CREATE_38011", trigger_count = 0 },
	{ config_id = 1038012, name = "ANY_MONSTER_DIE_38012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_38012", trigger_count = 0 },
	{ config_id = 1038013, name = "ANY_MONSTER_DIE_38013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38013", action = "action_EVENT_ANY_MONSTER_DIE_38013", trigger_count = 0 },
	{ config_id = 1038014, name = "SELECT_OPTION_38014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_38014", action = "action_EVENT_SELECT_OPTION_38014", trigger_count = 0 },
	{ config_id = 1038015, name = "CHALLENGE_SUCCESS_38015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_38015", trigger_count = 0 },
	{ config_id = 1038016, name = "CHALLENGE_FAIL_38016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_38016", trigger_count = 0 },
	{ config_id = 1038017, name = "ANY_MONSTER_LIVE_38017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_38017", action = "action_EVENT_ANY_MONSTER_LIVE_38017", trigger_count = 0 }
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
		gadgets = { 38008 },
		regions = { },
		triggers = { "GADGET_CREATE_38011", "ANY_MONSTER_DIE_38012", "SELECT_OPTION_38014", "CHALLENGE_SUCCESS_38015", "CHALLENGE_FAIL_38016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 38001, 38022, 38023, 38024 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38009", "ANY_MONSTER_LIVE_38017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 38002, 38003, 38025, 38026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 38004, 38005, 38006, 38027 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 38007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 38018, 38019, 38020, 38021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = region,
		monsters = { },
		gadgets = { },
		regions = { 38028 },
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
function condition_EVENT_ANY_MONSTER_DIE_38009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38009(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=0,y=0,z=0}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217038, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=0,y=0,z=0}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217038, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_38011(context, evt)
	if 38008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_38011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217038, 38008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38012(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38013(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_38014(context, evt)
	-- 判断是gadgetid 38008 option_id 7
	if 38008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_38014(context, evt)
	-- 将configid为 38008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217038, 2)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217038, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217038, 7)
	
	-- 删除指定group： 133217038 ；指定config：38008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133217038, 38008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_38015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 7)
	
	-- 将configid为 38008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38008, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_38016(context, evt)
	-- 将configid为 38008 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38008, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217038, 7)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217038, 38008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_38017(context, evt)
	if 38001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_38017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217038, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为81的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 81, 133217038, 12, 38007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将configid为 38019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 38020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 38021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end