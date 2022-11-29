-- 基础信息
local base_info = {
	group_id = 133103464
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
	{ config_id = 464001, gadget_id = 70360068, pos = { x = 446.330, y = 300.840, z = 1578.350 }, rot = { x = 0.000, y = 194.494, z = 0.000 }, level = 24, isOneoff = true, persistent = true, interact_id = 3, explore = { name = "temple", exp = 14 }, area_id = 6 },
	{ config_id = 464002, gadget_id = 70211131, pos = { x = 446.300, y = 301.612, z = 1578.400 }, rot = { x = 0.000, y = 197.022, z = 0.000 }, level = 21, drop_tag = "灵龛璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1464003, name = "GADGET_STATE_CHANGE_464003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_464003", action = "action_EVENT_GADGET_STATE_CHANGE_464003" },
	{ config_id = 1464004, name = "GADGET_CREATE_464004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_464004", action = "", trigger_count = 0 },
	{ config_id = 1464005, name = "ANY_GADGET_DIE_464005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_464005", action = "", trigger_count = 0 },
	{ config_id = 1464006, name = "GADGET_STATE_CHANGE_464006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_464006", action = "", trigger_count = 0 },
	{ config_id = 1464007, name = "GROUP_LOAD_464007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_464007", trigger_count = 0 }
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
		gadgets = { 464001, 464002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_464003", "GADGET_CREATE_464004", "ANY_GADGET_DIE_464005", "GADGET_STATE_CHANGE_464006", "GROUP_LOAD_464007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_464003(context, evt)
	if 464001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_464003(context, evt)
	-- 将configid为 464002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 464002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 464001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_464004(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Create | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_464005(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_464006(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_464007(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133103464, 464001) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133103464, 464001) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133103464, 464002, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 464001})
	end
	
	return 0
end