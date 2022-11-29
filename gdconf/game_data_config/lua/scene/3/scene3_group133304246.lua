-- 基础信息
local base_info = {
	group_id = 133304246
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
	{ config_id = 246002, gadget_id = 70330219, pos = { x = -1334.767, y = 275.685, z = 2863.383 }, rot = { x = 16.652, y = 109.946, z = 5.033 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 246004, gadget_id = 70360001, pos = { x = -1334.767, y = 275.685, z = 2863.383 }, rot = { x = 16.652, y = 109.946, z = 5.033 }, level = 19, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 246001, shape = RegionShape.SPHERE, radius = 30, pos = { x = -1334.767, y = 275.685, z = 2863.383 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1246003, name = "ANY_GADGET_DIE_246003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_246003", action = "action_EVENT_ANY_GADGET_DIE_246003", trigger_count = 0 }
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
		gadgets = { 246002, 246004 },
		regions = { 246001 },
		triggers = { "ANY_GADGET_DIE_246003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_246003(context, evt)
	if 246002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_246003(context, evt)
	-- 将configid为 246004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end