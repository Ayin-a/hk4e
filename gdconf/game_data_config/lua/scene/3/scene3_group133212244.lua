-- 基础信息
local base_info = {
	group_id = 133212244
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
	{ config_id = 244002, gadget_id = 70900387, pos = { x = -3688.312, y = 200.505, z = -2443.926 }, rot = { x = 0.000, y = 266.787, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 244005, gadget_id = 70330064, pos = { x = -3688.400, y = 201.481, z = -2444.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 13 },
	{ config_id = 244007, gadget_id = 70900380, pos = { x = -3677.883, y = 205.195, z = -2443.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 244008, gadget_id = 70900380, pos = { x = -3664.225, y = 212.890, z = -2442.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 244009, gadget_id = 70900380, pos = { x = -3652.398, y = 219.374, z = -2442.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1244003, name = "ANY_GADGET_DIE_244003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_244003", action = "action_EVENT_ANY_GADGET_DIE_244003" },
	{ config_id = 1244004, name = "GADGET_STATE_CHANGE_244004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_244004", action = "action_EVENT_GADGET_STATE_CHANGE_244004", trigger_count = 0 },
	{ config_id = 1244006, name = "GADGET_STATE_CHANGE_244006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_244006", action = "action_EVENT_GADGET_STATE_CHANGE_244006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 244001, gadget_id = 70211101, pos = { x = -3689.465, y = 201.325, z = -2443.583 }, rot = { x = 0.000, y = 131.416, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
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
		gadgets = { 244002, 244005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_244003", "GADGET_STATE_CHANGE_244004", "GADGET_STATE_CHANGE_244006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 244007, 244008, 244009 },
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
function condition_EVENT_ANY_GADGET_DIE_244003(context, evt)
	if 244002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_244003(context, evt)
	-- 将configid为 244005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 244005, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_244004(context, evt)
	if 244005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_244004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212244, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_244006(context, evt)
	if 244005 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_244006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212244, 2)
	
	return 0
end

require "V2_0/ElectricCore"