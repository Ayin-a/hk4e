-- 基础信息
local base_info = {
	group_id = 133102594
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
	{ config_id = 594001, gadget_id = 70211101, pos = { x = 1806.270, y = 231.078, z = 130.331 }, rot = { x = 13.127, y = 243.733, z = 15.660 }, level = 16, chest_drop_id = 1000600, drop_count = 1, state = GadgetState.ChestLocked, persistent = true, area_id = 5 },
	{ config_id = 594002, gadget_id = 70220021, pos = { x = 1807.382, y = 230.905, z = 129.600 }, rot = { x = 356.984, y = 33.716, z = 354.174 }, level = 16, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1594003, name = "ANY_GADGET_DIE_594003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_594003", action = "action_EVENT_ANY_GADGET_DIE_594003", trigger_count = 0 },
	{ config_id = 1594004, name = "GADGET_STATE_CHANGE_594004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_594004", action = "action_EVENT_GADGET_STATE_CHANGE_594004", trigger_count = 0 }
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
		gadgets = { 594001, 594002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_594003", "GADGET_STATE_CHANGE_594004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_594003(context, evt)
	if 594002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_594003(context, evt)
	-- 将configid为 594001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 594001, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_594004(context, evt)
	if 594001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_594004(context, evt)
	-- 将本组内变量名为 "Dug" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Dug", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "133102594" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "133102594", 1, 133102593) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end