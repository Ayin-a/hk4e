-- 基础信息
local base_info = {
	group_id = 133220131
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
	{ config_id = 131001, npc_id = 20251, pos = { x = -2711.593, y = 248.039, z = -4378.035 }, rot = { x = 0.000, y = 82.523, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	{ config_id = 131004, gadget_id = 70500000, pos = { x = -2712.194, y = 246.617, z = -4378.129 }, rot = { x = 0.000, y = 71.114, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 9140, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 131006, gadget_id = 70290107, pos = { x = -2712.709, y = 246.451, z = -4378.233 }, rot = { x = 0.896, y = 84.929, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 11 },
	{ config_id = 131007, gadget_id = 70360001, pos = { x = -2709.478, y = 246.223, z = -4377.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 131008, gadget_id = 71700288, pos = { x = -2712.007, y = 246.616, z = -4378.143 }, rot = { x = 0.000, y = 352.077, z = 0.000 }, level = 27, state = GadgetState.GearStart, isOneoff = true, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1131002, name = "QUEST_FINISH_131002", event = EventType.EVENT_QUEST_FINISH, source = "7210707", condition = "", action = "action_EVENT_QUEST_FINISH_131002", trigger_count = 0 },
	{ config_id = 1131003, name = "QUEST_FINISH_131003", event = EventType.EVENT_QUEST_FINISH, source = "7210714", condition = "", action = "action_EVENT_QUEST_FINISH_131003", trigger_count = 0 },
	{ config_id = 1131005, name = "GATHER_131005", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_131005", action = "action_EVENT_GATHER_131005", trigger_count = 0 },
	-- 言灵没有收集全
	{ config_id = 1131009, name = "GADGET_CREATE_131009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_131009", action = "action_EVENT_GADGET_CREATE_131009", trigger_count = 0 },
	{ config_id = 1131010, name = "SELECT_OPTION_131010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_131010", action = "action_EVENT_SELECT_OPTION_131010", trigger_count = 0 },
	{ config_id = 1131013, name = "QUEST_START_131013", event = EventType.EVENT_QUEST_START, source = "7210708", condition = "", action = "action_EVENT_QUEST_START_131013", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 131006 },
		regions = { },
		triggers = { "QUEST_FINISH_131002", "QUEST_FINISH_131003", "GADGET_CREATE_131009", "SELECT_OPTION_131010", "QUEST_START_131013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 131006 },
		regions = { },
		triggers = { "QUEST_FINISH_131003" },
		npcs = { 131001 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 131004, 131006, 131008 },
		regions = { },
		triggers = { "QUEST_FINISH_131003", "GATHER_131005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_131002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220131, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_131003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220131, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 131006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133220351中， configid为351010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133220351, 351010, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_131005(context, evt)
	if 131004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_131005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210715") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220131, EntityType.GADGET, 131008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_131009(context, evt)
	if 131007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_131009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {205}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_131010(context, evt)
	-- 判断是gadgetid 131007 option_id 205
	if 131007 ~= evt.param1 then
		return false	
	end
	
	if 205 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_131010(context, evt)
	-- 调用提示id为 7210715 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210715) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2713.301，248.3058，-4379.214），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2713.301, y=248.3058, z=-4379.214}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_131013(context, evt)
	-- 创建id为131007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 131007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end