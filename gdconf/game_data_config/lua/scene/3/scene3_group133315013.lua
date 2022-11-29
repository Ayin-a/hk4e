-- 基础信息
local base_info = {
	group_id = 133315013
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
	{ config_id = 13001, gadget_id = 70900050, pos = { x = -640.088, y = 196.710, z = 2410.220 }, rot = { x = 0.000, y = 142.918, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 13002, gadget_id = 70310214, pos = { x = -640.088, y = 196.710, z = 2410.220 }, rot = { x = 0.000, y = 142.918, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 13005, gadget_id = 70290517, pos = { x = -635.470, y = 203.122, z = 2416.458 }, rot = { x = 0.000, y = 66.782, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 13007, shape = RegionShape.SPHERE, radius = 15, pos = { x = -605.495, y = 198.543, z = 2433.951 }, area_id = 24 }
}

-- 触发器
triggers = {
	-- 监听破碎开门机关
	{ config_id = 1013003, name = "GADGET_STATE_CHANGE_13003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13003", action = "action_EVENT_GADGET_STATE_CHANGE_13003", trigger_count = 0 },
	{ config_id = 1013006, name = "GADGET_STATE_CHANGE_13006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13006", action = "action_EVENT_GADGET_STATE_CHANGE_13006" },
	{ config_id = 1013007, name = "ENTER_REGION_13007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_13007" }
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
		gadgets = { 13002, 13005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 13002, 13005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_13003", "GADGET_STATE_CHANGE_13006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 13007 },
		triggers = { "ENTER_REGION_13007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13003(context, evt)
	if 13002 ~= evt.param2 or GadgetState.GatherDrop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13003(context, evt)
	-- 创建id为13001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 13001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315013, 13001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13006(context, evt)
	-- 将configid为 13005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-637.1344, y=199.8336, z=2418.783}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-637.1344, y=199.8336, z=2418.783}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315013, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_13007(context, evt)
	-- 调用提示id为 7306101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end