-- 基础信息
local base_info = {
	group_id = 133304351
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
	{ config_id = 351001, gadget_id = 70360001, pos = { x = -1713.070, y = 205.844, z = 2500.131 }, rot = { x = 15.348, y = 62.741, z = 8.632 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 351002, gadget_id = 70330219, pos = { x = -1731.941, y = 207.511, z = 2492.026 }, rot = { x = 1.176, y = 7.235, z = 352.239 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 351003, gadget_id = 70310198, pos = { x = -1701.868, y = 205.691, z = 2505.462 }, rot = { x = 0.000, y = 357.026, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 351005, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1713.070, y = 205.844, z = 2500.131 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1351006, name = "ANY_GADGET_DIE_351006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_351006", action = "action_EVENT_ANY_GADGET_DIE_351006", trigger_count = 0 }
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
		gadgets = { 351001, 351002, 351003 },
		regions = { 351005 },
		triggers = { "ANY_GADGET_DIE_351006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_351006(context, evt)
	if 351002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_351006(context, evt)
	-- 将configid为 351001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 351001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end