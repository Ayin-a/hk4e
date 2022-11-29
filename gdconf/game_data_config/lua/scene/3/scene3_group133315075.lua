-- 基础信息
local base_info = {
	group_id = 133315075
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 75001, monster_id = 26010101, pos = { x = 143.228, y = 259.595, z = 2891.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 75002, gadget_id = 70510013, pos = { x = 143.228, y = 259.595, z = 2891.396 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1075003, name = "GADGET_STATE_CHANGE_75003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75003", action = "action_EVENT_GADGET_STATE_CHANGE_75003", trigger_count = 0 },
	{ config_id = 1075004, name = "ANY_MONSTER_DIE_75004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_75004", action = "action_EVENT_ANY_MONSTER_DIE_75004" },
	{ config_id = 1075005, name = "GADGET_CREATE_75005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_75005", action = "action_EVENT_GADGET_CREATE_75005", trigger_count = 0 },
	{ config_id = 1075006, name = "SELECT_OPTION_75006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_75006", action = "action_EVENT_SELECT_OPTION_75006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 75007, gadget_id = 70500000, pos = { x = 142.695, y = 259.618, z = 2888.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 20 },
		{ config_id = 75008, gadget_id = 70500000, pos = { x = 145.274, y = 259.998, z = 2890.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 20 }
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
		gadgets = { 75002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_75003", "ANY_MONSTER_DIE_75004", "GADGET_CREATE_75005", "SELECT_OPTION_75006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 75001 },
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
function condition_EVENT_GADGET_STATE_CHANGE_75003(context, evt)
	if 75002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_75003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315075, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_75004(context, evt)
	if 75001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_75004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_75005(context, evt)
	if 75002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_75005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133315075, 75002, {173}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_75006(context, evt)
	-- 判断是gadgetid 75002 option_id 173
	if 75002 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_75006(context, evt)
	-- 将configid为 75002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 75002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133315075 ；指定config：75002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133315075, 75002, 173) then
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