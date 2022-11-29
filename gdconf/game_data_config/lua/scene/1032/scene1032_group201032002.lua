-- 基础信息
local base_info = {
	group_id = 201032002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010601, pos = { x = 20.756, y = 246.238, z = -50.013 }, rot = { x = 0.000, y = 334.043, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2004, monster_id = 21010601, pos = { x = 9.770, y = 246.230, z = -48.314 }, rot = { x = 0.000, y = 46.076, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2011, monster_id = 21010201, pos = { x = 14.037, y = 246.100, z = -45.834 }, rot = { x = 0.000, y = 19.381, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2012, monster_id = 21010201, pos = { x = 23.187, y = 246.100, z = -41.145 }, rot = { x = 0.000, y = 275.413, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2013, monster_id = 21010201, pos = { x = 9.951, y = 246.100, z = -41.025 }, rot = { x = 0.000, y = 58.549, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2014, monster_id = 21010201, pos = { x = 19.525, y = 246.100, z = -35.832 }, rot = { x = 0.000, y = 207.968, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2015, monster_id = 21010301, pos = { x = 25.756, y = 246.268, z = -44.506 }, rot = { x = 0.000, y = 308.583, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2016, monster_id = 21010301, pos = { x = 13.983, y = 246.100, z = -35.363 }, rot = { x = 0.000, y = 152.581, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2017, monster_id = 21010301, pos = { x = 17.826, y = 246.100, z = -46.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2018, monster_id = 21010301, pos = { x = 20.910, y = 246.100, z = -44.729 }, rot = { x = 0.000, y = 335.568, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2019, monster_id = 20011201, pos = { x = 18.483, y = 246.100, z = -43.493 }, rot = { x = 0.000, y = 317.584, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2020, monster_id = 20011201, pos = { x = 20.476, y = 246.100, z = -42.046 }, rot = { x = 0.000, y = 313.629, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2021, monster_id = 20010801, pos = { x = 16.266, y = 246.100, z = -45.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2022, monster_id = 20010801, pos = { x = 11.073, y = 246.100, z = -42.593 }, rot = { x = 0.000, y = 72.028, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2023, monster_id = 20011001, pos = { x = 13.726, y = 246.100, z = -43.032 }, rot = { x = 0.000, y = 38.708, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2024, monster_id = 20011001, pos = { x = 11.543, y = 246.100, z = -44.676 }, rot = { x = 0.000, y = 63.496, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2025, monster_id = 20010501, pos = { x = 6.262, y = 246.256, z = -37.462 }, rot = { x = 0.000, y = 139.844, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2026, monster_id = 20010501, pos = { x = 11.748, y = 246.100, z = -39.392 }, rot = { x = 0.000, y = 152.085, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2028, monster_id = 20010701, pos = { x = 20.863, y = 246.100, z = -38.632 }, rot = { x = 0.000, y = 237.852, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2029, monster_id = 20010601, pos = { x = 21.542, y = 246.100, z = -40.194 }, rot = { x = 0.000, y = 260.066, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2037, monster_id = 21010501, pos = { x = 7.961, y = 246.268, z = -36.074 }, rot = { x = 0.000, y = 109.471, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2038, monster_id = 21011001, pos = { x = 25.897, y = 246.275, z = -40.932 }, rot = { x = 0.000, y = 267.107, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2039, monster_id = 20011101, pos = { x = 13.759, y = 246.100, z = -38.018 }, rot = { x = 0.000, y = 151.626, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 2040, monster_id = 20011301, pos = { x = 16.860, y = 246.100, z = -36.946 }, rot = { x = 0.000, y = 185.057, z = 0.000 }, level = 1, affix = { 1101 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2002, gadget_id = 70900039, pos = { x = 17.389, y = 246.100, z = -38.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, gadget_id = 70900201, pos = { x = 17.379, y = 247.910, z = -38.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2041, gadget_id = 70211112, pos = { x = -0.219, y = 246.237, z = -48.757 }, rot = { x = 0.000, y = 62.361, z = 0.000 }, level = 11, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002003, name = "GADGET_STATE_CHANGE_2003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2003", action = "action_EVENT_GADGET_STATE_CHANGE_2003", trigger_count = 0 },
	{ config_id = 1002008, name = "CHALLENGE_FAIL_2008", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "CHALLENGE_SUCCESS_2009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2009", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 2002, 2041 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2003", "CHALLENGE_FAIL_2008", "CHALLENGE_SUCCESS_2009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2001, 2004, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2028, 2029, 2037, 2038, 2039, 2040 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 2010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_2003(context, evt)
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2003(context, evt)
	-- 创建编号为201（该怪物潮的识别id)的怪物潮，创建怪物总数为15，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 201, 201032002, {2019,2020,2021,2022,2023,2024,2025,2026,2028,2029,2039,2040}, 15, 3, 3) then
		return -1
	end
	
	-- 创建编号为202（该怪物潮的识别id)的怪物潮，创建怪物总数为15，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 202, 201032002, {2011,2012,2013,2014,2015,2016,2037,2038,2017,2018,2001,2004}, 15, 3, 3) then
		return -1
	end
	
	-- 创建编号为101（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 5, 30, 201032002, 30, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2008(context, evt)
	-- 将configid为 2002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	--销毁编号为201（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, 201032002, 201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_tide")
	end
	
	--销毁编号为202（该怪物潮的识别id)的怪物潮
	if 0 ~= ScriptLib.KillMonsterTide(context, 201032002, 202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_tide")
	end
	
	-- 创建id为2010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2009(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201032003, 4)
	
	-- 调用提示id为 10320101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10320101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "stageFlag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stageFlag", 1, 201032003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组201032003中， configid为3004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201032003, 3004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 2041 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2041, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end