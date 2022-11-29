-- 基础信息
local base_info = {
	group_id = 250009004
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
	{ config_id = 4001, gadget_id = 70900303, pos = { x = 174.786, y = 10.488, z = -20.118 }, rot = { x = 0.000, y = 52.970, z = 0.000 }, level = 1 },
	{ config_id = 4002, gadget_id = 70211001, pos = { x = 198.535, y = 3.990, z = -8.368 }, rot = { x = 0.000, y = 102.012, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 4003, gadget_id = 70360001, pos = { x = 187.330, y = 5.010, z = -11.884 }, rot = { x = 0.000, y = 327.647, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 14, shape = RegionShape.CUBIC, size = { x = 1.000, y = 1.000, z = 1.000 }, pos = { x = 203.492, y = 5.089, z = -0.520 } }
}

-- 触发器
triggers = {
	{ config_id = 1000014, name = "ENTER_REGION_14", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_14", forbid_guest = false },
	{ config_id = 1000015, name = "CLIENT_EXECUTE_15", event = EventType.EVENT_CLIENT_EXECUTE, source = "View", condition = "", action = "action_EVENT_CLIENT_EXECUTE_15" },
	{ config_id = 1000017, name = "GADGET_CREATE_17", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17", action = "action_EVENT_GADGET_CREATE_17" },
	{ config_id = 1000018, name = "SELECT_OPTION_18", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_18", action = "action_EVENT_SELECT_OPTION_18", forbid_guest = false }
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
		gadgets = { 4001, 4003 },
		regions = { 14 },
		triggers = { "ENTER_REGION_14", "CLIENT_EXECUTE_15", "GADGET_CREATE_17", "SELECT_OPTION_18" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_14(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_15(context, evt)
	-- 创建id为4002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_17(context, evt)
	if 4003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_17(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250009004, 4003, {172}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_18(context, evt)
	-- 判断是gadgetid 4003 option_id 172
	if 4003 ~= evt.param1 then
		return false	
	end
	
	if 172 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_18(context, evt)
	-- 调用提示id为 500090101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500090101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end