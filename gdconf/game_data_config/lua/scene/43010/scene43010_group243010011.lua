-- 基础信息
local base_info = {
	group_id = 243010011
}

-- Trigger变量
local defs = {
	gadget_1 = 11001,
	group_1 = 243010011,
	Region1 = 11006,
	challenge1 = 2,
	challenge_father = 999,
	gadget_rune = 3004,
	group_core = 243010003,
	MonsterCount = 5,
	PoolList = 21041,
	challenge_kill = 233,
	total_count = 5,
	min_count = 3,
	max_count = 3,
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
	{ config_id = 11001, gadget_id = 70360001, pos = { x = -4.031, y = 41.026, z = -76.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11006, shape = RegionShape.CUBIC, size = { x = 80.000, y = 40.000, z = 35.000 }, pos = { x = -3.068, y = 40.551, z = -77.437 } }
}

-- 触发器
triggers = {
	{ config_id = 1011002, name = "VARIABLE_CHANGE_11002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11002", action = "action_EVENT_VARIABLE_CHANGE_11002", trigger_count = 0 },
	{ config_id = 1011003, name = "ANY_MONSTER_DIE_11003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_11003", trigger_count = 0 },
	{ config_id = 1011004, name = "GADGET_CREATE_11004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11004", action = "action_EVENT_GADGET_CREATE_11004" },
	{ config_id = 1011005, name = "SELECT_OPTION_11005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11005", action = "action_EVENT_SELECT_OPTION_11005", trigger_count = 0 },
	{ config_id = 1011006, name = "LEAVE_REGION_11006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_11006", action = "action_EVENT_LEAVE_REGION_11006", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 11007, pos = { x = 4.398, y = 40.049, z = -81.292 }, rot = { x = 0.000, y = 313.018, z = 0.000 } },
	{ config_id = 11008, pos = { x = 8.040, y = 40.000, z = -75.532 }, rot = { x = 0.000, y = 243.269, z = 0.000 } },
	{ config_id = 11009, pos = { x = 2.207, y = 40.072, z = -70.645 }, rot = { x = 0.000, y = 213.064, z = 0.000 } },
	{ config_id = 11010, pos = { x = -10.029, y = 40.004, z = -71.782 }, rot = { x = 0.000, y = 123.863, z = 0.000 } },
	{ config_id = 11011, pos = { x = -11.352, y = 40.002, z = -80.729 }, rot = { x = 0.000, y = 60.213, z = 0.000 } }
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
		gadgets = { 11001 },
		regions = { 11006 },
		triggers = { "VARIABLE_CHANGE_11002", "ANY_MONSTER_DIE_11003", "GADGET_CREATE_11004", "SELECT_OPTION_11005", "LEAVE_REGION_11006" },
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
function condition_EVENT_VARIABLE_CHANGE_11002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11002(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_11003(context, evt)
	--发送怪物死亡通知
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddMistTrialChildChallengeScore", {1})
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_11004(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11005(context, evt)
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
function action_EVENT_SELECT_OPTION_11005(context, evt)
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
function condition_EVENT_LEAVE_REGION_11006(context, evt)
	-- 判断是区域
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
function action_EVENT_LEAVE_REGION_11006(context, evt)
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