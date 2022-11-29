-- 基础信息
local base_info = {
	group_id = 133217274
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 274001, monster_id = 26010301, pos = { x = -4542.750, y = 201.792, z = -4115.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "骗骗花", climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 274002, gadget_id = 70510013, pos = { x = -4542.750, y = 201.792, z = -4115.084 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 32, persistent = true, area_id = 14 },
	{ config_id = 274007, gadget_id = 70500000, pos = { x = -4544.691, y = 201.723, z = -4115.417 }, rot = { x = 0.000, y = 39.297, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 274008, gadget_id = 70500000, pos = { x = -4540.588, y = 201.770, z = -4115.052 }, rot = { x = 0.000, y = 253.860, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 274009, gadget_id = 70500000, pos = { x = -4571.757, y = 199.139, z = -4118.607 }, rot = { x = 0.000, y = 331.418, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 274010, gadget_id = 70500000, pos = { x = -4575.845, y = 199.533, z = -4124.988 }, rot = { x = 0.000, y = 197.194, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 274011, gadget_id = 70500000, pos = { x = -4601.908, y = 199.150, z = -4135.382 }, rot = { x = 0.000, y = 44.528, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 274012, gadget_id = 70500000, pos = { x = -4607.933, y = 199.023, z = -4124.665 }, rot = { x = 0.000, y = 213.245, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1274003, name = "GADGET_STATE_CHANGE_274003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274003", action = "action_EVENT_GADGET_STATE_CHANGE_274003", trigger_count = 0 },
	{ config_id = 1274004, name = "ANY_MONSTER_DIE_274004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_274004", action = "action_EVENT_ANY_MONSTER_DIE_274004" },
	{ config_id = 1274005, name = "GADGET_CREATE_274005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_274005", action = "action_EVENT_GADGET_CREATE_274005", trigger_count = 0 },
	{ config_id = 1274006, name = "SELECT_OPTION_274006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_274006", action = "action_EVENT_SELECT_OPTION_274006", trigger_count = 0 }
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
		gadgets = { 274002, 274007, 274008, 274009, 274010, 274011, 274012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_274003", "ANY_MONSTER_DIE_274004", "GADGET_CREATE_274005", "SELECT_OPTION_274006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 274001 },
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
function condition_EVENT_GADGET_STATE_CHANGE_274003(context, evt)
	if 274002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217274, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_274004(context, evt)
	if 274001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_274004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_274005(context, evt)
	if 274002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_274005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217274, 274002, {173}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_274006(context, evt)
	-- 判断是gadgetid 274002 option_id 173
	if 274002 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_274006(context, evt)
	-- 将configid为 274002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133217274 ；指定config：274002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133217274, 274002, 173) then
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