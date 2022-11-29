-- 基础信息
local base_info = {
	group_id = 250006006
}

-- Trigger变量
local defs = {
	gadget_id_1 = 18,
	gadget_id_2 = 13
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
	{ config_id = 18, gadget_id = 70360002, pos = { x = 343.273, y = -12.793, z = 272.084 }, rot = { x = 0.000, y = 358.997, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000015, name = "GADGET_CREATE_15", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15", action = "action_EVENT_GADGET_CREATE_15" },
	{ config_id = 1000025, name = "SELECT_OPTION_25", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_25", action = "action_EVENT_SELECT_OPTION_25", trigger_count = 0, forbid_guest = false }
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
	end_suite = 1,
	rand_suite = true
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
		gadgets = { 18 },
		regions = { },
		triggers = { "GADGET_CREATE_15", "SELECT_OPTION_25" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_15(context, evt)
	if 18 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {103}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_25(context, evt)
	if 18 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_25(context, evt)
	-- 根据不同的选项做不同的操作
	
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.GearStart) then
			return -1
		end 
		
	
	-- 改变指定group组250006001中， configid为13的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250006001, defs.gadget_id_2, GadgetState.Default) then
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250006007, suite = 1 }) then
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250006008, suite = 1 }) then
			return -1
		end
	
	-- 删除指定group： 250006006 ；指定config：18；物件身上指定option：103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250006006, defs.gadget_id_1, 103) then
		return -1
	end
	
	return 0
end