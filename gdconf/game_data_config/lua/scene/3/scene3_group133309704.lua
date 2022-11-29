-- 基础信息
local base_info = {
	group_id = 133309704
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
	{ config_id = 704001, gadget_id = 70330312, pos = { x = -2439.400, y = 61.937, z = 5304.616 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 704003, gadget_id = 70211102, pos = { x = -2462.110, y = 61.514, z = 5307.301 }, rot = { x = 0.000, y = 90.707, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 704004, gadget_id = 70330225, pos = { x = -2468.122, y = 55.826, z = 5309.484 }, rot = { x = 0.000, y = 336.488, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1704002, name = "GADGET_STATE_CHANGE_704002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_704002", action = "action_EVENT_GADGET_STATE_CHANGE_704002", trigger_count = 0 },
	{ config_id = 1704005, name = "GADGET_STATE_CHANGE_704005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_704005", action = "action_EVENT_GADGET_STATE_CHANGE_704005", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1704006, name = "GADGET_STATE_CHANGE_704006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_704006", action = "action_EVENT_GADGET_STATE_CHANGE_704006" }
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
		gadgets = { 704001, 704003, 704004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_704002", "GADGET_STATE_CHANGE_704005", "GADGET_STATE_CHANGE_704006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_704002(context, evt)
	-- 检测config_id为704001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 704001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_704002(context, evt)
	-- 将configid为 704003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 704003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_704005(context, evt)
	-- 检测config_id为704001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 704001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_704005(context, evt)
	-- 将configid为 704003 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 704003, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_704006(context, evt)
	-- 检测config_id为704001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 704001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_704006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330312) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Engineer_Mark"