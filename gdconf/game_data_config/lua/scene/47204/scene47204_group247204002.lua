-- 基础信息
local base_info = {
	group_id = 247204002
}

-- Trigger变量
local defs = {
	gadget_1 = 2001,
	group_1 = 247204002,
	challenge1 = 1,
	challenge_father = 999,
	group_core = 247204001,
	gadget_rune = 1018,
	MonsterCount = 9,
	challenge_kill = 233
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2006, monster_id = 21030601, pos = { x = 243.327, y = 157.290, z = 286.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2007, monster_id = 21011601, pos = { x = 240.781, y = 157.290, z = 286.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2008, monster_id = 21011601, pos = { x = 246.190, y = 157.290, z = 286.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2009, monster_id = 21010201, pos = { x = 237.841, y = 157.485, z = 286.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2010, monster_id = 21010201, pos = { x = 248.633, y = 157.485, z = 286.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2011, monster_id = 20011301, pos = { x = 248.908, y = 157.320, z = 289.964 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2013, monster_id = 21010201, pos = { x = 237.720, y = 157.320, z = 289.964 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2014, monster_id = 21010201, pos = { x = 248.908, y = 157.320, z = 292.925 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2015, monster_id = 21020701, pos = { x = 237.720, y = 157.320, z = 292.639 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70360001, pos = { x = 243.351, y = 158.345, z = 292.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002002, name = "GADGET_CREATE_2002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2002", action = "action_EVENT_GADGET_CREATE_2002", trigger_count = 0 },
	-- 开启挑战
	{ config_id = 1002003, name = "SELECT_OPTION_2003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2003", action = "action_EVENT_SELECT_OPTION_2003", trigger_count = 0 },
	{ config_id = 1002004, name = "ANY_MONSTER_DIE_2004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_2004", trigger_count = 0 },
	-- 挑战成功
	{ config_id = 1002005, name = "VARIABLE_CHANGE_2005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2005", action = "action_EVENT_VARIABLE_CHANGE_2005" }
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
		gadgets = { 2001 },
		regions = { },
		triggers = { "GADGET_CREATE_2002", "SELECT_OPTION_2003", "ANY_MONSTER_DIE_2004", "VARIABLE_CHANGE_2005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2006, 2007, 2008, 2009, 2010, 2011, 2013, 2014, 2015 },
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
function condition_EVENT_GADGET_CREATE_2002(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2003(context, evt)
	-- 判断是gadgetid 2001 option_id 7
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2003(context, evt)
	--向编号999的父挑战挂接子挑战
	
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"SetKillMonsterTarget" ,{defs.group_1, defs.MonsterCount})
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"StartSubChallengeKillMonster" ,{defs.challenge1, defs.challenge_kill})
	
	-- 刷怪
	ScriptLib.AutoMonsterTide(context, 1, defs.group_1, {2006,2007,2008,2009,2010,2011,2013,2014,2015}, 9, 5, 5)
	ScriptLib.PrintContextLog(context, "怪物潮开启!!!!!!!!")
	
	-- 切换符文状态
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_core, defs.gadget_rune, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	    return -1
	  end
	
	  -- 调用提示id为 43001009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	  if 0 ~= ScriptLib.ShowReminder(context, 43001009) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
	    return -1
	  end
	
	-- 删除指定group： 247204002 ；指定config：2001；物件身上指定option：7；
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2004(context, evt)
	--发送怪物死亡通知
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddMistTrialChildChallengeScore", {1})
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2005(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 99) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	    return -1
	  end
	
	
	ScriptLib.ChangeGroupVariableValueByGroup(context, "runes", 1, defs.group_core)
	
	 ScriptLib.PrintContextLog(context, "符文计数+1")
	
	-- 改变指定group组247204001中， configid为1018的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_core, defs.gadget_rune, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	    return -1
	  end
	
	 ScriptLib.PrintContextLog(context, "1号机关启动")
	
	--调用符文计数接口
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"AddMistTrialKeyProgress",{1,defs.challenge1})
	
	return 0
end