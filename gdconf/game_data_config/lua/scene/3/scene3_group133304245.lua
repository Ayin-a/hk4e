-- 基础信息
local base_info = {
	group_id = 133304245
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
	{ config_id = 245001, gadget_id = 70360079, pos = { x = -1175.624, y = 155.718, z = 2269.486 }, rot = { x = 18.743, y = 335.698, z = 350.205 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	{ config_id = 245002, gadget_id = 70350081, pos = { x = -1172.428, y = 150.953, z = 2265.580 }, rot = { x = 0.000, y = 118.571, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1245003, name = "GADGET_CREATE_245003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_245003", action = "action_EVENT_GADGET_CREATE_245003", trigger_count = 0 },
	{ config_id = 1245004, name = "SELECT_OPTION_245004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_245004", action = "action_EVENT_SELECT_OPTION_245004", trigger_count = 0 }
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
		gadgets = { 245001, 245002 },
		regions = { },
		triggers = { "GADGET_CREATE_245003", "SELECT_OPTION_245004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_245003(context, evt)
	if 245002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_245003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_245004(context, evt)
	-- 判断是gadgetid 245002 option_id 1
	if 245002 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"move1"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "move1", 133304010) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_245004(context, evt)
	-- 删除指定group： 133304245 ；指定config：245002；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304245, 245002, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 245001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end