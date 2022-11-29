-- 基础信息
local base_info = {
	group_id = 133210497
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
	{ config_id = 497001, gadget_id = 70211121, pos = { x = -3771.653, y = 149.353, z = -1066.529 }, rot = { x = 0.000, y = 130.175, z = 0.000 }, level = 26, chest_drop_id = 2003000, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 497002, gadget_id = 70220021, pos = { x = -3772.095, y = 149.319, z = -1067.907 }, rot = { x = 0.000, y = 309.370, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1497003, name = "ANY_GADGET_DIE_497003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_497003", action = "action_EVENT_ANY_GADGET_DIE_497003" },
	{ config_id = 1497004, name = "GADGET_STATE_CHANGE_497004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_497004", action = "action_EVENT_GADGET_STATE_CHANGE_497004", trigger_count = 0 },
	{ config_id = 1497005, name = "GROUP_LOAD_497005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_497005", action = "action_EVENT_GROUP_LOAD_497005", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 497001, 497002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_497003", "GADGET_STATE_CHANGE_497004", "GROUP_LOAD_497005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_497003(context, evt)
	if 497002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_497003(context, evt)
	-- 将configid为 497001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 497001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_497004(context, evt)
	if 497001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_497004(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_497005(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133210497, 497002) == -1 then
	        return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_497005(context, evt)
	-- 将configid为 497001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 497001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end