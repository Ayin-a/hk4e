-- 基础信息
local base_info = {
	group_id = 133001278
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
	{ config_id = 278001, gadget_id = 70211101, pos = { x = 2014.687, y = 209.998, z = -1423.833 }, rot = { x = 2.112, y = 348.455, z = 1.395 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 278002, gadget_id = 70220021, pos = { x = 2014.248, y = 209.503, z = -1424.978 }, rot = { x = 0.000, y = 163.644, z = 0.000 }, level = 5, isOneoff = true, persistent = true, oneoff_reset_version = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1278003, name = "ANY_GADGET_DIE_278003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_278003", action = "action_EVENT_ANY_GADGET_DIE_278003" },
	{ config_id = 1278004, name = "GADGET_CREATE_278004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_278004", action = "action_EVENT_GADGET_CREATE_278004", trigger_count = 0 }
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
		gadgets = { 278001, 278002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_278003", "GADGET_CREATE_278004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_278003(context, evt)
	if 278002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_278003(context, evt)
	-- 将configid为 278001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278001, GadgetState.Default) then
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
function condition_EVENT_GADGET_CREATE_278004(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133001278, 278002) == -1 then
	        return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GADGET_CREATE_278004(context, evt)
	-- 将configid为 278001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end