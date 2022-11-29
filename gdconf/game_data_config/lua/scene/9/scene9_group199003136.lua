-- 基础信息
local base_info = {
	group_id = 199003136
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
	{ config_id = 136001, gadget_id = 70360122, pos = { x = -722.146, y = 222.481, z = -13.716 }, rot = { x = 0.000, y = 130.133, z = 0.000 }, level = 20, persistent = true, interact_id = 129, area_id = 403 },
	{ config_id = 136002, gadget_id = 70350006, pos = { x = -720.461, y = 224.868, z = -10.540 }, rot = { x = 0.000, y = 311.491, z = 90.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 136004, gadget_id = 70210101, pos = { x = -726.623, y = 222.197, z = -7.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050215, drop_count = 1, isOneoff = true, persistent = true, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1136003, name = "GADGET_STATE_CHANGE_136003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_136003", action = "action_EVENT_GADGET_STATE_CHANGE_136003", trigger_count = 0 }
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
		gadgets = { 136001, 136002, 136004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_136003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_136003(context, evt)
	if 136001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_136003(context, evt)
	-- 将configid为 136002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "door" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door", 1, 199003100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end