-- 基础信息
local base_info = {
	group_id = 133210393
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
	{ config_id = 393001, gadget_id = 70360167, pos = { x = -3677.792, y = 120.452, z = -695.307 }, rot = { x = 0.000, y = 308.736, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 393013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3677.792, y = 120.591, z = -695.307 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- 激活尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1393002, name = "GADGET_STATE_CHANGE_393002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_393002", action = "action_EVENT_GADGET_STATE_CHANGE_393002", trigger_count = 0 },
	-- 关闭尊像，1秒后做改变，5秒后可关闭
	{ config_id = 1393003, name = "GADGET_STATE_CHANGE_393003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_393003", action = "action_EVENT_GADGET_STATE_CHANGE_393003", trigger_count = 0 },
	-- 激活后1秒执行，实际变化
	{ config_id = 1393004, name = "TIME_AXIS_PASS_393004", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_393004", action = "action_EVENT_TIME_AXIS_PASS_393004", trigger_count = 0 },
	-- 关闭后1秒执行，实际变化
	{ config_id = 1393005, name = "TIME_AXIS_PASS_393005", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_393005", action = "", trigger_count = 0 },
	-- 尊像加载，且是关闭时
	{ config_id = 1393006, name = "GADGET_CREATE_393006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_393006", action = "action_EVENT_GADGET_CREATE_393006", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1393007, name = "SELECT_OPTION_393007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_393007", action = "action_EVENT_SELECT_OPTION_393007", trigger_count = 0 },
	-- 激活后5秒执行，加关闭按钮
	{ config_id = 1393008, name = "TIME_AXIS_PASS_393008", event = EventType.EVENT_TIME_AXIS_PASS, source = "changestate", condition = "condition_EVENT_TIME_AXIS_PASS_393008", action = "action_EVENT_TIME_AXIS_PASS_393008", trigger_count = 0 },
	-- 关闭后5秒执行，加激活按钮
	{ config_id = 1393009, name = "TIME_AXIS_PASS_393009", event = EventType.EVENT_TIME_AXIS_PASS, source = "revivestate", condition = "condition_EVENT_TIME_AXIS_PASS_393009", action = "action_EVENT_TIME_AXIS_PASS_393009", trigger_count = 0 },
	-- 点击关闭时，改状态
	{ config_id = 1393010, name = "SELECT_OPTION_393010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_393010", action = "action_EVENT_SELECT_OPTION_393010", trigger_count = 0 },
	-- 尊像加载，且是开启时
	{ config_id = 1393011, name = "GADGET_CREATE_393011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_393011", action = "action_EVENT_GADGET_CREATE_393011", trigger_count = 0 },
	-- 尊像从锁定变为关闭时
	{ config_id = 1393012, name = "GADGET_STATE_CHANGE_393012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_393012", action = "action_EVENT_GADGET_STATE_CHANGE_393012", trigger_count = 0 },
	{ config_id = 1393013, name = "ENTER_REGION_393013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_393013", action = "action_EVENT_ENTER_REGION_393013", trigger_count = 0 },
	{ config_id = 1393014, name = "VARIABLE_CHANGE_393014", event = EventType.EVENT_VARIABLE_CHANGE, source = "Release", condition = "condition_EVENT_VARIABLE_CHANGE_393014", action = "action_EVENT_VARIABLE_CHANGE_393014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Times", value = 0, no_refresh = true },
	{ config_id = 2, name = "Release", value = 0, no_refresh = true }
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
		gadgets = { 393001 },
		regions = { 393013 },
		triggers = { "GADGET_STATE_CHANGE_393002", "GADGET_STATE_CHANGE_393003", "TIME_AXIS_PASS_393004", "TIME_AXIS_PASS_393005", "GADGET_CREATE_393006", "SELECT_OPTION_393007", "TIME_AXIS_PASS_393008", "TIME_AXIS_PASS_393009", "SELECT_OPTION_393010", "GADGET_CREATE_393011", "GADGET_STATE_CHANGE_393012", "ENTER_REGION_393013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_393002(context, evt)
	-- 检测config_id为393001的gadget是否从GadgetState.GearStop变为GadgetState.GearStart
	if 393001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_393002(context, evt)
	-- 创建标识为"changestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "changestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_393003(context, evt)
	-- 检测config_id为393001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 393001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_393003(context, evt)
	-- 创建标识为"revivestate"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "revivestate", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_393004(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_393004(context, evt)
	-- 将本组内变量名为 "GadgetState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Monster", 1, 133210394) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	
	-- 判断变量"Times"为0
	if ScriptLib.GetGroupVariableValue(context, "Times") == 0 then
	-- 触发镜头注目，注目位置为坐标（-3683.2，119.7，-686.5），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3683.2, y=119.7, z=-686.5}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 32100166 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100166) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	ScriptLib.SetGroupVariableValue(context, "Times", 1)
	end
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_393005(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_393006(context, evt)
	if 393001 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_393006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210393, 393001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_393007(context, evt)
	-- 判断是gadgetid 393001 option_id 61
	if 393001 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_393007(context, evt)
	-- 将configid为 393001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210393 ；指定config：393001；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210393, 393001, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_393008(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_393008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210393, 393001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_393009(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_393009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210393, 393001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_393010(context, evt)
	-- 判断是gadgetid 393001 option_id 62
	if 393001 ~= evt.param1 then
		return false	
	end
	
	if 62 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_393010(context, evt)
	-- 将configid为 393001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133210393 ；指定config：393001；物件身上指定option：62；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210393, 393001, 62) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_393011(context, evt)
	if 393001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_393011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210393, 393001, {62}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_393012(context, evt)
	-- 检测config_id为393001的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 393001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_393012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210393, 393001, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_393013(context, evt)
	if evt.param1 ~= 393013 then return false end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210393, 393001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_393013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_393014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Release"为1
	if ScriptLib.GetGroupVariableValue(context, "Release") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_393014(context, evt)
	-- 将configid为 393001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end