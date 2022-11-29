-- 基础信息
local base_info = {
	group_id = 133315218
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
	{ config_id = 218001, gadget_id = 70900050, pos = { x = 123.414, y = 96.576, z = 2974.949 }, rot = { x = 0.000, y = 192.673, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 218002, gadget_id = 70310216, pos = { x = 123.592, y = 96.202, z = 2975.079 }, rot = { x = 10.031, y = 36.370, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 218003, gadget_id = 70290517, pos = { x = 131.820, y = 97.576, z = 2970.207 }, rot = { x = 1.790, y = 86.141, z = 184.318 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1218004, name = "GADGET_STATE_CHANGE_218004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218004", action = "action_EVENT_GADGET_STATE_CHANGE_218004", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 218005, pos = { x = 130.831, y = 99.984, z = 2969.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
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
		gadgets = { 218001, 218002, 218003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_218004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218004(context, evt)
	if 218001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218004(context, evt)
	-- 将configid为 218003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "go" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "go", 1, 133315229) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=130.8309, y=99.98446, z=2969.619}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=130.8309, y=99.98446, z=2969.619}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 7306304 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306304) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end