-- 基础信息
local base_info = {
	group_id = 240008002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2005, monster_id = 21010201, pos = { x = 340.097, y = -19.200, z = 343.315 }, rot = { x = 0.000, y = 288.704, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 2006, monster_id = 20010801, pos = { x = 347.863, y = -19.200, z = 346.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, monster_id = 20010801, pos = { x = 338.741, y = -19.200, z = 346.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2008, monster_id = 20010801, pos = { x = 343.614, y = -19.200, z = 349.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, monster_id = 20010901, pos = { x = 343.558, y = -19.200, z = 345.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, monster_id = 21020101, pos = { x = 351.861, y = -19.200, z = 343.368 }, rot = { x = 0.000, y = 83.252, z = 0.000 }, level = 1, pose_id = 401 },
	{ config_id = 2011, monster_id = 21010201, pos = { x = 331.885, y = -19.200, z = 338.709 }, rot = { x = 0.000, y = 173.459, z = 0.000 }, level = 1, pose_id = 9016 },
	{ config_id = 2012, monster_id = 21011002, pos = { x = 333.627, y = -19.200, z = 346.109 }, rot = { x = 0.000, y = 31.069, z = 0.000 }, level = 1, pose_id = 9013 },
	{ config_id = 2013, monster_id = 21011002, pos = { x = 335.127, y = -19.200, z = 337.465 }, rot = { x = 0.000, y = 255.749, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 2014, monster_id = 20011201, pos = { x = 346.271, y = -19.200, z = 340.915 }, rot = { x = 0.000, y = 356.466, z = 0.000 }, level = 1 },
	{ config_id = 2015, monster_id = 20011301, pos = { x = 338.643, y = -19.200, z = 343.277 }, rot = { x = 0.000, y = 2.614, z = 0.000 }, level = 1 },
	{ config_id = 2016, monster_id = 20011301, pos = { x = 348.490, y = -19.200, z = 343.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2027, monster_id = 20011201, pos = { x = 340.136, y = -19.200, z = 340.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70360002, pos = { x = 343.298, y = -19.277, z = 343.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70350003, pos = { x = 353.288, y = -18.351, z = 322.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2003, gadget_id = 70350003, pos = { x = 343.355, y = -18.368, z = 322.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70350003, pos = { x = 333.379, y = -18.356, z = 322.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70320002, pos = { x = 353.448, y = -19.221, z = 338.575 }, rot = { x = 0.000, y = 272.309, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2023, gadget_id = 70310001, pos = { x = 349.308, y = -19.200, z = 343.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2024, gadget_id = 70310001, pos = { x = 337.739, y = -19.200, z = 343.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2025, gadget_id = 70220025, pos = { x = 351.566, y = -19.271, z = 343.373 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2026, gadget_id = 70320002, pos = { x = 338.182, y = -19.200, z = 348.857 }, rot = { x = 0.000, y = 266.553, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2028, gadget_id = 70320002, pos = { x = 348.259, y = -19.200, z = 348.675 }, rot = { x = 0.000, y = 91.966, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2033, gadget_id = 70350003, pos = { x = 353.298, y = -18.828, z = 368.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2034, gadget_id = 70350003, pos = { x = 343.301, y = -18.812, z = 368.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2035, gadget_id = 70350003, pos = { x = 333.319, y = -18.835, z = 368.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2036, gadget_id = 70320002, pos = { x = 332.372, y = -19.221, z = 338.646 }, rot = { x = 0.000, y = 88.079, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2037, gadget_id = 70211011, pos = { x = 359.075, y = -14.284, z = 335.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2038, gadget_id = 70220013, pos = { x = 366.448, y = -14.283, z = 336.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2039, gadget_id = 70220013, pos = { x = 367.988, y = -14.284, z = 334.047 }, rot = { x = 0.000, y = 307.522, z = 0.000 }, level = 1 },
	{ config_id = 2040, gadget_id = 70220014, pos = { x = 365.228, y = -14.284, z = 334.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2041, gadget_id = 70220014, pos = { x = 369.335, y = -14.283, z = 336.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2042, gadget_id = 70220014, pos = { x = 360.472, y = -16.894, z = 343.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2043, gadget_id = 70220014, pos = { x = 359.797, y = -16.894, z = 345.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2044, gadget_id = 70220013, pos = { x = 360.028, y = -16.893, z = 347.359 }, rot = { x = 0.000, y = 59.385, z = 0.000 }, level = 1 },
	{ config_id = 2045, gadget_id = 70220025, pos = { x = 360.049, y = -16.878, z = 344.810 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2046, gadget_id = 70310002, pos = { x = 348.271, y = -8.828, z = 324.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2047, gadget_id = 70310002, pos = { x = 338.379, y = -8.828, z = 324.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2049, gadget_id = 70220013, pos = { x = 330.767, y = -19.438, z = 335.253 }, rot = { x = 0.000, y = 307.695, z = 0.000 }, level = 1 },
	{ config_id = 2050, gadget_id = 70220013, pos = { x = 332.636, y = -19.292, z = 333.246 }, rot = { x = 0.000, y = 342.013, z = 0.000 }, level = 1 },
	{ config_id = 2051, gadget_id = 70220014, pos = { x = 332.563, y = -19.252, z = 336.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2052, gadget_id = 70220014, pos = { x = 333.849, y = -19.250, z = 335.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2053, gadget_id = 70220015, pos = { x = 329.808, y = -18.582, z = 336.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2054, gadget_id = 70220015, pos = { x = 330.486, y = -18.643, z = 332.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2058, gadget_id = 70211011, pos = { x = 343.588, y = -19.200, z = 331.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 2029, shape = RegionShape.CUBIC, size = { x = 30.000, y = 8.000, z = 3.000 }, pos = { x = 341.203, y = -18.968, z = 360.204 } },
	{ config_id = 2030, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 3.000 }, pos = { x = 353.233, y = -23.687, z = 384.393 } },
	{ config_id = 2031, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 3.000 }, pos = { x = 343.078, y = -23.688, z = 384.374 } },
	{ config_id = 2032, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 3.000 }, pos = { x = 332.942, y = -23.801, z = 384.389 } },
	{ config_id = 2055, shape = RegionShape.CUBIC, size = { x = 30.000, y = 8.000, z = 3.000 }, pos = { x = 344.651, y = -18.837, z = 358.242 } },
	{ config_id = 2056, shape = RegionShape.CUBIC, size = { x = 30.000, y = 8.000, z = 3.000 }, pos = { x = 344.329, y = -19.088, z = 358.196 } }
}

-- 触发器
triggers = {
	{ config_id = 1002019, name = "ANY_MONSTER_DIE_2019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2019", action = "action_EVENT_ANY_MONSTER_DIE_2019" },
	{ config_id = 1002020, name = "SELECT_OPTION_2020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2020", action = "action_EVENT_SELECT_OPTION_2020" },
	{ config_id = 1002021, name = "SELECT_OPTION_2021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2021", action = "action_EVENT_SELECT_OPTION_2021" },
	{ config_id = 1002022, name = "SELECT_OPTION_2022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2022", action = "action_EVENT_SELECT_OPTION_2022" },
	{ config_id = 1002029, name = "ENTER_REGION_2029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2029", action = "action_EVENT_ENTER_REGION_2029" },
	{ config_id = 1002030, name = "ENTER_REGION_2030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2030", action = "action_EVENT_ENTER_REGION_2030" },
	{ config_id = 1002031, name = "ENTER_REGION_2031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2031", action = "action_EVENT_ENTER_REGION_2031" },
	{ config_id = 1002032, name = "ENTER_REGION_2032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2032", action = "action_EVENT_ENTER_REGION_2032" },
	{ config_id = 1002055, name = "ENTER_REGION_2055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2055", action = "action_EVENT_ENTER_REGION_2055" },
	{ config_id = 1002056, name = "ENTER_REGION_2056", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2056", action = "action_EVENT_ENTER_REGION_2056" },
	{ config_id = 1002057, name = "GADGET_STATE_CHANGE_2057", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2057", action = "action_EVENT_GADGET_STATE_CHANGE_2057" }
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
		gadgets = { 2001, 2002, 2003, 2004, 2033, 2034, 2035, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2049, 2050, 2051, 2052, 2053, 2054 },
		regions = { 2029, 2030, 2031, 2032 },
		triggers = { "ANY_MONSTER_DIE_2019", "SELECT_OPTION_2020", "SELECT_OPTION_2021", "SELECT_OPTION_2022", "ENTER_REGION_2029", "ENTER_REGION_2030", "ENTER_REGION_2031", "ENTER_REGION_2032", "GADGET_STATE_CHANGE_2057" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 冰之试炼,
		monsters = { },
		gadgets = { },
		regions = { 2055 },
		triggers = { "ENTER_REGION_2055" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 雷之试炼,
		monsters = { 2005, 2010, 2011, 2012, 2013 },
		gadgets = { 2023, 2024, 2025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 火之试炼,
		monsters = { },
		gadgets = { 2017, 2026, 2028, 2036 },
		regions = { 2056 },
		triggers = { "ENTER_REGION_2056" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 水之挑战怪物,
		monsters = { 2006, 2007, 2008, 2009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 火之挑战怪物,
		monsters = { 2014, 2015, 2016, 2027 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 宝箱奖励,
		monsters = { },
		gadgets = { 2058 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 风场,
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
function condition_EVENT_ANY_MONSTER_DIE_2019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2019(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240008002, 2001, {178,179,180}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008002, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2020(context, evt)
	-- 判断是gadgetid 2001 option_id 178
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 178 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008003, 2)
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240008002 ；指定config：2001；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008002, 2001, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008002 ；指定config：2001；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008002, 2001, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008002 ；指定config：2001；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008002, 2001, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（353，-18，322），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=353, y=-18, z=322}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2021(context, evt)
	-- 判断是gadgetid 2001 option_id 179
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 179 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2021(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008003, 3)
	
	-- 将configid为 2003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240008002 ；指定config：2001；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008002, 2001, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008002 ；指定config：2001；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008002, 2001, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008002 ；指定config：2001；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008002, 2001, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（343，-18，322），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=343, y=-18, z=322}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2022(context, evt)
	-- 判断是gadgetid 2001 option_id 180
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 180 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008003, 4)
	
	-- 将configid为 2004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240008002 ；指定config：2001；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008002, 2001, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008002 ；指定config：2001；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008002, 2001, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008002 ；指定config：2001；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008002, 2001, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（333，-18，322），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=333, y=-18, z=322}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
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
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2033 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2033, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2034 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2034, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2035 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2035, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2030(context, evt)
	if evt.param1 ~= 2030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2030(context, evt)
	-- 将configid为 2033 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2033, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2031(context, evt)
	if evt.param1 ~= 2031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2031(context, evt)
	-- 将configid为 2034 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2034, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2032(context, evt)
	if evt.param1 ~= 2032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2032(context, evt)
	-- 将configid为 2035 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2035, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2055(context, evt)
	if evt.param1 ~= 2055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2055(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2056(context, evt)
	if evt.param1 ~= 2056 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2056(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008002, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2057(context, evt)
	if 2046 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2057(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008002, 8)
	
	return 0
end