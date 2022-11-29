-- 基础信息
local base_info = {
	group_id = 243008011
}

-- Trigger变量
local defs = {
	group_1 = 243008011,
	challenge1 = 401,
	Region1 = 11012,
	challenge_father = 999,
	group_core = 243008005,
	galleryid = 7036,
	gadget_1 = 11006,
	PoolList = 21053,
	MonsterCount = 4,
	challenge_kill = 233,
	total_count = 4,
	min_count = 4,
	max_count = 4,
	tag = 0
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
	{ config_id = 11006, gadget_id = 70360157, pos = { x = 98.234, y = 40.000, z = -1.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11019, gadget_id = 70900205, pos = { x = 98.040, y = 34.315, z = 6.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11012, shape = RegionShape.CUBIC, size = { x = 50.000, y = 40.000, z = 45.000 }, pos = { x = 93.800, y = 40.000, z = -4.600 } }
}

-- 触发器
triggers = {
	{ config_id = 1011001, name = "VARIABLE_CHANGE_11001", event = EventType.EVENT_VARIABLE_CHANGE, source = "success", condition = "condition_EVENT_VARIABLE_CHANGE_11001", action = "action_EVENT_VARIABLE_CHANGE_11001", trigger_count = 0 },
	{ config_id = 1011002, name = "ANY_MONSTER_DIE_11002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_11002", trigger_count = 0 },
	{ config_id = 1011009, name = "SELECT_OPTION_11009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11009", action = "action_EVENT_SELECT_OPTION_11009", trigger_count = 0 },
	{ config_id = 1011010, name = "GADGET_CREATE_11010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11010", action = "action_EVENT_GADGET_CREATE_11010", trigger_count = 0 },
	{ config_id = 1011012, name = "LEAVE_REGION_11012", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_11012", action = "action_EVENT_LEAVE_REGION_11012", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 11003, pos = { x = 97.593, y = 40.049, z = 4.585 }, rot = { x = 0.000, y = 178.335, z = 0.000 } },
	{ config_id = 11004, pos = { x = 87.278, y = 40.008, z = 0.999 }, rot = { x = 0.000, y = 109.555, z = 0.000 } },
	{ config_id = 11005, pos = { x = 87.659, y = 40.002, z = -8.917 }, rot = { x = 0.000, y = 65.176, z = 0.000 } },
	{ config_id = 11007, pos = { x = 103.084, y = 40.042, z = -11.679 }, rot = { x = 0.000, y = 320.033, z = 0.000 } },
	{ config_id = 11008, pos = { x = 107.646, y = 40.049, z = -4.611 }, rot = { x = 0.000, y = 309.778, z = 0.000 } }
}

-- 变量
variables = {
	{ config_id = 1, name = "success", value = 0, no_refresh = false }
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
		gadgets = { 11006, 11019 },
		regions = { 11012 },
		triggers = { "VARIABLE_CHANGE_11001", "ANY_MONSTER_DIE_11002", "SELECT_OPTION_11009", "GADGET_CREATE_11010", "LEAVE_REGION_11012" },
		rand_weight = 0
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_VARIABLE_CHANGE_11001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11001(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 99) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	    return -1
	end
	
	--通知地脉异常升级
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "ModifyMistTrialAbility",{ 0 })
	
	ScriptLib.PrintContextLog(context, "地脉异常档位提升")
	
	-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001012) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
	    return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11002(context, evt)
	--发送怪物死亡通知
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddMistTrialChildChallengeScore", {1})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11009(context, evt)
	-- 判断gadgetID和Option
	if defs.gadget_1 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11009(context, evt)
	--向编号999的父挑战挂接子挑战
	
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"SetKillMonsterTarget" ,{defs.group_1, defs.MonsterCount})
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"StartSubChallengeKillMonster" ,{defs.challenge1, defs.challenge_kill})
	
	 ScriptLib.PrintContextLog(context, "子挑战挂接完成!!!!!!!!")
	
	--开启怪物潮
	
	ScriptLib.AutoPoolMonsterTide(context, 1, defs.group_1, {defs.PoolList}, 0, {}, {}, {total_count=defs.total_count, min_count=defs.min_count, max_count=defs.max_count, tag=defs.tag, fill_time=0, fill_count=0, is_ordered = true})
	
	 ScriptLib.PrintContextLog(context, "怪物潮开启!!!!!!!!")
	
	
	  -- 调用提示id为 43001009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	  if 0 ~= ScriptLib.ShowReminder(context, 43001009) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
	    return -1
	  end
	
	-- 删除指定group： 243008001 ；指定config：1003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	  return -1
	end
	
	 ScriptLib.PrintContextLog(context, "操作台切换到GearStart!!!!!!!!")
	
	-- 切换隐形操作台状态
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	    return -1
	  end 
	
	 ScriptLib.PrintContextLog(context, "操作台切换到GearStop!!!!!!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_11010(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_11012(context, evt)
	-- 判断是区域8011
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= defs.Region1 then
		return false
	end
	
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
	    return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_11012(context, evt)
	--离开区域 挑战失败
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "StopMistTrialChildChallenge", {defs.challenge1,0})
	
	--清理怪物潮
	ScriptLib.ClearPoolMonsterTide(context, defs.group_1, 1); 
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_1, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	        return -1
	end
	
	return 0
end