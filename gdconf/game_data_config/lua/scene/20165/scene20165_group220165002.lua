-- 基础信息
local base_info = {
	group_id = 220165002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2003, monster_id = 26090601, pos = { x = 274.349, y = 25.749, z = 215.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 2004, monster_id = 26090201, pos = { x = 276.818, y = 25.709, z = 212.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 2005, monster_id = 26090301, pos = { x = 278.195, y = 25.840, z = 211.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 2006, monster_id = 26090201, pos = { x = 275.185, y = 25.970, z = 214.221 }, rot = { x = 0.000, y = 298.602, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 2021, monster_id = 26090301, pos = { x = 276.008, y = 25.859, z = 213.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 2025, monster_id = 26090901, pos = { x = 278.546, y = 25.970, z = 215.830 }, rot = { x = 0.000, y = 24.180, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 2026, monster_id = 26090901, pos = { x = 275.976, y = 25.751, z = 220.356 }, rot = { x = 0.000, y = 51.196, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 2027, monster_id = 26090401, pos = { x = 279.283, y = 26.010, z = 217.446 }, rot = { x = 0.000, y = 24.180, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 2028, monster_id = 26090401, pos = { x = 277.927, y = 25.852, z = 219.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70350456, pos = { x = 315.707, y = 17.213, z = 230.837 }, rot = { x = 352.674, y = 181.649, z = 343.864 }, level = 1 },
	{ config_id = 2002, gadget_id = 70690029, pos = { x = 314.295, y = 18.327, z = 218.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70290527, pos = { x = 231.659, y = 17.982, z = 177.181 }, rot = { x = 0.000, y = 30.458, z = 0.000 }, level = 1 },
	{ config_id = 2009, gadget_id = 70950156, pos = { x = 279.717, y = 26.091, z = 222.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, gadget_id = 70290526, pos = { x = 259.905, y = 26.822, z = 218.537 }, rot = { x = 0.000, y = 20.278, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2012, gadget_id = 70360001, pos = { x = 260.152, y = 28.066, z = 218.592 }, rot = { x = 0.000, y = 20.586, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70350456, pos = { x = 245.377, y = 18.936, z = 209.762 }, rot = { x = 333.576, y = 350.051, z = 359.993 }, level = 1 },
	{ config_id = 2015, gadget_id = 70350456, pos = { x = 238.579, y = 12.955, z = 187.381 }, rot = { x = 351.148, y = 30.571, z = 1.067 }, level = 1 },
	{ config_id = 2016, gadget_id = 70290526, pos = { x = 313.081, y = 17.397, z = 233.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70360001, pos = { x = 313.390, y = 18.595, z = 233.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2020, gadget_id = 70290196, pos = { x = 263.634, y = 26.058, z = 209.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2022, gadget_id = 70320076, pos = { x = 255.941, y = 72.142, z = 155.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	{ config_id = 2023, gadget_id = 70320054, pos = { x = 274.113, y = 11.960, z = 215.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	{ config_id = 2030, gadget_id = 70290577, pos = { x = 244.380, y = 23.634, z = 223.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2031, gadget_id = 70290577, pos = { x = 245.750, y = 15.891, z = 200.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2032, gadget_id = 70290577, pos = { x = 232.434, y = 12.833, z = 182.306 }, rot = { x = 0.000, y = 57.430, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2029, shape = RegionShape.SPHERE, radius = 5, pos = { x = 234.239, y = 12.888, z = 181.531 } }
}

-- 触发器
triggers = {
	{ config_id = 1002008, name = "ANY_MONSTER_DIE_2008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2008", action = "action_EVENT_ANY_MONSTER_DIE_2008" },
	{ config_id = 1002010, name = "MONSTER_BATTLE_2010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_2010", action = "action_EVENT_MONSTER_BATTLE_2010" },
	{ config_id = 1002013, name = "SELECT_OPTION_2013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2013", action = "action_EVENT_SELECT_OPTION_2013" },
	{ config_id = 1002018, name = "GADGET_CREATE_2018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2018", action = "action_EVENT_GADGET_CREATE_2018" },
	{ config_id = 1002019, name = "SELECT_OPTION_2019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2019", action = "action_EVENT_SELECT_OPTION_2019" },
	{ config_id = 1002024, name = "ANY_MONSTER_DIE_2024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2024", action = "action_EVENT_ANY_MONSTER_DIE_2024" },
	{ config_id = 1002029, name = "ENTER_REGION_2029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2029", action = "action_EVENT_ENTER_REGION_2029" },
	{ config_id = 1002033, name = "SELECT_OPTION_2033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2033", action = "action_EVENT_SELECT_OPTION_2033" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1002034, name = "ANY_MONSTER_DIE_2034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2034", action = "action_EVENT_ANY_MONSTER_DIE_2034" },
		{ config_id = 1002035, name = "ANY_MONSTER_DIE_2035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2035", action = "action_EVENT_ANY_MONSTER_DIE_2035" }
	}
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
		monsters = { 2003, 2004, 2005, 2006, 2021 },
		gadgets = { 2001, 2007, 2011, 2012, 2014, 2015, 2016, 2017, 2022, 2023, 2030, 2031, 2032 },
		regions = { },
		triggers = { "MONSTER_BATTLE_2010", "SELECT_OPTION_2013", "GADGET_CREATE_2018", "SELECT_OPTION_2019", "ANY_MONSTER_DIE_2024", "SELECT_OPTION_2033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 2025, 2026, 2027, 2028 },
		gadgets = { },
		regions = { 2029 },
		triggers = { "ANY_MONSTER_DIE_2008", "ENTER_REGION_2029" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 2002 },
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
function condition_EVENT_ANY_MONSTER_DIE_2008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220165002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165002, 2)
	
	-- 将configid为 2011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220165002, 2012, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "monster" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_2010(context, evt)
	if 2003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_2010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165002, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2013(context, evt)
	-- 判断是gadgetid 2012 option_id 7
	if 2012 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2013(context, evt)
	-- 删除指定group： 220165002 ；指定config：2012；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220165002, 2012, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	ScriptLib.BeginCameraSceneLookWithTemplate(context, 1, {look_configid=0, look_pos = {x = 231.6591,y = 18.98158,z = 177.1806},  follow_type =2, follow_pos = {x=261.1,y=30.14,z=217.6},is_broadcast =false, delay = 0, })
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165010, 1)
	    ScriptLib.RemoveExtraGroupSuite(context, 220165010, 2)
	
	    ScriptLib.RemoveExtraGroupSuite(context, 220165010, 3)
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2018(context, evt)
	if 2017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220165002, 2017, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2019(context, evt)
	-- 判断是gadgetid 2017 option_id 7
	if 2017 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"monster"为0
	if ScriptLib.GetGroupVariableValue(context, "monster") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2019(context, evt)
	-- 删除指定group： 220165002 ；指定config：2017；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220165002, 2017, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220165002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2029(context, evt)
	if evt.param1 ~= 2029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2029(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=225.8606, y=15.76743, z=167.0214}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=225.8606, y=15.76743, z=167.0214}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 201650101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201650101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2033(context, evt)
	-- 判断是gadgetid 2017 option_id 7
	if 2017 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"monster"为1
	if ScriptLib.GetGroupVariableValue(context, "monster") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2033(context, evt)
	-- 删除指定group： 220165002 ；指定config：2017；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220165002, 2017, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165002, 5)
	
	return 0
end