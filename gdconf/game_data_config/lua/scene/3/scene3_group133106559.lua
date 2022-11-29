-- 基础信息
local base_info = {
	group_id = 133106559
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 559001, monster_id = 26010201, pos = { x = -675.320, y = 136.091, z = 1645.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "骗骗花", area_id = 19 },
	{ config_id = 559007, monster_id = 26010201, pos = { x = -676.009, y = 135.267, z = 1639.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "骗骗花", area_id = 19 },
	{ config_id = 559008, monster_id = 26010201, pos = { x = -673.580, y = 135.581, z = 1638.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "骗骗花", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 559002, gadget_id = 70510014, pos = { x = -675.981, y = 135.266, z = 1639.648 }, rot = { x = 5.915, y = 319.662, z = 357.324 }, level = 36, isOneoff = true, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1559003, name = "GADGET_STATE_CHANGE_559003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_559003", action = "action_EVENT_GADGET_STATE_CHANGE_559003", trigger_count = 0 },
	{ config_id = 1559004, name = "ANY_MONSTER_DIE_559004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_559004", action = "action_EVENT_ANY_MONSTER_DIE_559004" },
	{ config_id = 1559005, name = "GADGET_CREATE_559005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_559005", action = "action_EVENT_GADGET_CREATE_559005", trigger_count = 0 },
	{ config_id = 1559006, name = "SELECT_OPTION_559006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_559006", action = "action_EVENT_SELECT_OPTION_559006", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 559002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_559003", "ANY_MONSTER_DIE_559004", "GADGET_CREATE_559005", "SELECT_OPTION_559006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 559001, 559007, 559008 },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_559003(context, evt)
	if 559002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_559003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106559, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_559004(context, evt)
	if 559001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_559004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_559005(context, evt)
	if 559002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_559005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106559, 559002, {174}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_559006(context, evt)
	-- 判断是gadgetid 559002 option_id 174
	if 559002 ~= evt.param1 then
		return false	
	end
	
	if 174 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_559006(context, evt)
	-- 将configid为 559002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 559002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133106559 ；指定config：559002；物件身上指定option：174；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133106559, 559002, 174) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end