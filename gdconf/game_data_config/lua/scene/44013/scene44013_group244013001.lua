-- 基础信息
local base_info = {
	group_id = 244013001
}

-- Trigger变量
local defs = {
	buff_gadget = 1013
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
	{ config_id = 1001, gadget_id = 70360010, pos = { x = 0.141, y = -0.197, z = 0.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350077, pos = { x = 0.078, y = 0.028, z = -24.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350077, pos = { x = 0.128, y = 0.041, z = 24.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1013, gadget_id = 70800101, pos = { x = 0.123, y = -0.091, z = 0.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 44000006, pos = { x = -0.004, y = 0.028, z = 16.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "GADGET_CREATE_1002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1002", action = "action_EVENT_GADGET_CREATE_1002" },
	{ config_id = 1001005, name = "SELECT_OPTION_1005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1005", action = "action_EVENT_SELECT_OPTION_1005" },
	{ config_id = 1001014, name = "CHALLENGE_SUCCESS_1014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1014" },
	{ config_id = 1001015, name = "CHALLENGE_FAIL_1015", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1015" },
	{ config_id = 1001016, name = "CHALLENGE_SUCCESS_1016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "202", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1016" },
	{ config_id = 1001017, name = "CHALLENGE_SUCCESS_1017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "202", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1017" },
	{ config_id = 1001018, name = "CHALLENGE_SUCCESS_1018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "201", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1018" },
	{ config_id = 1001019, name = "CHALLENGE_FAIL_1019", event = EventType.EVENT_CHALLENGE_FAIL, source = "202", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1019" },
	{ config_id = 1001021, name = "DUNGEON_ALL_AVATAR_DIE_1021", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1021", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_1021", trigger_count = 0 }
}

-- 点位
points = {
	-- 飘浮灵点位
	{ config_id = 1006, pos = { x = -0.004, y = -0.102, z = -6.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- 飘浮灵点位
	{ config_id = 1007, pos = { x = 10.408, y = -0.102, z = 0.020 }, rot = { x = 0.000, y = 268.368, z = 0.000 }, tag = 2 },
	-- 飘浮灵点位
	{ config_id = 1008, pos = { x = -10.682, y = -0.102, z = -0.289 }, rot = { x = 0.000, y = 85.293, z = 0.000 }, tag = 2 },
	-- 飘浮灵点位
	{ config_id = 1009, pos = { x = 0.183, y = -0.102, z = 10.458 }, rot = { x = 0.000, y = 180.711, z = 0.000 }, tag = 2 },
	-- 常规怪物点位
	{ config_id = 1010, pos = { x = 6.448, y = -0.102, z = -5.530 }, rot = { x = 0.000, y = 316.403, z = 0.000 }, tag = 4 },
	-- 常规怪物点位
	{ config_id = 1011, pos = { x = 9.781, y = -0.102, z = 5.349 }, rot = { x = 0.000, y = 214.986, z = 0.000 }, tag = 4 },
	-- 常规怪物点位
	{ config_id = 1022, pos = { x = -5.031, y = -0.102, z = -6.260 }, rot = { x = 0.000, y = 43.758, z = 0.000 }, tag = 4 },
	-- 常规怪物点位
	{ config_id = 1023, pos = { x = -6.058, y = -0.102, z = 6.154 }, rot = { x = 0.000, y = 146.846, z = 0.000 }, tag = 4 },
	-- 常规怪物点位
	{ config_id = 1024, pos = { x = 3.781, y = -0.102, z = 7.595 }, rot = { x = 0.000, y = 198.515, z = 0.000 }, tag = 4 },
	-- 常规怪物点位
	{ config_id = 1025, pos = { x = -7.785, y = -0.102, z = -1.509 }, rot = { x = 0.000, y = 66.873, z = 0.000 }, tag = 4 },
	-- 飘浮灵点位
	{ config_id = 1026, pos = { x = 11.536, y = -0.102, z = -5.288 }, rot = { x = 0.000, y = 311.252, z = 0.000 }, tag = 2 },
	-- 飘浮灵点位
	{ config_id = 1027, pos = { x = 7.984, y = -0.102, z = 10.290 }, rot = { x = 0.000, y = 206.254, z = 0.000 }, tag = 2 },
	-- 飘浮灵点位
	{ config_id = 1028, pos = { x = -10.854, y = -0.102, z = 5.967 }, rot = { x = 0.000, y = 128.013, z = 0.000 }, tag = 2 },
	-- 飘浮灵点位
	{ config_id = 1029, pos = { x = -7.124, y = -0.102, z = 10.892 }, rot = { x = 0.000, y = 146.349, z = 0.000 }, tag = 2 },
	-- 飘浮灵点位
	{ config_id = 1030, pos = { x = -10.248, y = -0.102, z = -5.824 }, rot = { x = 0.000, y = 53.105, z = 0.000 }, tag = 2 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_IN_LIMIT_TIME", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1001012, name = "POOL_MONSTER_TIDE_DIE_1012", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_1012", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_1012" }
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
		gadgets = { 1001, 1003, 1004, 1013, 1020 },
		regions = { },
		triggers = { "GADGET_CREATE_1002", "SELECT_OPTION_1005", "CHALLENGE_SUCCESS_1014", "CHALLENGE_FAIL_1015", "CHALLENGE_SUCCESS_1016", "CHALLENGE_SUCCESS_1017", "CHALLENGE_FAIL_1019", "DUNGEON_ALL_AVATAR_DIE_1021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_1018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1002(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 0, 1001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1005(context, evt)
	-- 判断是gadgetid 1001 option_id 175
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1005(context, evt)
	-- 初始化时间变量
	local challenge_time = 0
	local monster_count_sub = 15
	local monster_count1 = 9
	local monster_count2 = 6
	local wave1_count = 3
	local wave2_count = 3
	
	-- 判断玩家是否选择了时间挑战因子
	if 0 ~= ScriptLib.GetChannellerSlabLoopDungeonLimitTime(context) then
	        challenge_time = ScriptLib.GetChannellerSlabLoopDungeonLimitTime(context)
	end
	
	-- 判断玩家是否选择了刷怪因子
	if ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 315) == true then
	        wave1_count = 4
	end
	
	
	
	-- 创建编号为110180父挑战，indexID为101
	if 0 ~= ScriptLib.CreateFatherChallenge(context, 101, 2003015, 999999, {success = 1, fail = 1, fail_on_wipe=false}) then
	        return -1
	end
	
	
	-- 创建编号为201的子挑战：杀怪挑战
	if 0 ~= ScriptLib.AttachChildChallenge(context, 101, 201, 110181, {244013001,monster_count_sub},{},{success=0,fail=0}) then
	        return -1
	end
	
	
	-- 创建编号为202的子挑战：限时积分.如果没有选择不会开启
	
	if 0 ~= challenge_time then
	        ScriptLib.AttachChildChallenge(context, 101, 202, 110182, {challenge_time,244013001,monster_count_sub},{},{success=0,fail=0})
	else
	        ScriptLib.AddExtraGroupSuite(context, 244013001, 2)
	end
	
	-- 开始父挑战
	if 0 ~= ScriptLib.StartFatherChallenge(context, 101) then
	        return -1
	end
	
	
	
	--  创建怪物潮
	
	
	 ScriptLib.AutoPoolMonsterTide(context, 1, 244013001, {30016},0,{},{}, {total_count = monster_count1, min_count = wave1_count, max_count = wave1_count, tag = 2, fill_time= 0, fill_count = 0, is_ordered = true})
	
	 ScriptLib.AutoPoolMonsterTide(context, 2, 244013001, {30017},0,{},{}, {total_count = monster_count2, min_count = wave2_count, max_count = wave2_count, tag = 4, fill_time= 0, fill_count = 0, is_ordered = true})
	
	
	
	
	
	-- 将configid为 1004 的物件更改为状态 GadgetState.ChestFrozen
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.Default) then
	                return -1
	        end 
	
	-- 将configid为 1001 的物件更改为状态 GadgetState.ChestFrozen
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	                return -1
	        end 
	
	-- 将configid为 1001 的物件的option删除
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 244013001, 1001, 175) then
	                return -1
	        end 
	
	-- 卸载回血gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 244013001, EntityType.GADGET, 1020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	                return -1
	end
	
	-- 将本组内变量名为 "flag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "flag", 1, 244013002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1014(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 244013001 ；指定config：1001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 244013001, 1001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1015(context, evt)
	-- 将本组内变量名为 "flag" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "flag", 99, 244013002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244013001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1016(context, evt)
	-- 将本组内变量名为 "IS_IN_LIMIT_TIME" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_IN_LIMIT_TIME", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1017(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1018(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1019(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244013001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1021(context, evt)
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
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_1021(context, evt)
	-- 终止识别id为101的挑战，并判定失败
		ScriptLib.StopChallenge(context, 101, 0)
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

require "V2_3/EnergyDisk_Dungeon"