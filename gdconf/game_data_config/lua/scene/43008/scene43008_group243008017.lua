-- 基础信息
local base_info = {
	group_id = 243008017
}

-- Trigger变量
local defs = {
	gadget_1 = 17006,
	group_1 = 243008017,
	Region1 = 17011,
	challenge1 = 3,
	challenge_father = 999,
	gadget_rune = 5019,
	group_core = 243008005,
	MonsterCount = 8,
	PoolList = 21049,
	challenge_kill = 233,
	total_count = 8,
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
	{ config_id = 17006, gadget_id = 70360001, pos = { x = 18.500, y = 41.024, z = -2.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 17011, shape = RegionShape.CUBIC, size = { x = 70.000, y = 40.000, z = 60.000 }, pos = { x = 17.700, y = 40.000, z = -5.500 } }
}

-- 触发器
triggers = {
	{ config_id = 1017001, name = "VARIABLE_CHANGE_17001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_17001", action = "action_EVENT_VARIABLE_CHANGE_17001", trigger_count = 0 },
	{ config_id = 1017002, name = "ANY_MONSTER_DIE_17002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_17002", trigger_count = 0 },
	{ config_id = 1017007, name = "GADGET_CREATE_17007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17007", action = "action_EVENT_GADGET_CREATE_17007" },
	{ config_id = 1017008, name = "SELECT_OPTION_17008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17008", action = "action_EVENT_SELECT_OPTION_17008", trigger_count = 0 },
	{ config_id = 1017011, name = "LEAVE_REGION_17011", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_17011", action = "action_EVENT_LEAVE_REGION_17011", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 17003, pos = { x = 23.719, y = 40.049, z = 5.321 }, rot = { x = 0.000, y = 208.030, z = 0.000 } },
	{ config_id = 17004, pos = { x = 26.231, y = 40.050, z = -9.648 }, rot = { x = 0.000, y = 307.222, z = 0.000 } },
	{ config_id = 17005, pos = { x = 14.773, y = 40.029, z = -12.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 17009, pos = { x = 7.709, y = 40.049, z = -3.121 }, rot = { x = 0.000, y = 78.629, z = 0.000 } },
	{ config_id = 17010, pos = { x = 9.363, y = 40.001, z = 6.756 }, rot = { x = 0.000, y = 151.304, z = 0.000 } },
	{ config_id = 17012, pos = { x = 23.719, y = 40.049, z = 5.321 }, rot = { x = 0.000, y = 208.030, z = 0.000 } },
	{ config_id = 17013, pos = { x = 26.231, y = 40.050, z = -9.648 }, rot = { x = 0.000, y = 307.222, z = 0.000 } },
	{ config_id = 17014, pos = { x = 14.773, y = 40.029, z = -12.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 17015, pos = { x = 7.709, y = 40.049, z = -3.121 }, rot = { x = 0.000, y = 78.629, z = 0.000 } },
	{ config_id = 17016, pos = { x = 9.363, y = 40.001, z = 6.756 }, rot = { x = 0.000, y = 151.304, z = 0.000 } }
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
		gadgets = { 17006 },
		regions = { 17011 },
		triggers = { "VARIABLE_CHANGE_17001", "ANY_MONSTER_DIE_17002", "GADGET_CREATE_17007", "SELECT_OPTION_17008", "LEAVE_REGION_17011" },
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
function condition_EVENT_VARIABLE_CHANGE_17001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_17001(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 99) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	    return -1
	  end
	
	
	ScriptLib.ChangeGroupVariableValueByGroup(context, "runes", 1, defs.group_core)
	
	 ScriptLib.PrintContextLog(context, "符文计数+1")
	
	-- 改变指定group组243008008中， configid为5000的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_core, defs.gadget_rune, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
	    return -1
	  end
	
	 ScriptLib.PrintContextLog(context, "1号符文射线!!!!!!!!")
	
	-- 触发镜头注目，注目位置为坐标（0，0，0），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=18.5, y=52, z=-2.7}
	  	local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
		end 
	
	--调用符文计数接口
	ScriptLib.ExecuteGroupLua(context,defs.group_core,"AddMistTrialKeyProgress",{1})
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17002(context, evt)
	--发送怪物死亡通知
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddMistTrialChildChallengeScore", {1})
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_17007(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_17007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_17008(context, evt)
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
function action_EVENT_SELECT_OPTION_17008(context, evt)
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
	
	-- 删除指定group： 243008001 ；指定config：1003；物件身上指定option：7；
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
function condition_EVENT_LEAVE_REGION_17011(context, evt)
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
function action_EVENT_LEAVE_REGION_17011(context, evt)
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