-- 基础信息
local base_info = {
	group_id = 243012005
}

-- Trigger变量
local defs = {
	group_1 = 243012005,
	challenge1 = 101,
	Region1 = 5006,
	challenge_father = 999,
	group_core = 243012003,
	galleryid = 7040,
	gadget_1 = 5001,
	PoolList = 21023,
	MonsterCount = 10,
	challenge_kill = 233,
	total_count = 10,
	min_count = 5,
	max_count = 5,
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
	{ config_id = 5001, gadget_id = 70360157, pos = { x = 18.164, y = 40.000, z = -3.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5002, gadget_id = 70900205, pos = { x = 25.197, y = 39.492, z = -3.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5006, shape = RegionShape.CUBIC, size = { x = 70.000, y = 40.000, z = 60.000 }, pos = { x = 17.700, y = 40.004, z = -5.500 } }
}

-- 触发器
triggers = {
	{ config_id = 1005003, name = "ANY_MONSTER_DIE_5003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_5003", trigger_count = 0 },
	{ config_id = 1005004, name = "SELECT_OPTION_5004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5004", action = "action_EVENT_SELECT_OPTION_5004", trigger_count = 0 },
	{ config_id = 1005005, name = "GADGET_CREATE_5005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5005", action = "action_EVENT_GADGET_CREATE_5005", trigger_count = 0 },
	{ config_id = 1005006, name = "LEAVE_REGION_5006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_5006", action = "action_EVENT_LEAVE_REGION_5006", trigger_count = 0 },
	{ config_id = 1005007, name = "VARIABLE_CHANGE_5007", event = EventType.EVENT_VARIABLE_CHANGE, source = "success", condition = "condition_EVENT_VARIABLE_CHANGE_5007", action = "action_EVENT_VARIABLE_CHANGE_5007" }
}

-- 点位
points = {
	{ config_id = 5008, pos = { x = 21.178, y = 40.001, z = 2.324 }, rot = { x = 0.000, y = 208.030, z = 0.000 } },
	{ config_id = 5009, pos = { x = 23.943, y = 40.000, z = -9.114 }, rot = { x = 0.000, y = 307.222, z = 0.000 } },
	{ config_id = 5010, pos = { x = 14.780, y = 40.027, z = -8.495 }, rot = { x = 0.000, y = 30.039, z = 0.000 } },
	{ config_id = 5011, pos = { x = 11.018, y = 39.998, z = -3.840 }, rot = { x = 0.000, y = 78.629, z = 0.000 } },
	{ config_id = 5012, pos = { x = 13.049, y = 40.001, z = 2.841 }, rot = { x = 0.000, y = 129.577, z = 0.000 } },
	{ config_id = 5013, pos = { x = 21.178, y = 40.001, z = 2.324 }, rot = { x = 0.000, y = 208.030, z = 0.000 } },
	{ config_id = 5014, pos = { x = 23.943, y = 40.000, z = -9.114 }, rot = { x = 0.000, y = 307.222, z = 0.000 } },
	{ config_id = 5015, pos = { x = 14.780, y = 40.027, z = -8.495 }, rot = { x = 0.000, y = 30.039, z = 0.000 } },
	{ config_id = 5016, pos = { x = 11.018, y = 39.998, z = -3.840 }, rot = { x = 0.000, y = 78.629, z = 0.000 } },
	{ config_id = 5017, pos = { x = 13.049, y = 40.001, z = 2.841 }, rot = { x = 0.000, y = 129.577, z = 0.000 } }
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
		gadgets = { 5001, 5002 },
		regions = { 5006 },
		triggers = { "ANY_MONSTER_DIE_5003", "SELECT_OPTION_5004", "GADGET_CREATE_5005", "LEAVE_REGION_5006", "VARIABLE_CHANGE_5007" },
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5003(context, evt)
	--发送怪物死亡通知
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddMistTrialChildChallengeScore", {1})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5004(context, evt)
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
function action_EVENT_SELECT_OPTION_5004(context, evt)
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
	
	-- 删除指定group： 243007001 ；指定config：1003；物件身上指定option：7；
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
function condition_EVENT_GADGET_CREATE_5005(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_5006(context, evt)
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
function action_EVENT_LEAVE_REGION_5006(context, evt)
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5007(context, evt)
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