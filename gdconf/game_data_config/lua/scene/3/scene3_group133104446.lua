-- 基础信息
local base_info = {
	group_id = 133104446
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
	{ config_id = 446001, gadget_id = 70211101, pos = { x = 89.629, y = 213.352, z = 789.524 }, rot = { x = 1.826, y = 94.873, z = 352.509 }, level = 16, chest_drop_id = 1000600, drop_count = 1, state = GadgetState.ChestLocked, persistent = true, area_id = 9 },
	{ config_id = 446002, gadget_id = 70220021, pos = { x = 91.189, y = 212.859, z = 787.604 }, rot = { x = 3.597, y = 279.805, z = 352.903 }, level = 19, persistent = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1446003, name = "ANY_GADGET_DIE_446003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_446003", action = "action_EVENT_ANY_GADGET_DIE_446003", trigger_count = 0 },
	{ config_id = 1446004, name = "GADGET_STATE_CHANGE_446004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_446004", action = "action_EVENT_GADGET_STATE_CHANGE_446004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Dug", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 446001, 446002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_446003", "GADGET_STATE_CHANGE_446004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_446003(context, evt)
	if 446002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_446003(context, evt)
	-- 将configid为 446001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 446001, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_446004(context, evt)
	if 446001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_446004(context, evt)
	-- 将本组内变量名为 "Dug" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Dug", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "133104446" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "133104446", 1, 133104442) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end