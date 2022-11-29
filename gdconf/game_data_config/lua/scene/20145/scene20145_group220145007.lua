-- 基础信息
local base_info = {
	group_id = 220145007
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
	{ config_id = 7001, gadget_id = 70290506, pos = { x = 468.440, y = 143.207, z = 475.310 }, rot = { x = 0.000, y = 346.715, z = 0.000 }, level = 1 },
	{ config_id = 7002, gadget_id = 70290508, pos = { x = 494.593, y = 118.479, z = 497.447 }, rot = { x = 0.000, y = 291.380, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 7003, gadget_id = 70900201, pos = { x = 494.593, y = 120.536, z = 497.447 }, rot = { x = 0.000, y = 291.380, z = 0.000 }, level = 1 },
	{ config_id = 7007, gadget_id = 70360001, pos = { x = 494.593, y = 118.584, z = 497.447 }, rot = { x = 0.000, y = 329.152, z = 0.000 }, level = 1, worktop_config = { init_options = { 220 } } },
	{ config_id = 7008, gadget_id = 70900201, pos = { x = 468.208, y = 148.374, z = 476.074 }, rot = { x = 0.000, y = 329.152, z = 0.000 }, level = 1 },
	-- 琥珀门
	{ config_id = 7009, gadget_id = 70360001, pos = { x = 468.301, y = 144.387, z = 476.130 }, rot = { x = 0.000, y = 329.152, z = 0.000 }, level = 1, worktop_config = { init_options = { 769 } } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007004, name = "GADGET_STATE_CHANGE_7004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7004", action = "action_EVENT_GADGET_STATE_CHANGE_7004" },
	{ config_id = 1007005, name = "SELECT_OPTION_7005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7005", action = "action_EVENT_SELECT_OPTION_7005" },
	{ config_id = 1007006, name = "SELECT_OPTION_7006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7006", action = "action_EVENT_SELECT_OPTION_7006" }
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
		gadgets = { 7001, 7002, 7003, 7007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7004", "SELECT_OPTION_7005", "SELECT_OPTION_7006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_7004(context, evt)
	if 7001 ~= evt.param2 or GadgetState.Action03 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220145007, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7005(context, evt)
	-- 判断是gadgetid 7007 option_id 220
	if 7007 ~= evt.param1 then
		return false	
	end
	
	if 220 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7005(context, evt)
	-- 删除指定group： 220145007 ；指定config：7007；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220145007, 7007, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 7002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "KeyNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "KeyNum", 1, 220145001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 7003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7006(context, evt)
	-- 判断是gadgetid 7009 option_id 769
	if 7009 ~= evt.param1 then
		return false	
	end
	
	if 769 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7006(context, evt)
	-- 删除指定group： 220145007 ；指定config：7009；物件身上指定option：769；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220145007, 7009, 769) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 7001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 7008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220145011, 2)
	
	return 0
end