-- 基础信息
local base_info = {
	group_id = 133003434
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
	{ config_id = 4107, gadget_id = 70900039, pos = { x = 2498.678, y = 203.288, z = -1132.298 }, rot = { x = 350.095, y = 331.668, z = 0.304 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 4108, gadget_id = 70220021, pos = { x = 2498.905, y = 201.792, z = -1132.124 }, rot = { x = 0.000, y = 267.502, z = 0.000 }, level = 2, isOneoff = true, area_id = 1 },
	{ config_id = 4109, gadget_id = 70211101, pos = { x = 2501.868, y = 203.053, z = -1136.782 }, rot = { x = 358.329, y = 124.568, z = 1.129 }, level = 1, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000508, name = "GADGET_STATE_CHANGE_508", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_508", action = "action_EVENT_GADGET_STATE_CHANGE_508", trigger_count = 0, tlog_tag = "新手区_主动线遗迹港口风机关_触发完成" }
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
		gadgets = { 4107, 4108 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_508" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_508(context, evt)
	if 4107 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_508(context, evt)
	-- 创建id为4109的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4109 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end