-- 基础信息
local base_info = {
	group_id = 133303657
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
	{ config_id = 657001, gadget_id = 70360001, pos = { x = -1971.759, y = 283.660, z = 3995.129 }, rot = { x = 0.000, y = 175.400, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 26 },
	{ config_id = 657002, gadget_id = 70211101, pos = { x = -1971.253, y = 283.063, z = 3994.689 }, rot = { x = 13.615, y = 303.972, z = 354.316 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 657006, gadget_id = 70330266, pos = { x = -1970.830, y = 283.488, z = 3994.141 }, rot = { x = 16.317, y = 5.087, z = 15.388 }, level = 1, area_id = 26 },
	{ config_id = 657008, gadget_id = 70360001, pos = { x = -1971.536, y = 283.393, z = 3995.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1657003, name = "GADGET_CREATE_657003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_657003", action = "action_EVENT_GADGET_CREATE_657003", trigger_count = 0 },
	{ config_id = 1657004, name = "SELECT_OPTION_657004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_657004", action = "action_EVENT_SELECT_OPTION_657004" },
	{ config_id = 1657005, name = "GADGET_STATE_CHANGE_657005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_657005", action = "action_EVENT_GADGET_STATE_CHANGE_657005", trigger_count = 0 },
	{ config_id = 1657007, name = "ANY_GADGET_DIE_657007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_657007", action = "action_EVENT_ANY_GADGET_DIE_657007" },
	{ config_id = 1657009, name = "GROUP_LOAD_657009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_657009", action = "action_EVENT_GROUP_LOAD_657009", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 657006 },
		regions = { },
		triggers = { "GADGET_CREATE_657003", "SELECT_OPTION_657004", "ANY_GADGET_DIE_657007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 657002, 657008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_657005", "GROUP_LOAD_657009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_657003(context, evt)
	-- 判断是gadgetid 657001
	if 657001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_657003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_657004(context, evt)
	if 657001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_657004(context, evt)
	-- 删除指定group： 133303657 ；指定config：657001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303657, 657001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303657, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_657005(context, evt)
	if 657002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_657005(context, evt)
	-- 将configid为 657008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 657008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_657007(context, evt)
	if 657006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_657007(context, evt)
	-- 创建id为657001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 657001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_657009(context, evt)
	-- 判断指定group组指定gadget是否存在 
	return not ScriptLib.CheckIsInGroup(context, 133303657, 657002)
end

-- 触发操作
function action_EVENT_GROUP_LOAD_657009(context, evt)
	-- 将configid为 657008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 657008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end