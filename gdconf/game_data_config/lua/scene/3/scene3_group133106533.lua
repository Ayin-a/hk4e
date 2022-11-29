-- 基础信息
local base_info = {
	group_id = 133106533
}

-- Trigger变量
local defs = {
	gadget_id = 533004
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
	{ config_id = 533001, gadget_id = 70330019, pos = { x = -698.173, y = 177.598, z = 1531.965 }, rot = { x = 17.533, y = 26.390, z = 6.008 }, level = 32, persistent = true, area_id = 19 },
	{ config_id = 533002, gadget_id = 70330019, pos = { x = -705.715, y = 179.186, z = 1534.751 }, rot = { x = 340.136, y = 308.928, z = 336.477 }, level = 32, persistent = true, area_id = 19 },
	{ config_id = 533004, gadget_id = 70211102, pos = { x = -701.534, y = 177.885, z = 1535.030 }, rot = { x = 356.308, y = 201.141, z = 3.283 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1533005, name = "GADGET_STATE_CHANGE_533005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_533005", action = "action_EVENT_GADGET_STATE_CHANGE_533005", trigger_count = 0 },
	{ config_id = 1533006, name = "GADGET_STATE_CHANGE_533006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_533006" },
	{ config_id = 1533007, name = "GADGET_STATE_CHANGE_533007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_533007", action = "action_EVENT_GADGET_STATE_CHANGE_533007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 533003, gadget_id = 70330019, pos = { x = -709.251, y = 179.507, z = 1528.106 }, rot = { x = 359.531, y = 356.892, z = 348.985 }, level = 32, persistent = true, area_id = 19 }
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
		gadgets = { 533001, 533002, 533004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_533005", "GADGET_STATE_CHANGE_533006", "GADGET_STATE_CHANGE_533007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_533005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133106533, 533001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133106533, 533002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_533005(context, evt)
	-- 将configid为 533004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 533004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_533006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_533007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_533007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end