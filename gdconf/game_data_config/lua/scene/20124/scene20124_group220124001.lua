-- 基础信息
local base_info = {
	group_id = 220124001
}

-- Trigger变量
local defs = {
	round = 4,
	interval_time_1 = 10,
	interval_time_2 = 20,
	interval_time_3 = 30
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 26080101, pos = { x = 524.890, y = 55.000, z = 441.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5127 }, pose_id = 101, title_id = 8011, special_name_id = 10097 },
	{ config_id = 1002, monster_id = 26080101, pos = { x = 488.363, y = 55.000, z = 460.010 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5126 }, pose_id = 102, title_id = 8011, special_name_id = 10097 },
	{ config_id = 1003, monster_id = 26080101, pos = { x = 561.417, y = 55.000, z = 460.010 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 5128 }, pose_id = 102, title_id = 8011, special_name_id = 10097 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1004, gadget_id = 70360010, pos = { x = 525.039, y = 80.136, z = 460.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "DUNGEON_ALL_AVATAR_DIE_1005", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1005", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_1005" },
	{ config_id = 1001006, name = "CHALLENGE_SUCCESS_1006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1006" },
	{ config_id = 1001007, name = "GADGET_CREATE_1007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1007", action = "action_EVENT_GADGET_CREATE_1007" },
	{ config_id = 1001008, name = "SELECT_OPTION_1008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1008", action = "action_EVENT_SELECT_OPTION_1008" },
	{ config_id = 1001009, name = "CHALLENGE_FAIL_1009", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1009" }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 1001, 1002, 1003 }
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
		gadgets = { 1004 },
		regions = { },
		triggers = { "DUNGEON_ALL_AVATAR_DIE_1005", "CHALLENGE_SUCCESS_1006", "GADGET_CREATE_1007", "SELECT_OPTION_1008", "CHALLENGE_FAIL_1009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1001, 1002, 1003 },
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
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1005(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	
	local ret = 0
	
	for i,v in ipairs(uid_list) do
	        local is_all_dead = ScriptLib.IsPlayerAllAvatarDie(context, v)
	        if true ~= is_all_dead then
	                ret = -1
	                break
	        end
	end
	
	if ret ~= 0 then
	        return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_1005(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1006(context, evt)
	-- 将本组内变量名为 "Finish_Game_Play" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish_Game_Play", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1007(context, evt)
	if 1004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220124001, 1004, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1008(context, evt)
	-- 判断是gadgetid 1004 option_id 175
	if 1004 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1008(context, evt)
	-- 删除指定group： 220124001 ；指定config：1004；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220124001, 1004, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220124001, 2)
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111194的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111194, 220124001, 3, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220124001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_4/MiniOsial"
require "V2_4/Monster_CombatEnd_Handle"