-- 基础信息
local base_info = {
	group_id = 201059002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2004, monster_id = 21010301, pos = { x = -30.415, y = 153.894, z = 4.380 }, rot = { x = 0.000, y = 161.795, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 2005, monster_id = 21010301, pos = { x = -32.575, y = 153.940, z = -0.612 }, rot = { x = 359.325, y = 81.210, z = 5.891 }, level = 1, pose_id = 9012 },
	{ config_id = 2006, monster_id = 22010201, pos = { x = -24.475, y = 153.970, z = 1.118 }, rot = { x = 0.000, y = 282.719, z = 0.000 }, level = 1 },
	{ config_id = 2007, monster_id = 21010201, pos = { x = -30.116, y = 153.940, z = -2.697 }, rot = { x = 0.000, y = 43.594, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 2010, monster_id = 21010201, pos = { x = -32.709, y = 153.940, z = 2.435 }, rot = { x = 0.000, y = 122.956, z = 0.000 }, level = 1, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 区域2大门
	{ config_id = 2001, gadget_id = 70350005, pos = { x = -24.253, y = 153.670, z = 15.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 区域2大门
	{ config_id = 2003, gadget_id = 70350146, pos = { x = -8.203, y = 156.841, z = 8.722 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2008, gadget_id = 70900007, pos = { x = -30.945, y = 153.890, z = -13.807 }, rot = { x = 0.000, y = 13.843, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	-- 区域2大门
	{ config_id = 2009, gadget_id = 70350005, pos = { x = -44.547, y = 153.622, z = 1.030 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, gadget_id = 70900201, pos = { x = -43.409, y = 156.200, z = 1.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70690008, pos = { x = -40.942, y = 144.924, z = -20.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70900202, pos = { x = -41.358, y = 155.992, z = -5.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70900201, pos = { x = -78.228, y = 156.254, z = 0.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2020, gadget_id = 70330044, pos = { x = -1.068, y = 154.893, z = 9.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2021, gadget_id = 70330044, pos = { x = -27.494, y = 167.694, z = -15.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2022, gadget_id = 70330043, pos = { x = -41.208, y = 153.891, z = -5.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2023, gadget_id = 70330043, pos = { x = -41.207, y = 153.905, z = 7.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2029, gadget_id = 70300099, pos = { x = -29.478, y = 153.940, z = 0.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2030, gadget_id = 70211011, pos = { x = 3.781, y = 153.890, z = 9.187 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 11, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true },
	-- 降魔印提示点
	{ config_id = 2032, gadget_id = 70710058, pos = { x = -32.983, y = 166.011, z = -10.691 }, rot = { x = 0.000, y = 80.266, z = 0.000 }, level = 1 },
	{ config_id = 2037, gadget_id = 70220026, pos = { x = -19.048, y = 153.890, z = 1.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2038, gadget_id = 70220026, pos = { x = -18.524, y = 153.890, z = 2.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2039, gadget_id = 70220014, pos = { x = -17.792, y = 153.890, z = 1.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2041, gadget_id = 70220025, pos = { x = -16.991, y = 153.954, z = 1.728 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2042, gadget_id = 70220013, pos = { x = -16.363, y = 153.891, z = 2.804 }, rot = { x = 0.000, y = 328.588, z = 0.000 }, level = 1 },
	{ config_id = 2043, gadget_id = 70220003, pos = { x = -28.291, y = 166.015, z = -12.280 }, rot = { x = 0.000, y = 351.875, z = 0.000 }, level = 1 },
	{ config_id = 2044, gadget_id = 70220003, pos = { x = -31.302, y = 165.964, z = -14.893 }, rot = { x = 0.000, y = 289.661, z = 0.000 }, level = 1 },
	{ config_id = 2045, gadget_id = 70220003, pos = { x = -31.563, y = 165.978, z = -19.245 }, rot = { x = 0.000, y = 265.224, z = 0.000 }, level = 1 },
	{ config_id = 2047, gadget_id = 70900201, pos = { x = -30.965, y = 155.700, z = -13.791 }, rot = { x = 0.000, y = 13.843, z = 0.000 }, level = 1 },
	{ config_id = 2048, gadget_id = 70900201, pos = { x = -27.421, y = 166.154, z = -15.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2049, gadget_id = 70900201, pos = { x = -26.205, y = 166.515, z = -8.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2051, gadget_id = 70900202, pos = { x = -41.202, y = 156.017, z = 7.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2052, gadget_id = 70230033, pos = { x = -25.710, y = 169.450, z = -8.995 }, rot = { x = 354.053, y = 258.811, z = 332.076 }, level = 1 },
	{ config_id = 2053, gadget_id = 70230034, pos = { x = -13.570, y = 174.630, z = -4.870 }, rot = { x = 315.300, y = 246.652, z = 335.028 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2002, shape = RegionShape.CUBIC, size = { x = 15.000, y = 5.000, z = 5.000 }, pos = { x = -27.955, y = 150.085, z = 24.493 } },
	{ config_id = 2019, shape = RegionShape.CUBIC, size = { x = 1.000, y = 15.000, z = 20.000 }, pos = { x = -34.038, y = 173.397, z = -16.786 } },
	{ config_id = 2035, shape = RegionShape.CUBIC, size = { x = 15.000, y = 5.000, z = 5.000 }, pos = { x = -25.262, y = 150.085, z = 24.493 } }
}

-- 触发器
triggers = {
	{ config_id = 1002002, name = "ENTER_REGION_2002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2002", action = "action_EVENT_ENTER_REGION_2002", trigger_count = 0 },
	{ config_id = 1002013, name = "ANY_MONSTER_DIE_2013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2013", action = "action_EVENT_ANY_MONSTER_DIE_2013" },
	{ config_id = 1002014, name = "GADGET_STATE_CHANGE_2014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2014", action = "action_EVENT_GADGET_STATE_CHANGE_2014" },
	{ config_id = 1002015, name = "QUEST_FINISH_2015", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_2015", action = "action_EVENT_QUEST_FINISH_2015" },
	{ config_id = 1002019, name = "ENTER_REGION_2019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2019", action = "action_EVENT_ENTER_REGION_2019" },
	{ config_id = 1002024, name = "GADGET_STATE_CHANGE_2024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2024", action = "action_EVENT_GADGET_STATE_CHANGE_2024" },
	{ config_id = 1002025, name = "GADGET_STATE_CHANGE_2025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2025", action = "action_EVENT_GADGET_STATE_CHANGE_2025" },
	{ config_id = 1002026, name = "VARIABLE_CHANGE_2026", event = EventType.EVENT_VARIABLE_CHANGE, source = "guihuo_1", condition = "condition_EVENT_VARIABLE_CHANGE_2026", action = "action_EVENT_VARIABLE_CHANGE_2026" },
	{ config_id = 1002027, name = "GADGET_CREATE_2027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2027", action = "action_EVENT_GADGET_CREATE_2027" },
	{ config_id = 1002028, name = "GADGET_CREATE_2028", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2028", action = "action_EVENT_GADGET_CREATE_2028" },
	{ config_id = 1002033, name = "TIMER_EVENT_2033", event = EventType.EVENT_TIMER_EVENT, source = "OpenDoor", condition = "", action = "action_EVENT_TIMER_EVENT_2033" },
	{ config_id = 1002034, name = "GADGET_STATE_CHANGE_2034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2034", action = "action_EVENT_GADGET_STATE_CHANGE_2034" },
	{ config_id = 1002035, name = "ENTER_REGION_2035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2035", action = "action_EVENT_ENTER_REGION_2035" },
	{ config_id = 1002046, name = "GADGET_STATE_CHANGE_2046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2046", action = "action_EVENT_GADGET_STATE_CHANGE_2046" },
	{ config_id = 1002050, name = "GADGET_STATE_CHANGE_2050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2050", action = "action_EVENT_GADGET_STATE_CHANGE_2050" }
}

-- 变量
variables = {
	{ config_id = 1, name = "guihuo_1", value = 0, no_refresh = false },
	{ config_id = 2, name = "Refresh1", value = 0, no_refresh = false },
	{ config_id = 3, name = "Refresh2", value = 0, no_refresh = false },
	{ config_id = 4, name = "Dead", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1002016, name = "GADGET_CREATE_2016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2016", action = "action_EVENT_GADGET_CREATE_2016" }
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
		monsters = { 2004, 2005, 2006, 2007, 2010 },
		gadgets = { 2001, 2003, 2008, 2009, 2020, 2021, 2022, 2023, 2029, 2030, 2032, 2037, 2038, 2039, 2041, 2042, 2043, 2044, 2045 },
		regions = { 2002, 2019, 2035 },
		triggers = { "ENTER_REGION_2002", "ANY_MONSTER_DIE_2013", "GADGET_STATE_CHANGE_2014", "QUEST_FINISH_2015", "ENTER_REGION_2019", "GADGET_STATE_CHANGE_2024", "GADGET_STATE_CHANGE_2025", "VARIABLE_CHANGE_2026", "GADGET_CREATE_2027", "GADGET_CREATE_2028", "TIMER_EVENT_2033", "GADGET_STATE_CHANGE_2034", "ENTER_REGION_2035", "GADGET_STATE_CHANGE_2046", "GADGET_STATE_CHANGE_2050" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 风场,
		monsters = { },
		gadgets = { 2012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2052, 2053 },
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
function condition_EVENT_ENTER_REGION_2002(context, evt)
	if evt.param1 ~= 2002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2002(context, evt)
	-- 改变指定group组201059002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201059002, 2001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201059002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2013(context, evt)
	-- 将configid为 2008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2014(context, evt)
	if 2008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059002, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2047 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为2048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2048 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_2015(context, evt)
	--检查ID为1111308的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1111308 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2015(context, evt)
	-- 延迟2秒后,向groupId为：201059002的对象,请求一次调用,并将string参数："OpenDoor" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201059002, "OpenDoor", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为111001 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 111001, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201059002, EntityType.GADGET, 2032 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2019(context, evt)
	if evt.param1 ~= 2019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2019(context, evt)
	-- 触发镜头注目，注目位置为坐标（-27，168，-15），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-27, y=168, z=-15}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 10590110 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10590110) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为2017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2051的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2051 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2024(context, evt)
	if 2022 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2024(context, evt)
	-- 针对当前group内变量名为 "guihuo_1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "guihuo_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Refresh1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Refresh1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2025(context, evt)
	if 2023 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2025(context, evt)
	-- 针对当前group内变量名为 "guihuo_1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "guihuo_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "Refresh1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Refresh1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2051 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"guihuo_1"为2
	if ScriptLib.GetGroupVariableValue(context, "guihuo_1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2026(context, evt)
	-- 将configid为 2009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为2018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2027(context, evt)
	if 2022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2027(context, evt)
	-- 将configid为 2022 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2022, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2028(context, evt)
	if 2023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2028(context, evt)
	-- 将configid为 2023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2033(context, evt)
	-- 将configid为 2003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2034(context, evt)
	if 2021 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2034(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2048 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为2011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Refresh1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Refresh1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2035(context, evt)
	if evt.param1 ~= 2035 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2035(context, evt)
	-- 改变指定group组201059002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201059002, 2001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为2047的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2047 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201059001, EntityType.GADGET, 1018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2046(context, evt)
	if 2008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2046(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059002, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2047 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为2048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2048 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2050(context, evt)
	if 2020 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2050(context, evt)
	-- 针对当前group内变量名为 "Refresh2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Refresh2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end