-- 基础信息
local base_info = {
	group_id = 133106461
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
	{ config_id = 461002, gadget_id = 70290281, pos = { x = -904.576, y = 117.062, z = 1772.836 }, rot = { x = 345.270, y = 73.422, z = 27.985 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 461003, gadget_id = 70360170, pos = { x = -910.232, y = 118.799, z = 1769.112 }, rot = { x = 51.817, y = 137.977, z = 149.300 }, level = 36, persistent = true, worktop_config = { is_persistent = true, init_options = { 1 } }, area_id = 19 },
	{ config_id = 461004, gadget_id = 70211131, pos = { x = -907.878, y = 116.475, z = 1770.263 }, rot = { x = 359.635, y = 242.137, z = 337.569 }, level = 26, drop_tag = "解谜超级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 461005, gadget_id = 70710062, pos = { x = -913.642, y = 117.781, z = 1771.552 }, rot = { x = 0.000, y = 82.552, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 461007, gadget_id = 70360001, pos = { x = -914.333, y = 116.601, z = 1771.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, worktop_config = { init_options = { 751 } }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1461001, name = "SELECT_OPTION_461001", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_461001", action = "action_EVENT_SELECT_OPTION_461001", trigger_count = 0 },
	{ config_id = 1461006, name = "SELECT_OPTION_461006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_461006", action = "action_EVENT_SELECT_OPTION_461006", trigger_count = 0 },
	{ config_id = 1461008, name = "GROUP_LOAD_461008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_461008", action = "action_EVENT_GROUP_LOAD_461008", trigger_count = 0 },
	{ config_id = 1461009, name = "GROUP_LOAD_461009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_461009", action = "action_EVENT_GROUP_LOAD_461009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isOpened", value = 0, no_refresh = true }
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
		gadgets = { 461002, 461003, 461004, 461005, 461007 },
		regions = { },
		triggers = { "SELECT_OPTION_461001", "SELECT_OPTION_461006", "GROUP_LOAD_461008", "GROUP_LOAD_461009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_461001(context, evt)
	-- 判断是gadgetid 461003 option_id 1
	if 461003 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_461001(context, evt)
	-- 将本组内变量名为 "isOpened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isOpened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 461002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 461002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6079, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 133106461 ；指定config：461003；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133106461, 461003, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 461003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 461003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_461006(context, evt)
	-- 判断是gadgetid 461007 option_id 751
	if 461007 ~= evt.param1 then
		return false	
	end
	
	if 751 ~= evt.param2 then
		return false
	end
	
	if ScriptLib.GetHostQuestState(context,7103725) == 3 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_SELECT_OPTION_461006(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=1112, y= 714, z=454.5}, radius = 2, rot = {x=0, y=-126, z=0},scene_id=6}) 
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_461008(context, evt)
	-- 判断变量"isOpened"为1
	if ScriptLib.GetGroupVariableValue(context, "isOpened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_461008(context, evt)
	-- 将configid为 461002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 461002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6079, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 461003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 461003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_461009(context, evt)
	-- 判断变量"isOpened"为0
	if ScriptLib.GetGroupVariableValue(context, "isOpened") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_461009(context, evt)
	-- 将configid为 461002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 461002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end