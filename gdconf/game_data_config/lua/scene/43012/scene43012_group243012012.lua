-- 基础信息
local base_info = {
	group_id = 243012012
}

-- Trigger变量
local defs = {
	gadget_1 = 12001,
	group_1 = 243012012,
	Region1 = 12006,
	challenge1 = 3,
	challenge_father = 999,
	gadget_rune = 3004,
	group_core = 243012003,
	MonsterCount = 6,
	PoolList = 21022,
	challenge_kill = 233,
	total_count = 6,
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
	{ config_id = 12001, gadget_id = 70360001, pos = { x = 97.172, y = 40.000, z = -2.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 12006, shape = RegionShape.CUBIC, size = { x = 50.000, y = 40.000, z = 45.000 }, pos = { x = 93.800, y = 40.000, z = -4.600 } }
}

-- 触发器
triggers = {
	{ config_id = 1012002, name = "VARIABLE_CHANGE_12002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_12002", action = "action_EVENT_VARIABLE_CHANGE_12002", trigger_count = 0 },
	{ config_id = 1012003, name = "ANY_MONSTER_DIE_12003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_12003", trigger_count = 0 },
	{ config_id = 1012004, name = "GADGET_CREATE_12004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12004", action = "action_EVENT_GADGET_CREATE_12004" },
	{ config_id = 1012005, name = "SELECT_OPTION_12005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12005", action = "action_EVENT_SELECT_OPTION_12005", trigger_count = 0 },
	{ config_id = 1012006, name = "LEAVE_REGION_12006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_12006", action = "action_EVENT_LEAVE_REGION_12006", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 12007, pos = { x = 101.677, y = 39.998, z = -6.340 }, rot = { x = 0.000, y = 326.697, z = 0.000 } },
	{ config_id = 12008, pos = { x = 93.669, y = 40.002, z = -7.062 }, rot = { x = 0.000, y = 31.625, z = 0.000 } },
	{ config_id = 12009, pos = { x = 92.201, y = 39.994, z = 1.527 }, rot = { x = 0.000, y = 116.679, z = 0.000 } },
	{ config_id = 12010, pos = { x = 100.570, y = 40.001, z = 4.039 }, rot = { x = 0.000, y = 212.681, z = 0.000 } },
	{ config_id = 12011, pos = { x = 103.363, y = 40.049, z = -1.268 }, rot = { x = 0.000, y = 265.064, z = 0.000 } },
	{ config_id = 12012, pos = { x = 101.677, y = 39.998, z = -6.340 }, rot = { x = 0.000, y = 326.697, z = 0.000 } },
	{ config_id = 12013, pos = { x = 93.669, y = 40.002, z = -7.062 }, rot = { x = 0.000, y = 31.625, z = 0.000 } },
	{ config_id = 12014, pos = { x = 92.201, y = 39.994, z = 1.527 }, rot = { x = 0.000, y = 116.679, z = 0.000 } },
	{ config_id = 12015, pos = { x = 100.570, y = 40.001, z = 4.039 }, rot = { x = 0.000, y = 212.681, z = 0.000 } },
	{ config_id = 12016, pos = { x = 103.363, y = 40.049, z = -1.268 }, rot = { x = 0.000, y = 265.064, z = 0.000 } }
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
		gadgets = { 12001 },
		regions = { 12006 },
		triggers = { "VARIABLE_CHANGE_12002", "ANY_MONSTER_DIE_12003", "GADGET_CREATE_12004", "SELECT_OPTION_12005", "LEAVE_REGION_12006" },
		rand_weight = 100
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
function condition_EVENT_VARIABLE_CHANGE_12002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_12002(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 99) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	    return -1
	  end
	
	
	ScriptLib.ChangeGroupVariableValueByGroup(context, "runes", 1, defs.group_core)
	
	 ScriptLib.PrintContextLog(context, "符文计数+1")
	
	-- 改变指定group组243007008中， configid为5000的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_core, defs.gadget_rune, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	    return -1
	  end
	
	 ScriptLib.PrintContextLog(context, "1号符文射线!!!!!!!!")
	
	--调用符文计数接口
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"AddMistTrialKeyProgress",{1})
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12003(context, evt)
	--发送怪物死亡通知
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddMistTrialChildChallengeScore", {1})
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_12004(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12005(context, evt)
	-- 判断是gadgetid 1003 option_id 177
	if defs.gadget_1 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12005(context, evt)
	--向编号999的父挑战挂接子挑战
	
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"SetKillMonsterTarget" ,{defs.group_1, defs.MonsterCount})
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"StartSubChallengeKillMonster" ,{defs.challenge1, defs.challenge_kill})
	
	--开启怪物潮
	
	ScriptLib.AutoPoolMonsterTide(context, 1, defs.group_1, {defs.PoolList}, 0, {}, {}, {total_count=defs.total_count, min_count=defs.min_count, max_count=defs.max_count, tag=defs.tag, fill_time=0, fill_count=0, is_ordered = true})
	
	-- 切换符文状态
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_core, defs.gadget_rune, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	    return -1
	  end
	
	 ScriptLib.PrintContextLog(context, "1号符文点亮!!!!!!!!")
	
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
	
	-- 切换隐形操作台状态
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	    return -1
	  end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_12006(context, evt)
	-- 判断区域
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
function action_EVENT_LEAVE_REGION_12006(context, evt)
	--离开区域 挑战失败
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "StopMistTrialChildChallenge", {defs.challenge1,0})
	
	--清理怪物潮
	ScriptLib.ClearPoolMonsterTide(context, defs.group_1, 1); 
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_1, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
	        return -1
	end
	
	-- 重置符文
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_core, defs.gadget_rune, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	        return -1
	end
	
	
	
	return 0
end