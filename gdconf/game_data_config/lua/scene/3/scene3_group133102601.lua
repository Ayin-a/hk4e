-- 基础信息
local base_info = {
	group_id = 133102601
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
	{ config_id = 601001, gadget_id = 70360001, pos = { x = 1771.748, y = 211.406, z = 610.840 }, rot = { x = 0.832, y = 137.579, z = 355.611 }, level = 18, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 601002, gadget_id = 70211111, pos = { x = 1771.870, y = 210.713, z = 610.683 }, rot = { x = 355.554, y = 42.528, z = 359.560 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 601005, gadget_id = 70220001, pos = { x = 1771.793, y = 210.737, z = 610.783 }, rot = { x = 349.209, y = 339.225, z = 3.272 }, level = 18, area_id = 5 },
	{ config_id = 601007, gadget_id = 70360040, pos = { x = 1772.038, y = 210.829, z = 610.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1601003, name = "GADGET_CREATE_601003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_601003", action = "action_EVENT_GADGET_CREATE_601003", trigger_count = 0 },
	{ config_id = 1601004, name = "SELECT_OPTION_601004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_601004", action = "action_EVENT_SELECT_OPTION_601004" },
	{ config_id = 1601006, name = "ANY_GADGET_DIE_601006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_601006", action = "action_EVENT_ANY_GADGET_DIE_601006" },
	{ config_id = 1601008, name = "GADGET_STATE_CHANGE_601008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_601008", action = "action_EVENT_GADGET_STATE_CHANGE_601008", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 601005 },
		regions = { },
		triggers = { "GADGET_CREATE_601003", "SELECT_OPTION_601004", "ANY_GADGET_DIE_601006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 601002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_601008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_601003(context, evt)
	if 601001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_601003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_601004(context, evt)
	if 601001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_601004(context, evt)
	-- 删除指定group： 133102601 ；指定config：601001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102601, 601001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102601, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_601006(context, evt)
	if 601005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_601006(context, evt)
	-- 创建id为601001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 601001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为601007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 601007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_601008(context, evt)
	if 601002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_601008(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end