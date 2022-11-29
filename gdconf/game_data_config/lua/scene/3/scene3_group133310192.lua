-- 基础信息
local base_info = {
	group_id = 133310192
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
	{ config_id = 192001, gadget_id = 70360001, pos = { x = -2779.416, y = 166.456, z = 5042.276 }, rot = { x = 0.000, y = 175.400, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 192002, gadget_id = 70211101, pos = { x = -2780.483, y = 165.637, z = 5041.896 }, rot = { x = 19.977, y = 81.268, z = 5.489 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 192006, gadget_id = 70330266, pos = { x = -2780.641, y = 165.787, z = 5041.668 }, rot = { x = 355.796, y = 324.331, z = 339.726 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 192008, gadget_id = 70220103, pos = { x = -2781.793, y = 168.410, z = 5047.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1192003, name = "GADGET_CREATE_192003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_192003", action = "action_EVENT_GADGET_CREATE_192003", trigger_count = 0 },
	{ config_id = 1192004, name = "SELECT_OPTION_192004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_192004", action = "action_EVENT_SELECT_OPTION_192004" },
	{ config_id = 1192007, name = "ANY_GADGET_DIE_192007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_192007", action = "action_EVENT_ANY_GADGET_DIE_192007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1192005, name = "GADGET_STATE_CHANGE_192005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_192005", action = "action_EVENT_GADGET_STATE_CHANGE_192005", trigger_count = 0 },
		{ config_id = 1192009, name = "GADGET_STATE_CHANGE_192009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_192009", action = "action_EVENT_GADGET_STATE_CHANGE_192009", trigger_count = 0 },
		{ config_id = 1192010, name = "GROUP_LOAD_192010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_192010", action = "action_EVENT_GROUP_LOAD_192010", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 192006, 192008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_192007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 192001 },
		regions = { },
		triggers = { "GADGET_CREATE_192003", "SELECT_OPTION_192004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 192002 },
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
function condition_EVENT_GADGET_CREATE_192003(context, evt)
	-- 判断是gadgetid 192001
	if 192001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_192003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_192004(context, evt)
	if 192001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_192004(context, evt)
	-- 删除指定group： 133310192 ；指定config：192001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133310192, 192001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310192, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_192007(context, evt)
	if 192006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_192007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310192, 2)
	
	return 0
end