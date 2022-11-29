-- 基础信息
local base_info = {
	group_id = 244011001
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
	{ config_id = 1001, gadget_id = 70360010, pos = { x = -0.055, y = -0.225, z = 2.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 出生区域回能回血物件
	{ config_id = 1009, gadget_id = 44000006, pos = { x = -0.003, y = -0.102, z = 12.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 49001017, pos = { x = 12.500, y = -0.102, z = 8.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1011, gadget_id = 49001017, pos = { x = 0.000, y = -0.102, z = -13.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1012, gadget_id = 49001017, pos = { x = -12.500, y = -0.102, z = 8.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1013, gadget_id = 49001019, pos = { x = 12.500, y = -0.102, z = 8.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1014, gadget_id = 49001019, pos = { x = 0.000, y = -0.102, z = -13.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1015, gadget_id = 49001019, pos = { x = -12.500, y = -0.102, z = 8.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1016, gadget_id = 49001017, pos = { x = 8.000, y = -0.102, z = -8.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1017, gadget_id = 49001017, pos = { x = -8.000, y = -0.102, z = -8.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1018, gadget_id = 49001017, pos = { x = -8.000, y = -0.102, z = 7.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1019, gadget_id = 49001017, pos = { x = 8.000, y = -0.102, z = 7.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1020, gadget_id = 49001019, pos = { x = 8.000, y = -0.102, z = -8.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1021, gadget_id = 49001019, pos = { x = -8.000, y = -0.102, z = -8.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1022, gadget_id = 49001019, pos = { x = -8.000, y = -0.102, z = 7.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 1023, gadget_id = 49001019, pos = { x = 8.000, y = -0.102, z = 7.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
	{ config_id = 1024, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.561, y = 0.398, z = 0.512 } },
	{ config_id = 1025, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.561, y = 0.398, z = 0.512 } },
	{ config_id = 1026, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.561, y = 0.398, z = 0.512 } },
	{ config_id = 1027, shape = RegionShape.SPHERE, radius = 30, pos = { x = 0.561, y = 0.398, z = 0.512 } }
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "GADGET_CREATE_1002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1002", action = "action_EVENT_GADGET_CREATE_1002" },
	{ config_id = 1001003, name = "SELECT_OPTION_1003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1003", action = "action_EVENT_SELECT_OPTION_1003" },
	-- 限时子挑战成功，父挑战直接成功
	{ config_id = 1001004, name = "CHALLENGE_SUCCESS_1004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "202", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1004" },
	-- 限时子挑战失败，切到suite2继续判定父挑战
	{ config_id = 1001005, name = "CHALLENGE_FAIL_1005", event = EventType.EVENT_CHALLENGE_FAIL, source = "202", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1005" },
	-- 父挑战失败，地城重置
	{ config_id = 1001006, name = "CHALLENGE_FAIL_1006", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1006" },
	-- 全角色死亡，父挑战直接失败
	{ config_id = 1001007, name = "DUNGEON_ALL_AVATAR_DIE_1007", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1007", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_1007", trigger_count = 0 },
	-- 普通子挑战成功，父挑战直接成功
	{ config_id = 1001008, name = "CHALLENGE_SUCCESS_1008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "201", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1008" },
	{ config_id = 1001024, name = "ENTER_REGION_1024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1024" },
	{ config_id = 1001025, name = "ENTER_REGION_1025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1025" },
	{ config_id = 1001026, name = "ENTER_REGION_1026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1026" },
	{ config_id = 1001027, name = "ENTER_REGION_1027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_1027" }
}

-- 点位
points = {
	{ config_id = 1028, pos = { x = 0.031, y = -0.102, z = -7.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 }
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
		gadgets = { 1001, 1009 },
		regions = { },
		triggers = { "GADGET_CREATE_1002", "SELECT_OPTION_1003", "CHALLENGE_SUCCESS_1004", "CHALLENGE_FAIL_1005", "CHALLENGE_FAIL_1006", "DUNGEON_ALL_AVATAR_DIE_1007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_1008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 三个轰炸区域,
		monsters = { },
		gadgets = { 1010, 1011, 1012 },
		regions = { 1024 },
		triggers = { "ENTER_REGION_1024" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 三个轰炸区域-强化版,
		monsters = { },
		gadgets = { 1013, 1014, 1015 },
		regions = { 1025 },
		triggers = { "ENTER_REGION_1025" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 四个轰炸区域,
		monsters = { },
		gadgets = { 1016, 1017, 1018, 1019 },
		regions = { 1026 },
		triggers = { "ENTER_REGION_1026" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 四个轰炸区域-强化版,
		monsters = { },
		gadgets = { 1020, 1021, 1022, 1023 },
		regions = { 1027 },
		triggers = { "ENTER_REGION_1027" },
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
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 244011001, 1001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1003(context, evt)
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
function action_EVENT_SELECT_OPTION_1003(context, evt)
	-- 初始化变量
	local challenge_time = 0
	local gadget_number_up = 0
	local gadget_damage_up = 0
	local boss_affix_1 = 0
	local boss_affix_2 = 0
	
	
	--------------------------------------------------------------------------------
	-- 以下部分为接口读取玩家选择的因子，记录在对应变量中
	--------------------------------------------------------------------------------
	--判断玩家是否选择了时间因子
	if (0 or -1) ~= ScriptLib.GetChannellerSlabLoopDungeonLimitTime(context) then
	        challenge_time = ScriptLib.GetChannellerSlabLoopDungeonLimitTime(context)
	end
	
	-- 判断玩家是否选择轰炸范围提升，如果是的话改变变量
	if false ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 301) then
	        gadget_damage_up = 1
	end
	
	-- 判断玩家是否选择多一个轰炸区域，如果是的话改变变量
	if false ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 302) then
	        gadget_number_up = 1
	end
	
	-- 判断玩家是否选择恒长机关瘫痪时间减半词缀
	if false ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 303) then
	        boss_affix_1 = 1
	end
	
	-- 判断玩家是否选择恒长机关起死回生词缀
	if false ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 304) then
	        boss_affix_2 = 1
	end
	
	
	
	--------------------------------------------------------------------------------
	-- 以下部分为改操作台状态，删除option id，删除回血泉水之类
	--------------------------------------------------------------------------------
	
	-- 将操作台物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	        return -1
	    end 
	
	-- 删除操作台物件身上指定option
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 244011001, 1001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	    return -1
	end
	
	-- 卸载回血gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 244011001, EntityType.GADGET, 1009) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	        return -1
	end
	
	
	--------------------------------------------------------------------------------
	-- 以下部分为刷怪相关的操作
	--------------------------------------------------------------------------------
	
	
	-- 根据参数判断刷哪个轰炸区域的suite
	--
	if gadget_number_up == 0 then
	        if gadget_damage_up == 0 then
	            ScriptLib.AddExtraGroupSuite(context, 244011001, 3)
	        else
	            ScriptLib.AddExtraGroupSuite(context, 244011001, 4)
	        end
	    else
	        if gadget_damage_up == 0 then
	            ScriptLib.AddExtraGroupSuite(context, 244011001, 5)
	        else
	            ScriptLib.AddExtraGroupSuite(context, 244011001, 6)
	        end
	end
	--
	
	
	-- 根据参数判断boss挂什么词缀
	--
	if boss_affix_1 == 0 then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 开始刷怪了")
	        if boss_affix_2 == 0 then
	            ScriptLib.AutoPoolMonsterTide(context, 1, 244011001, {30003},0,{},{}, {total_count = 1, min_count = 1, max_count = 1, tag = 2, fill_time= 0, fill_count = 0})
	        else
	            ScriptLib.AutoPoolMonsterTide(context, 1, 244011001, {30003},0,{},{4157}, {total_count = 1, min_count = 1, max_count = 1, tag = 2, fill_time= 0, fill_count = 0})
	        end
	    else
	        if boss_affix_2 == 0 then
	            ScriptLib.AutoPoolMonsterTide(context, 1, 244011001, {30003},0,{},{4156}, {total_count = 1, min_count = 1, max_count = 1, tag = 2, fill_time= 0, fill_count = 0})
	        else
	            ScriptLib.AutoPoolMonsterTide(context, 1, 244011001, {30003},0,{},{4156,4157}, {total_count = 1, min_count = 1, max_count = 1, tag = 2, fill_time= 0, fill_count = 0})
	        end
	end
	--
	
	
	--------------------------------------------------------------------------------
	-- 以下部分开启挑战相关部分
	--------------------------------------------------------------------------------
	
	-- 创建编号为2003015父挑战，indexID为101
	if 0 ~= ScriptLib.CreateFatherChallenge(context, 101, 2003015, 999999, {success = 1, fail = 1, fail_on_wipe=false}) then
	        return -1
	end
	
	
	-- 创建编号为201的普通子挑战
	if 0 ~= ScriptLib.AttachChildChallenge(context, 101, 201, 110181, {244011001,1},{},{success=0,fail=0}) then
	        return -1
	end
	
	
	-- 创建编号为202的限时子挑战，如果没有选择不会开启，并且直接用suite2的trigger判断
	if 0 ~= challenge_time then
	        ScriptLib.AttachChildChallenge(context, 101, 202, 110182, {challenge_time,244011001,1},{},{success=0,fail=0})
	    else
	        ScriptLib.AddExtraGroupSuite(context, 244011001, 2)
	end
	
	-- 开始父挑战
	if 0 ~= ScriptLib.StartFatherChallenge(context, 101) then
	        return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1004(context, evt)
	-- 将本组内变量名为 "IS_IN_LIMIT_TIME" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_IN_LIMIT_TIME", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244011001, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244011001, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244011001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_1007(context, evt)
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
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_1007(context, evt)
	-- 终止识别id为101的挑战，并判定失败
		ScriptLib.StopChallenge(context, 101, 0)
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1008(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244011001, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_1024(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1011, 1, {1,2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1012, 1, {2,3,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1010, 1, {3,1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_1025(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1014, 1, {1,2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1015, 1, {2,3,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1013, 1, {3,1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_1026(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1017, 2, {1,2,3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1018, 2, {2,3,4,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1019, 2, {3,4,1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1016, 2, {4,1,2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_1027(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1021, 2, {1,2,3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1022, 2, {2,3,4,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1023, 2, {3,4,1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 1020, 2, {4,1,2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end