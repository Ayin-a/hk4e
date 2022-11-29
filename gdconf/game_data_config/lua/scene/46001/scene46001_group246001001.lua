-- 基础信息
local base_info = {
	group_id = 246001001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 24021102, pos = { x = -0.104, y = -0.102, z = -5.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70330064, pos = { x = 19.000, y = -0.102, z = 3.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35 },
	{ config_id = 1003, gadget_id = 70330064, pos = { x = -19.000, y = -0.102, z = 3.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35 },
	{ config_id = 1006, gadget_id = 70360010, pos = { x = -0.020, y = -0.102, z = -0.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1005, shape = RegionShape.SPHERE, radius = 35, pos = { x = 0.139, y = -0.102, z = 0.713 }, team_ability_group_list = { "RoleElectricPowerSource_Play_TeamBuff" } }
}

-- 触发器
triggers = {
	{ config_id = 1001004, name = "DUNGEON_ALL_AVATAR_DIE_1004", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1004", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_1004" },
	{ config_id = 1001007, name = "GADGET_CREATE_1007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1007", action = "action_EVENT_GADGET_CREATE_1007" },
	{ config_id = 1001008, name = "SELECT_OPTION_1008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1008", action = "action_EVENT_SELECT_OPTION_1008" },
	{ config_id = 1001009, name = "CHALLENGE_FAIL_1009", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1009", trigger_count = 0 },
	{ config_id = 1001010, name = "CHALLENGE_SUCCESS_1010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1010" }
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
		gadgets = { 1002, 1003, 1006 },
		regions = { 1005 },
		triggers = { "DUNGEON_ALL_AVATAR_DIE_1004", "GADGET_CREATE_1007", "SELECT_OPTION_1008", "CHALLENGE_FAIL_1009", "CHALLENGE_SUCCESS_1010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1001 },
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
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1004(context, evt)
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
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_1004(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1007(context, evt)
	if 1006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 246001001, 1006, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1008(context, evt)
	-- 判断是gadgetid 1006 option_id 175
	if 1006 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1008(context, evt)
	-- 删除指定group： 246001001 ；指定config：1006；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 246001001, 1006, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 246001001, 2)
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111176的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111176, 246001001, 1, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 246001002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 246001001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 246001002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_0/BlitzRush_Watcher"