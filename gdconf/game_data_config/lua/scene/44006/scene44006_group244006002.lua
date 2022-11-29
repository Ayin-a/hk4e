-- 基础信息
local base_info = {
	group_id = 244006002
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
	{ config_id = 2001, gadget_id = 70360010, pos = { x = -0.021, y = 0.047, z = -0.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 44000006, pos = { x = -0.271, y = 0.046, z = 13.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002002, name = "GADGET_CREATE_2002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2002", action = "action_EVENT_GADGET_CREATE_2002" },
	-- 进入第一波
	{ config_id = 1002003, name = "SELECT_OPTION_2003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2003", action = "action_EVENT_SELECT_OPTION_2003" },
	-- 开始第二波招怪
	{ config_id = 1002012, name = "VARIABLE_CHANGE_2012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2012", action = "action_EVENT_VARIABLE_CHANGE_2012" },
	-- 开始第三波招怪
	{ config_id = 1002013, name = "VARIABLE_CHANGE_2013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2013", action = "action_EVENT_VARIABLE_CHANGE_2013" },
	{ config_id = 1002014, name = "POOL_MONSTER_TIDE_DIE_2014", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_2014", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_2014" },
	{ config_id = 1002015, name = "POOL_MONSTER_TIDE_DIE_2015", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_2015", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_2015" },
	{ config_id = 1002016, name = "POOL_MONSTER_TIDE_DIE_2016", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_2016", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_2016" },
	{ config_id = 1002017, name = "POOL_MONSTER_TIDE_DIE_2017", event = EventType.EVENT_POOL_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_POOL_MONSTER_TIDE_DIE_2017", action = "action_EVENT_POOL_MONSTER_TIDE_DIE_2017" },
	{ config_id = 1002018, name = "CHALLENGE_SUCCESS_2018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "201", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2018" },
	-- 开始第二波招怪
	{ config_id = 1002019, name = "VARIABLE_CHANGE_2019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2019", action = "action_EVENT_VARIABLE_CHANGE_2019" },
	-- 开始第三波招怪
	{ config_id = 1002020, name = "VARIABLE_CHANGE_2020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2020", action = "action_EVENT_VARIABLE_CHANGE_2020" },
	{ config_id = 1002021, name = "CHALLENGE_FAIL_2021", event = EventType.EVENT_CHALLENGE_FAIL, source = "202", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2021" },
	{ config_id = 1002022, name = "CHALLENGE_SUCCESS_2022", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "202", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2022" },
	{ config_id = 1002023, name = "DUNGEON_ALL_AVATAR_DIE_2023", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_EVENT_DUNGEON_ALL_AVATAR_DIE_2023", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_2023", trigger_count = 0 },
	{ config_id = 1002024, name = "CHALLENGE_FAIL_2024", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2024" },
	{ config_id = 1002025, name = "CHALLENGE_FAIL_2025", event = EventType.EVENT_CHALLENGE_FAIL, source = "201", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2025" },
	{ config_id = 1002026, name = "CHALLENGE_FAIL_2026", event = EventType.EVENT_CHALLENGE_FAIL, source = "201", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2026" },
	{ config_id = 1002027, name = "CHALLENGE_FAIL_2027", event = EventType.EVENT_CHALLENGE_FAIL, source = "201", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2027" },
	{ config_id = 1002028, name = "CHALLENGE_FAIL_2028", event = EventType.EVENT_CHALLENGE_FAIL, source = "201", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2028" }
}

-- 点位
points = {
	-- 外围点
	{ config_id = 2004, pos = { x = -9.574, y = 0.046, z = -14.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- 外围点
	{ config_id = 2005, pos = { x = 0.061, y = 0.046, z = -16.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- 外围点
	{ config_id = 2007, pos = { x = 9.847, y = 0.046, z = -14.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- 内部点
	{ config_id = 2008, pos = { x = -4.148, y = 0.047, z = -6.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	-- 内部点
	{ config_id = 2009, pos = { x = -7.136, y = 0.047, z = -2.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	-- 内部点
	{ config_id = 2010, pos = { x = 4.451, y = 0.047, z = -6.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	-- 内部点
	{ config_id = 2011, pos = { x = 6.908, y = 0.047, z = -2.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ROUND", value = 0, no_refresh = false },
	{ config_id = 2, name = "IS_IN_LIMIT_TIME", value = 0, no_refresh = false },
	{ config_id = 3, name = "FIRST_WAVE_MONSTER_AFFIX", value = 0, no_refresh = false },
	{ config_id = 4, name = "SECOND_WAVE_MONSTER_AFFIX", value = 0, no_refresh = false },
	{ config_id = 5, name = "THIRD_WAVE_MONSTER_AFFIX", value = 0, no_refresh = false }
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
		gadgets = { 2001, 2006 },
		regions = { },
		triggers = { "GADGET_CREATE_2002", "SELECT_OPTION_2003", "VARIABLE_CHANGE_2012", "VARIABLE_CHANGE_2013", "POOL_MONSTER_TIDE_DIE_2014", "POOL_MONSTER_TIDE_DIE_2015", "POOL_MONSTER_TIDE_DIE_2016", "POOL_MONSTER_TIDE_DIE_2017", "VARIABLE_CHANGE_2019", "VARIABLE_CHANGE_2020", "CHALLENGE_FAIL_2021", "CHALLENGE_SUCCESS_2022", "DUNGEON_ALL_AVATAR_DIE_2023", "CHALLENGE_FAIL_2024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_2002(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 244006002, 2001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2003(context, evt)
	-- 判断是gadgetid 2001 option_id 175
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2003(context, evt)
	-- 初始化时间变量
	local challenge_time = 0
	
	-- 初始化雷圈变量
	local thunder_energy_reduction = 0
	local thunder_second_stage = 0
	
	-- 初始化怪物词缀变量
	local monster_affix_first = 0
	local monster_affix_second = 0
	local monster_affix_third = 0
	
	
	-------------------------------------------------------------------------------
	-- 判断选择时间因子
	--[[
	for i = 1,3 do
	    if 0 ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, i) then
	        challenge_time = ScriptLib.GetChannellerSlabLoopDungeonLimitTime(context)
	    end
	end
	]]--
	
	--------------------------------------------------------------------------------
	if (0 or -1) ~= ScriptLib.GetChannellerSlabLoopDungeonLimitTime(context) then
	        challenge_time = ScriptLib.GetChannellerSlabLoopDungeonLimitTime(context)
	end
	
	--------------------------------------------------------------------------------
	-- 判断是否选择雷圈外损失能量
	if false ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 101) then
	        thunder_energy_reduction = 1
	end
	
	-- 判断是否选择雷圈从第二个阶段开始
	if false ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 102) then
	        thunder_second_stage = 1
	end
	
	
	------------------------------------------------------------
	-- 判断怪物词缀变量1
	if false ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 103) then
	        monster_affix_first = 1
	end
	
	-- 判断怪物词缀变量2
	if false ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 104) then
	        monster_affix_second = 1
	end
	
	-- 判断怪物词缀变量3
	if false ~= ScriptLib.IsChannellerSlabLoopDungeonConditionSelected(context, 105) then
	        monster_affix_third = 1
	end
	
	--  在Group244006002从怪物潮池{13021}中随机创建一个TideIndex为1的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只, pointTag 为 2  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 1, 244006002, {13021},0,{},{}, {total_count = 2, min_count = 2, max_count = 2, tag = 2, fill_time= 0, fill_count = 0}) then
	        return -1
	end
	
	
	--  在Group244006002从怪物潮池{13022}中随机创建一个TideIndex为2的怪物潮，创建怪物总数为4，场上怪物最少4只，最多4只, pointTag 为 4  每0尝试填充一次，填充数量为0
	if 0 ~= monster_affix_first then
	        ScriptLib.AutoPoolMonsterTide(context, 2, 244006002, {13027},0,{},{}, {total_count = 4, min_count = 4, max_count = 4, tag = 4, fill_time= 0, fill_count = 0})
	else
	        ScriptLib.AutoPoolMonsterTide(context, 2, 244006002, {13022},0,{},{}, {total_count = 4, min_count = 4, max_count = 4, tag = 4, fill_time= 0, fill_count = 0})
	end
	
	
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	                return -1
	end 
	
	-- 删除指定group： 244006002 ；指定config：2001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 244006002, 2001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	        return -1
	end
	
	-- 将本组内变量名为 "round" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ROUND", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	----------------------------------------------------------------------------------------------------------------------------
	-- 创建编号为110180父挑战，indexID为101
	if 0 ~= ScriptLib.CreateFatherChallenge(context, 101, 110180, 999999, {success = 1, fail = 1, fail_on_wipe=false}) then
	        return -1
	end
	
	
	-- 创建编号为201的子挑战：杀怪挑战，消灭16个怪
	if 0 ~= ScriptLib.AttachChildChallenge(context, 101, 201, 110181, {244006002,16},{},{success=0,fail=0}) then
	        return -1
	end
	
	
	-- 创建编号为202的子挑战：限时积分.如果没有选择不会开启，会直接加载suite2的内容
	if 0 ~= challenge_time then
	        ScriptLib.AttachChildChallenge(context, 101, 202, 110182, {challenge_time,244006002,16},{},{success=0,fail=0})
	    else
	        ScriptLib.AddExtraGroupSuite(context, 244006002, 2)
	end
	
	-- 开始父挑战
	if 0 ~= ScriptLib.StartFatherChallenge(context, 101) then
	        return -1
	end
	
	
	-----------------------------------------------------------------------------------------------------------------
	-- 将第2波怪参数改为1
	if 0 ~= monster_affix_second then
	    ScriptLib.SetGroupVariableValue(context, "SECOND_WAVE_MONSTER_AFFIX", 1)
	end
	
	-- 将第3波怪参数改为1
	if 0 ~= monster_affix_third then
	    ScriptLib.SetGroupVariableValue(context, "THIRD_WAVE_MONSTER_AFFIX", 1)
	end
	-----------------------------------------------------------------------------------------------------------------
	
	
	--------------------------------------------------------------------------------------
	-- 激活对应的雷圈group
	if 0 ~= thunder_second_stage then
	        if 0 ~= thunder_energy_reduction then
	                ScriptLib.AddExtraGroupSuite(context, 244006007, 2)
	        else
	                ScriptLib.AddExtraGroupSuite(context, 244006006, 2)
	        end
	else
	        if 0 ~= thunder_energy_reduction then
	                ScriptLib.AddExtraGroupSuite(context, 244006005, 2)
	        else
	                ScriptLib.AddExtraGroupSuite(context, 244006004, 2)
	        end
	end
	-------------------------------------------------------------------------------------
	
	-- 卸载回血gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 244006002, EntityType.GADGET, 2006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	        return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ROUND"为2
	if ScriptLib.GetGroupVariableValue(context, "ROUND") ~= 2 then
			return false
	end
	
	-- 判断变量"SECOND_WAVE_MONSTER_AFFIX"为0
	if ScriptLib.GetGroupVariableValue(context, "SECOND_WAVE_MONSTER_AFFIX") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2012(context, evt)
	
	--  在Group244006002从怪物潮池{13023}中随机创建一个TideIndex为3的怪物潮，创建怪物总数为3，场上怪物最少3只，最多3只, pointTag 为 2  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 3, 244006002, {13023},0,{},{}, {total_count = 3, min_count = 3, max_count = 3, tag = 2, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	
	--  在Group244006002从怪物潮池{13024}中随机创建一个TideIndex为4的怪物潮，创建怪物总数为4，场上怪物最少4只，最多4只, pointTag 为 4  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 4, 244006002, {13024},0,{},{}, {total_count = 4, min_count = 4, max_count = 4, tag = 4, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 2, 244006004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 2, 244006005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ROUND"为4
	if ScriptLib.GetGroupVariableValue(context, "ROUND") ~= 4 then
			return false
	end
	
	-- 判断变量"THIRD_WAVE_MONSTER_AFFIX"为0
	if ScriptLib.GetGroupVariableValue(context, "THIRD_WAVE_MONSTER_AFFIX") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2013(context, evt)
	
	--  在Group244006002从怪物潮池{13025}中随机创建一个TideIndex为5的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只, pointTag 为 2  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 5, 244006002, {13025},0,{},{}, {total_count = 2, min_count = 2, max_count = 2, tag = 2, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	
	--  在Group244006002从怪物潮池{13026}中随机创建一个TideIndex为6的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只, pointTag 为 4  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 6, 244006002, {13026},0,{},{}, {total_count = 1, min_count = 1, max_count = 1, tag = 4, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 4, 244006004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 4, 244006005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 4, 244006006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 4, 244006007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_POOL_MONSTER_TIDE_DIE_2014(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_POOL_MONSTER_TIDE_DIE_2014(context, evt)
	-- 针对当前group内变量名为 "ROUND" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ROUND", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_POOL_MONSTER_TIDE_DIE_2015(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_POOL_MONSTER_TIDE_DIE_2015(context, evt)
	-- 针对当前group内变量名为 "ROUND" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ROUND", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_POOL_MONSTER_TIDE_DIE_2016(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_POOL_MONSTER_TIDE_DIE_2016(context, evt)
	-- 针对当前group内变量名为 "ROUND" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ROUND", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_POOL_MONSTER_TIDE_DIE_2017(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_POOL_MONSTER_TIDE_DIE_2017(context, evt)
	-- 针对当前group内变量名为 "ROUND" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ROUND", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2018(context, evt)
	-- 将本组内变量名为 "ROUND" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ROUND", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 6, 244006004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 6, 244006005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 6, 244006006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 6, 244006007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ROUND"为2
	if ScriptLib.GetGroupVariableValue(context, "ROUND") ~= 2 then
			return false
	end
	
	-- 判断变量"SECOND_WAVE_MONSTER_AFFIX"为1
	if ScriptLib.GetGroupVariableValue(context, "SECOND_WAVE_MONSTER_AFFIX") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2019(context, evt)
	
	--  在Group244006002从怪物潮池{13023}中随机创建一个TideIndex为3的怪物潮，创建怪物总数为3，场上怪物最少3只，最多3只, pointTag 为 2  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 3, 244006002, {13023},0,{},{}, {total_count = 3, min_count = 3, max_count = 3, tag = 2, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	
	--  在Group244006002从怪物潮池{13028}中随机创建一个TideIndex为4的怪物潮，创建怪物总数为4，场上怪物最少4只，最多4只, pointTag 为 4  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 4, 244006002, {13028},0,{},{}, {total_count = 4, min_count = 4, max_count = 4, tag = 4, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 2, 244006004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 2, 244006005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ROUND"为4
	if ScriptLib.GetGroupVariableValue(context, "ROUND") ~= 4 then
			return false
	end
	
	-- 判断变量"THIRD_WAVE_MONSTER_AFFIX"为1
	if ScriptLib.GetGroupVariableValue(context, "THIRD_WAVE_MONSTER_AFFIX") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2020(context, evt)
	
	--  在Group244006002从怪物潮池{13025}中随机创建一个TideIndex为5的怪物潮，创建怪物总数为2，场上怪物最少2只，最多2只, pointTag 为 2  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 5, 244006002, {13025},0,{},{}, {total_count = 2, min_count = 2, max_count = 2, tag = 2, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	
	--  在Group244006002从怪物潮池{13029}中随机创建一个TideIndex为6的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只, pointTag 为 4  每0尝试填充一次，填充数量为0
	if 0 ~= ScriptLib.AutoPoolMonsterTide(context, 6, 244006002, {13029},0,{},{}, {total_count = 1, min_count = 1, max_count = 1, tag = 4, fill_time= 0, fill_count = 0}) then
		return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 4, 244006004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 4, 244006005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 4, 244006006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 4, 244006007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2021(context, evt)
	-- 将本组内变量名为 "IS_IN_LIMIT_TIME" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_IN_LIMIT_TIME", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244006002, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2022(context, evt)
	-- 将本组内变量名为 "IS_IN_LIMIT_TIME" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_IN_LIMIT_TIME", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ROUND", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 6, 244006004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 6, 244006005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 6, 244006006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ROUND" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "ROUND", 6, 244006007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_ALL_AVATAR_DIE_2023(context, evt)
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
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_2023(context, evt)
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
function action_EVENT_CHALLENGE_FAIL_2024(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244006004, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244006004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244006005, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244006005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244006006, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244006006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244006007, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244006007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244006002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2025(context, evt)
	-- 改变指定group组244006004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244006004, 4001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244006004, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244006004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2026(context, evt)
	-- 改变指定group组244006005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244006005, 5001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244006005, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244006005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2027(context, evt)
	-- 改变指定group组244006006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244006006, 6001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244006006, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244006006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2028(context, evt)
	-- 改变指定group组244006007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244006007, 7001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244006007, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244006007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end