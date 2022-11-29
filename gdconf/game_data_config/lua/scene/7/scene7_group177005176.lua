-- 基础信息
local base_info = {
	group_id = 177005176
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
	{ config_id = 176002, gadget_id = 70500000, pos = { x = 231.636, y = 314.574, z = 305.393 }, rot = { x = 308.890, y = 35.711, z = 0.889 }, level = 36, point_type = 9288, area_id = 210 },
	{ config_id = 176003, gadget_id = 70220096, pos = { x = 228.542, y = 313.853, z = 288.114 }, rot = { x = 345.700, y = 321.873, z = 18.581 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 176004, gadget_id = 70220098, pos = { x = 224.540, y = 313.663, z = 308.669 }, rot = { x = 0.239, y = 191.982, z = 356.224 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 176005, gadget_id = 70360286, pos = { x = 229.097, y = 313.873, z = 297.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 176006, gadget_id = 70220096, pos = { x = 226.328, y = 313.805, z = 309.632 }, rot = { x = 319.391, y = 52.418, z = 353.926 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 176007, gadget_id = 70220096, pos = { x = 225.750, y = 312.665, z = 308.280 }, rot = { x = 0.000, y = 326.539, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 176008, gadget_id = 70220098, pos = { x = 227.330, y = 313.761, z = 288.683 }, rot = { x = 2.609, y = 288.741, z = 0.871 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 176009, gadget_id = 70220096, pos = { x = 222.490, y = 314.047, z = 305.046 }, rot = { x = 0.094, y = 279.348, z = 284.114 }, level = 1, area_id = 210 },
	{ config_id = 176010, gadget_id = 70220096, pos = { x = 228.542, y = 313.853, z = 288.114 }, rot = { x = 345.700, y = 321.873, z = 18.581 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 176011, gadget_id = 70220098, pos = { x = 224.540, y = 313.663, z = 308.669 }, rot = { x = 0.239, y = 191.982, z = 356.224 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 176012, gadget_id = 70350004, pos = { x = 238.131, y = 314.038, z = 297.143 }, rot = { x = 0.000, y = 308.273, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 176013, gadget_id = 70360170, pos = { x = 235.937, y = 315.828, z = 295.153 }, rot = { x = 270.020, y = 125.172, z = 0.000 }, level = 36, persistent = true, worktop_config = { is_persistent = true, init_options = { 324 } }, area_id = 210 },
	{ config_id = 176015, gadget_id = 70220096, pos = { x = 226.328, y = 313.805, z = 309.632 }, rot = { x = 319.391, y = 52.418, z = 353.926 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 176016, gadget_id = 70220096, pos = { x = 225.750, y = 312.665, z = 308.280 }, rot = { x = 0.000, y = 326.539, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 176017, gadget_id = 70220098, pos = { x = 227.330, y = 313.761, z = 288.683 }, rot = { x = 2.609, y = 288.741, z = 0.871 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 176018, gadget_id = 70220096, pos = { x = 222.490, y = 314.047, z = 305.046 }, rot = { x = 0.094, y = 279.348, z = 284.114 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1176001, name = "GATHER_176001", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_176001", action = "action_EVENT_GATHER_176001", trigger_count = 0 },
	{ config_id = 1176014, name = "SELECT_OPTION_176014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_176014", action = "action_EVENT_SELECT_OPTION_176014" }
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
		-- description = 默认布设,
		monsters = { },
		gadgets = { 176005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 里世界1,
		monsters = { },
		gadgets = { 176002, 176003, 176004, 176006, 176007, 176008, 176009 },
		regions = { },
		triggers = { "GATHER_176001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 176010, 176011, 176012, 176013, 176015, 176016, 176017, 176018 },
		regions = { },
		triggers = { "SELECT_OPTION_176014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_176001(context, evt)
	if 176002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_176001(context, evt)
	-- 调用提示id为 500660247 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500660247) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_176014(context, evt)
	-- 判断是gadgetid 176013 option_id 324
	if 176013 ~= evt.param1 then
		return false	
	end
	
	if 324 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_176014(context, evt)
	-- 删除指定group： 177005176 ；指定config：176013；物件身上指定option：324；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 177005176, 176013, 324) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 176013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 176012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end