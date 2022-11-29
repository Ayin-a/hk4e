-- 基础信息
local base_info = {
	group_id = 133302479
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
	{ config_id = 479002, gadget_id = 70310200, pos = { x = -800.461, y = 209.686, z = 2665.181 }, rot = { x = 0.000, y = 220.198, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 479003, gadget_id = 70310198, pos = { x = -795.426, y = 211.817, z = 2681.152 }, rot = { x = 9.482, y = 213.227, z = 4.262 }, level = 27, area_id = 24 },
	{ config_id = 479005, gadget_id = 70211001, pos = { x = -800.640, y = 210.873, z = 2679.751 }, rot = { x = 359.952, y = 159.812, z = 0.163 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1479004, name = "GADGET_STATE_CHANGE_479004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_479004", action = "action_EVENT_GADGET_STATE_CHANGE_479004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1479006, name = "GADGET_STATE_CHANGE_479006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_479006", action = "action_EVENT_GADGET_STATE_CHANGE_479006" }
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
		gadgets = { 479002, 479003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_479004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_479004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302479, 479002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_479004(context, evt)
	-- 创建id为479005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 479005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end