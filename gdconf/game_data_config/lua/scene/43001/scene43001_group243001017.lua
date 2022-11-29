-- 基础信息
local base_info = {
	group_id = 243001017
}

-- Trigger变量
local defs = {
	gadget_1 = 17006,
	group_1 = 243001017,
	monster_1 = 17001,
	monster_2 = 17002,
	monster_3 = 17003,
	monster_4 = 17004,
	monster_5 = 17005,
	monster_6 = 17012,
	monster_7 = 17013,
	monster_8 = 17014,
	Region1 = 17015,
	challenge1 = 3,
	challenge_father = 999,
	gadget_rune = 5019,
	group_core = 243001005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 20011201, pos = { x = -26.092, y = 39.862, z = -30.630 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1, MonsterFlag = 55 },
	{ config_id = 17002, monster_id = 20011201, pos = { x = -39.367, y = 39.862, z = -30.643 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1, MonsterFlag = 55 },
	{ config_id = 17003, monster_id = 20011201, pos = { x = -38.948, y = 39.983, z = -35.553 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1, MonsterFlag = 55 },
	{ config_id = 17004, monster_id = 20011301, pos = { x = -32.863, y = 39.983, z = -35.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, MonsterFlag = 55 },
	{ config_id = 17005, monster_id = 20011301, pos = { x = -27.563, y = 39.983, z = -35.297 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1, MonsterFlag = 55 },
	{ config_id = 17012, monster_id = 20011501, pos = { x = -39.120, y = 39.983, z = -23.836 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1, MonsterFlag = 55 },
	{ config_id = 17013, monster_id = 20011501, pos = { x = -35.140, y = 39.862, z = -19.398 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1, MonsterFlag = 55 },
	{ config_id = 17014, monster_id = 23030101, pos = { x = -26.230, y = 39.862, z = -22.405 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1, MonsterFlag = 55 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17006, gadget_id = 70360001, pos = { x = -36.277, y = 41.017, z = -28.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 17015, shape = RegionShape.CUBIC, size = { x = 50.000, y = 40.000, z = 60.000 }, pos = { x = -26.499, y = 40.000, z = -29.460 } }
}

-- 触发器
triggers = {
	{ config_id = 1017007, name = "GADGET_CREATE_17007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17007", action = "action_EVENT_GADGET_CREATE_17007" },
	{ config_id = 1017008, name = "SELECT_OPTION_17008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_17008", action = "action_EVENT_SELECT_OPTION_17008", trigger_count = 0 },
	{ config_id = 1017009, name = "ANY_MONSTER_LIVE_17009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_17009", action = "action_EVENT_ANY_MONSTER_LIVE_17009", trigger_count = 0 },
	{ config_id = 1017010, name = "CHALLENGE_FAIL_17010", event = EventType.EVENT_CHALLENGE_FAIL, source = "3", condition = "", action = "action_EVENT_CHALLENGE_FAIL_17010", trigger_count = 0 },
	{ config_id = 1017011, name = "CHALLENGE_SUCCESS_17011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "3", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_17011", tag = "901" },
	{ config_id = 1017015, name = "LEAVE_REGION_17015", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_17015", action = "action_EVENT_LEAVE_REGION_17015", trigger_count = 0 },
	{ config_id = 1017016, name = "VARIABLE_CHANGE_17016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_17016", action = "action_EVENT_VARIABLE_CHANGE_17016", trigger_count = 0 },
	{ config_id = 1017017, name = "ANY_MONSTER_DIE_17017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17017", action = "action_EVENT_ANY_MONSTER_DIE_17017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "key", value = 0, no_refresh = false },
	{ config_id = 2, name = "success", value = 0, no_refresh = false }
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
		regions = { 17015 },
		triggers = { "GADGET_CREATE_17007", "SELECT_OPTION_17008", "ANY_MONSTER_LIVE_17009", "CHALLENGE_FAIL_17010", "CHALLENGE_SUCCESS_17011", "LEAVE_REGION_17015", "VARIABLE_CHANGE_17016", "ANY_MONSTER_DIE_17017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 17001, 17002, 17003, 17004, 17005, 17012, 17013, 17014 },
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
	
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为8，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, defs.group_1, {defs.monster_1,defs.monster_2,defs.monster_3,defs.monster_4,defs.monster_5,defs.monster_6,defs.monster_7,defs.monster_8}, 8, 5, 5) then
		return -1
	end
	
	-- 删除指定group： 243001001 ；指定config：1003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_17009(context, evt)
	if defs.monster_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_17009(context, evt)
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineFatherIndex",{defs.challenge_father})
		ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineChildChallengeScore",{ 1, 1})
		ScriptLib.ExecuteGroupLua(context, defs.group_core, "AttachChildChallengeFromDiffGroup",{defs.challenge1, 233, 8})
	
	
	-- 改变指定group组243001008中， configid为5000的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_core, defs.gadget_rune, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end
	
	 ScriptLib.PrintContextLog(context, "3号符文点亮!!!!!!!!")
	
		-- 调用提示id为 43001009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 43001009) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_17010(context, evt)
	--销毁编号为1（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, defs.group_1, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_tide")
		return -1
	end
	
	-- 改变指定group组243001001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_1, defs.gadget_1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组243001008中， configid为5000的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_core, defs.gadget_rune, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_17011(context, evt)
	--销毁编号为1（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, defs.group_1, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_tide")
		return -1
	end
	
	ScriptLib.ChangeGroupVariableValueByGroup(context, "runes", 1, defs.group_core)
	
	-- 改变指定group组243001008中， configid为5000的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_core, defs.gadget_rune, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end
	
	
	ScriptLib.PrintContextLog(context, "3号符文射线!!!!!!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_17015(context, evt)
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
function action_EVENT_LEAVE_REGION_17015(context, evt)
	--离开区域 挑战失败
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "StopChildChallengeFromDiffGroup", {defs.challenge1,0})
	
	 ScriptLib.PrintContextLog(context, "离开区域，挑战失败!!!!!!!!!!!")
	
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	    return -1
	  end
	
	
	--销毁编号为1（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, defs.group_1, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_tide")
		return -1
	end
	
	-- 改变指定group组243001001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_1, defs.gadget_1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组243001008中， configid为5000的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_core, defs.gadget_rune, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_17016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为8
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 8 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_17016(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	
	-- 将本组内变量名为 "key" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", 99) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.ChangeGroupVariableValueByGroup(context, "runes", 1, defs.group_core)
	
	
	 ScriptLib.PrintContextLog(context, "符文计数+1")
	
	-- 改变指定group组243001008中， configid为5000的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_core, defs.gadget_rune, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end
	
	 ScriptLib.PrintContextLog(context, "3号符文射线!!!!!!!!")
	
	
	--[[ 触发镜头注目，注目位置为坐标（0，0，0），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-36.3, y=52, z=-28.3}
	  	local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
		end 
	--]]
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17017(context, evt)
	if 0 >= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17017(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 0
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	
	--ScriptLib.PrintContextLog(context, "怪物死亡"..key)
	
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddChildChallengeScore", {1})
	
	return 0
end