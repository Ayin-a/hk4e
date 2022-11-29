-- 基础信息
local base_info = {
	group_id = 133304352
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
	{ config_id = 352001, gadget_id = 70360001, pos = { x = -1244.136, y = 303.709, z = 2069.832 }, rot = { x = 15.348, y = 62.741, z = 8.632 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 352002, gadget_id = 70330219, pos = { x = -1246.000, y = 303.964, z = 2068.012 }, rot = { x = 0.170, y = 19.535, z = 6.870 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 352003, gadget_id = 70310198, pos = { x = -1231.935, y = 305.330, z = 2071.276 }, rot = { x = 18.168, y = 41.700, z = 6.771 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 352005, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1244.136, y = 303.709, z = 2069.832 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1352006, name = "ANY_GADGET_DIE_352006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_352006", action = "action_EVENT_ANY_GADGET_DIE_352006", trigger_count = 0 }
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
		gadgets = { 352001, 352002, 352003 },
		regions = { 352005 },
		triggers = { "ANY_GADGET_DIE_352006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_352006(context, evt)
	if 352002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_352006(context, evt)
	-- 将configid为 352001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 352001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end