-- 基础信息
local base_info = {
	group_id = 133314159
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
	{ config_id = 159001, gadget_id = 70360001, pos = { x = -61.333, y = 44.304, z = 4983.936 }, rot = { x = 0.000, y = 289.495, z = 351.688 }, level = 19, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 159002, gadget_id = 70211111, pos = { x = -61.619, y = 39.816, z = 4983.129 }, rot = { x = 0.000, y = 289.495, z = 351.688 }, level = 26, drop_tag = "解谜中级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 159006, gadget_id = 70330430, pos = { x = -61.461, y = 44.360, z = 4983.576 }, rot = { x = 0.000, y = 289.495, z = 351.688 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 159008, gadget_id = 70710536, pos = { x = -61.333, y = 44.304, z = 4983.936 }, rot = { x = 0.000, y = 289.495, z = 351.688 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1159003, name = "GADGET_CREATE_159003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_159003", action = "action_EVENT_GADGET_CREATE_159003", trigger_count = 0 },
	{ config_id = 1159004, name = "SELECT_OPTION_159004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_159004", action = "action_EVENT_SELECT_OPTION_159004" },
	{ config_id = 1159005, name = "GADGET_STATE_CHANGE_159005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_159005", action = "action_EVENT_GADGET_STATE_CHANGE_159005", trigger_count = 0 },
	{ config_id = 1159007, name = "ANY_GADGET_DIE_159007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_159007", action = "action_EVENT_ANY_GADGET_DIE_159007" }
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
		gadgets = { 159001, 159006, 159008 },
		regions = { },
		triggers = { "GADGET_CREATE_159003", "SELECT_OPTION_159004", "ANY_GADGET_DIE_159007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 159002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_159005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_159003(context, evt)
	-- 判断是gadgetid 159001
	if 159001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_159003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_159004(context, evt)
	if 159001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_159004(context, evt)
	-- 删除指定group： 133314159 ；指定config：159001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314159, 159001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133314159, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_159005(context, evt)
	if 159002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_159005(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_159007(context, evt)
	if 159006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_159007(context, evt)
	-- 将configid为 159001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 159001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end