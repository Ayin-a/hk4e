-- 基础信息
local base_info = {
	group_id = 133108103
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
	{ config_id = 103001, gadget_id = 70211101, pos = { x = -379.442, y = 202.166, z = -705.326 }, rot = { x = 9.206, y = 60.420, z = 1.489 }, level = 26, chest_drop_id = 1000600, drop_count = 1, state = GadgetState.ChestLocked, persistent = true, area_id = 7 },
	{ config_id = 103002, gadget_id = 70220021, pos = { x = -378.300, y = 201.175, z = -706.175 }, rot = { x = 31.189, y = 231.620, z = 0.289 }, level = 32, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1103003, name = "ANY_GADGET_DIE_103003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_103003", action = "action_EVENT_ANY_GADGET_DIE_103003", trigger_count = 0 },
	{ config_id = 1103004, name = "GADGET_STATE_CHANGE_103004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103004", action = "action_EVENT_GADGET_STATE_CHANGE_103004", trigger_count = 0 }
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
		gadgets = { 103001, 103002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_103003", "GADGET_STATE_CHANGE_103004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_103003(context, evt)
	if 103002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_103003(context, evt)
	-- 将configid为 103001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 103001, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_103004(context, evt)
	if 103001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103004(context, evt)
	-- 将本组内变量名为 "Dug" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Dug", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "133108103" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "133108103", 1, 133108100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end