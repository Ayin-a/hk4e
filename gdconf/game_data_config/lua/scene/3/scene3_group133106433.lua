-- 基础信息
local base_info = {
	group_id = 133106433
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
	{ config_id = 433002, gadget_id = 70210101, pos = { x = -691.511, y = 98.021, z = 1810.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050178, drop_count = 1, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 433003, gadget_id = 70210101, pos = { x = -691.109, y = 98.167, z = 1810.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用璃月", isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 433004, gadget_id = 70220106, pos = { x = -690.996, y = 99.176, z = 1810.951 }, rot = { x = 89.351, y = 0.025, z = 66.059 }, level = 36, area_id = 19 },
	{ config_id = 433006, gadget_id = 70220106, pos = { x = -691.955, y = 99.176, z = 1810.207 }, rot = { x = 89.363, y = 116.542, z = 49.692 }, level = 36, area_id = 19 },
	{ config_id = 433007, gadget_id = 70290365, pos = { x = -697.475, y = 99.082, z = 1817.704 }, rot = { x = 0.000, y = 322.992, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 433009, gadget_id = 70360001, pos = { x = -697.950, y = 99.190, z = 1817.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 433012, gadget_id = 70310034, pos = { x = -690.052, y = 99.031, z = 1814.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 19 },
	{ config_id = 433013, gadget_id = 70310034, pos = { x = -696.922, y = 99.093, z = 1810.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 433014, gadget_id = 70220015, pos = { x = -689.438, y = 99.031, z = 1811.891 }, rot = { x = 270.000, y = 322.650, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 433015, gadget_id = 70220016, pos = { x = -688.910, y = 99.831, z = 1810.530 }, rot = { x = 270.000, y = 340.188, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 433016, gadget_id = 70220015, pos = { x = -688.783, y = 99.031, z = 1810.097 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 433017, gadget_id = 70220005, pos = { x = -695.655, y = 99.028, z = 1808.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 433018, gadget_id = 70220015, pos = { x = -695.014, y = 99.503, z = 1807.524 }, rot = { x = 299.885, y = 49.215, z = 4.872 }, level = 36, area_id = 19 },
	{ config_id = 433019, gadget_id = 70220015, pos = { x = -695.493, y = 99.062, z = 1806.686 }, rot = { x = 270.020, y = 323.417, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 433020, gadget_id = 70220013, pos = { x = -682.218, y = 99.031, z = 1793.635 }, rot = { x = 359.862, y = 333.026, z = 1.053 }, level = 36, area_id = 19 },
	{ config_id = 433021, gadget_id = 70220013, pos = { x = -686.317, y = 99.161, z = 1804.738 }, rot = { x = 357.108, y = 323.560, z = 7.548 }, level = 36, area_id = 19 },
	{ config_id = 433022, gadget_id = 70220014, pos = { x = -687.064, y = 99.051, z = 1803.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
	-- 2.7dev上做一个保底，如果玩家靠近门时，门是关着的且710751已完成则创操作台
	{ config_id = 433001, shape = RegionShape.SPHERE, radius = 3, pos = { x = -696.395, y = 99.031, z = 1814.647 }, area_id = 19 }
}

-- 触发器
triggers = {
	-- 2.7dev上做一个保底，如果玩家靠近门时，门是关着的且710751已完成则创操作台
	{ config_id = 1433001, name = "ENTER_REGION_433001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_433001", action = "action_EVENT_ENTER_REGION_433001", trigger_count = 0 },
	{ config_id = 1433005, name = "ANY_GADGET_DIE_433005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_433005", action = "action_EVENT_ANY_GADGET_DIE_433005" },
	-- 2.7dev上把它的triggercount改成了0
	{ config_id = 1433008, name = "GADGET_CREATE_433008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_433008", action = "action_EVENT_GADGET_CREATE_433008", trigger_count = 0 },
	{ config_id = 1433010, name = "GADGET_STATE_CHANGE_433010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_433010", action = "action_EVENT_GADGET_STATE_CHANGE_433010", trigger_count = 0 },
	-- 2.7dev上加了一个remove操作台的执行项
	{ config_id = 1433011, name = "SELECT_OPTION_433011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_433011", action = "action_EVENT_SELECT_OPTION_433011" }
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
		gadgets = { 433004, 433006, 433007, 433012, 433013, 433014, 433015, 433016, 433017, 433018, 433019, 433020, 433021, 433022 },
		regions = { 433001 },
		triggers = { "ENTER_REGION_433001", "ANY_GADGET_DIE_433005", "GADGET_CREATE_433008", "GADGET_STATE_CHANGE_433010", "SELECT_OPTION_433011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 433002, 433003 },
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
function condition_EVENT_ENTER_REGION_433001(context, evt)
	if evt.param1 ~= 433001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133106433, 433007) then
		return false
	end
	
	if ScriptLib.GetHostQuestState(context,7107501) == 3 then
		return true
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_433001(context, evt)
	-- 创建id为433009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 433009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_433005(context, evt)
	if 433004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_433005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106433, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_433008(context, evt)
	if 433009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_433008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106433, 433009, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_433010(context, evt)
	if 433002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_433010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7107501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为433009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 433009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 调用提示id为 7106421 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7106421) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-697.9495，100，1817.17），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-697.9495, y=100, z=1817.17}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-698, y=100, z=1817}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Audio_lua_quest_WQ_cengYanJuYuan_knock", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_433011(context, evt)
	-- 判断是gadgetid 433009 option_id 1
	if 433009 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_433011(context, evt)
	-- 删除指定group： 133106433 ；指定config：433009；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133106433, 433009, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106433, EntityType.GADGET, 433009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 433007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 433007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end