-- 基础信息
local base_info = {
	group_id = 250008119
}

-- Trigger变量
local defs = {
	group_id = 250008119,
	gadget_target_1 = 119005,
	monster_mole_1 = 119002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 119002, monster_id = 28050201, pos = { x = -50.732, y = 4.082, z = -506.198 }, rot = { x = 0.000, y = 29.457, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 119005, gadget_id = 70360027, pos = { x = -47.737, y = 4.000, z = -501.583 }, rot = { x = 0.000, y = 104.100, z = 0.000 }, level = 1 },
	{ config_id = 119009, gadget_id = 70360015, pos = { x = -50.437, y = 4.000, z = -506.083 }, rot = { x = 0.000, y = 15.100, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1119012, name = "ANY_MONSTER_DIE_119012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_119012" },
	{ config_id = 1119013, name = "SELECT_OPTION_119013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_119013", action = "action_EVENT_SELECT_OPTION_119013", forbid_guest = false },
	{ config_id = 1119014, name = "GADGET_STATE_CHANGE_119014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_119014", action = "action_EVENT_GADGET_STATE_CHANGE_119014", trigger_count = 0 }
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
		monsters = { 119002 },
		gadgets = { 119005, 119009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_119012", "SELECT_OPTION_119013", "GADGET_STATE_CHANGE_119014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_119012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250008119, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_119013(context, evt)
	-- 判断是gadgetid 119009 option_id 171
	if 119009 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_119013(context, evt)
	-- 改变指定group组250008119中， configid为119009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250008119, 119009, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 250008119 ；指定config：119009；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250008119, 119009, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_119014(context, evt)
	if 119009 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_119014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250008119, 119009, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end