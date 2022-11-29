-- 基础信息
local base_info = {
	group_id = 166001414
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
	{ config_id = 414001, gadget_id = 70900049, pos = { x = 826.372, y = 705.790, z = 506.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 414002, gadget_id = 70900049, pos = { x = 834.378, y = 703.850, z = 480.170 }, rot = { x = 0.000, y = 327.601, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 414003, gadget_id = 70900049, pos = { x = 832.292, y = 703.793, z = 435.112 }, rot = { x = 0.000, y = 0.000, z = 28.189 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 414004, gadget_id = 70211122, pos = { x = 822.458, y = 705.946, z = 480.267 }, rot = { x = 0.000, y = 237.088, z = 0.000 }, level = 26, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 414008, gadget_id = 70220021, pos = { x = 826.344, y = 705.274, z = 505.786 }, rot = { x = 11.478, y = 358.664, z = 353.321 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1414005, name = "GADGET_STATE_CHANGE_414005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_414005", action = "action_EVENT_GADGET_STATE_CHANGE_414005" },
	{ config_id = 1414006, name = "GADGET_STATE_CHANGE_414006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_414006" },
	{ config_id = 1414007, name = "ANY_GADGET_DIE_414007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_414007", action = "action_EVENT_ANY_GADGET_DIE_414007" }
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
		gadgets = { 414001, 414002, 414003, 414004, 414008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_414005", "GADGET_STATE_CHANGE_414006", "ANY_GADGET_DIE_414007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_414005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001414, 414001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001414, 414002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001414, 414003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_414005(context, evt)
	-- 将configid为 414004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 414004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_414006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_414007(context, evt)
	if 414008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_414007(context, evt)
	-- 将configid为 414001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 414001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end