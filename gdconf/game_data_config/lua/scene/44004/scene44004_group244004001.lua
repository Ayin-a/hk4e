-- 基础信息
local base_info = {
	group_id = 244004001
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
	{ config_id = 1001, gadget_id = 70360010, pos = { x = 0.141, y = 0.028, z = 0.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350077, pos = { x = 0.078, y = 0.028, z = -24.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350077, pos = { x = 0.128, y = 0.041, z = 24.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1020, gadget_id = 44000006, pos = { x = -0.004, y = 0.028, z = 16.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "GADGET_CREATE_1002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1002", action = "action_EVENT_GADGET_CREATE_1002" },
	{ config_id = 1001005, name = "SELECT_OPTION_1005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1005", action = "action_EVENT_SELECT_OPTION_1005" },
	{ config_id = 1001012, name = "POOL_MONSTER_TIDE_DIE_1012", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_1012", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_1012" },
	{ config_id = 1001013, name = "POOL_MONSTER_TIDE_DIE_1013", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_1013", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_1013" },
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
	{ config_id = 1006, pos = { x = 9.893, y = 0.028, z = -9.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 1007, pos = { x = -9.624, y = 0.028, z = -9.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 1008, pos = { x = 0.064, y = 0.028, z = -14.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 1009, pos = { x = 0.136, y = 0.028, z = 14.622 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 1010, pos = { x = -9.673, y = 0.028, z = 12.394 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 1011, pos = { x = 9.944, y = 0.028, z = 12.329 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_IN_LIMIT_TIME", value = 0, no_refresh = false }
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
		gadgets = { 1001, 1003, 1004, 1020 },
		regions = { },
		triggers = { "GADGET_CREATE_1002", "SELECT_OPTION_1005", "POOL_MONSTER_TIDE_DIE_1012", "POOL_MONSTER_TIDE_DIE_1013", "CHALLENGE_SUCCESS_1014", "CHALLENGE_FAIL_1015", "CHALLENGE_SUCCESS_1016", "CHALLENGE_SUCCESS_1017", "CHALLENGE_FAIL_1019", "DUNGEON_ALL_AVATAR_DIE_1021" },
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
	
	-- 判断玩家是否选择了时间挑战因子
	if 0 ~= ScriptLib.GetChannellerSlabLoopDungeonLimitTime(context) then
		challenge_time = ScriptLib.GetChannellerSlabLoopDungeonLimitTime(context)
	end
	
	
	
	-- 创建编号为110180父挑战，indexID为101
	if 0 ~= ScriptLib.CreateFatherChallenge(context, 101, 110180, 999999, {success = 1, fail = 1, fail_on_wipe=false}) then
		return -1
	end
	
	
	-- 创建编号为201的子挑战：杀怪挑战
	if 0 ~= ScriptLib.AttachChildChallenge(context, 101, 201, 110181, {244004001,6},{},{success=0,fail=0}) then
		return -1
	end
	
	
	-- 创建编号为202的子挑战：限时积分.如果没有选择不会开启
	
	if 0 ~= challenge_time then
		ScriptLib.AttachChildChallenge(context, 101, 202, 110182, {challenge_time,244004001,6},{},{success=0,fail=0})
	else
		ScriptLib.AddExtraGroupSuite(context, 244004001, 2)
	end
	
	-- 开始父挑战
	if 0 ~= ScriptLib.StartFatherChallenge(context, 101) then
		return -1
	end
	
	
	
	
	--  在Group244004001从怪物潮池{13001}中随机创建一个TideIndex为1的怪物潮，创建怪物总数为3，场上怪物最少3只，最多3只, pointTag 为 2  每0尝试填充一次，填充数量为0
	
	if false ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 121) then 
		ScriptLib.AutoPoolMonsterTide(context, 1, 244004001, {13004},0,{},{}, {total_count = 2, min_count = 2, max_count = 2, tag = 2, fill_time= 0, fill_count = 0})
	else
		ScriptLib.AutoPoolMonsterTide(context, 1, 244004001, {13001},0,{},{}, {total_count = 2, min_count = 2, max_count = 2, tag = 2, fill_time= 0, fill_count = 0})
	end
	
	
	
	-- 将configid为 1004 的物件更改为状态 GadgetState.ChestFrozen
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.Default) then
			return -1
		end 
	
	-- 将configid为 1001 的物件更改为状态 GadgetState.ChestFrozen
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
			return -1
		end 
	
	-- 将configid为 1001 的物件的option删除
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 244004001, 1001, 175) then
			return -1
		end 
	
	-- 卸载回血gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 244004001, EntityType.GADGET, 1020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_POOL_MONSTER_TIDE_DIE_1012(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_POOL_MONSTER_TIDE_DIE_1012(context, evt)
	--  在Group244004001从怪物潮池{13002}中随机创建一个TideIndex为2的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只, pointTag 为 4  每0尝试填充一次，填充数量为0
	
	if false ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 122) then 
		ScriptLib.AutoPoolMonsterTide(context, 2, 244004001, {13005},0,{},{}, {total_count = 2, min_count = 2, max_count = 2, tag = 4, fill_time= 0, fill_count = 0})
	else
		ScriptLib.AutoPoolMonsterTide(context, 2, 244004001, {13002},0,{},{}, {total_count = 2, min_count = 2, max_count = 2, tag = 4, fill_time= 0, fill_count = 0})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_POOL_MONSTER_TIDE_DIE_1013(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_POOL_MONSTER_TIDE_DIE_1013(context, evt)
	
	--  在Group244004001从怪物潮池{13003}中随机创建一个TideIndex为3的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只, pointTag 为 4  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 3, 244004001, {13003},0,{},{}, {total_count = 2, min_count = 2, max_count = 2, tag = 4, fill_time= 0, fill_count = 0}) then
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
	
	-- 删除指定group： 244004001 ；指定config：1001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 244004001, 1001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244004001, suite = 1 }) then
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
	    ScriptLib.AddExtraGroupSuite(context, 244004001, 2)
	
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