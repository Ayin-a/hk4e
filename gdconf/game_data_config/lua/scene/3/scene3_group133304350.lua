-- 基础信息
local base_info = {
	group_id = 133304350
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
	{ config_id = 350001, gadget_id = 70360001, pos = { x = -1564.925, y = 220.355, z = 2773.202 }, rot = { x = 15.348, y = 62.741, z = 8.632 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 350002, gadget_id = 70330219, pos = { x = -1576.479, y = 217.919, z = 2770.938 }, rot = { x = 10.084, y = 174.791, z = 347.889 }, level = 30, isOneoff = true, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 350005, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1566.792, y = 223.921, z = 2757.310 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1350006, name = "ANY_GADGET_DIE_350006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_350006", action = "action_EVENT_ANY_GADGET_DIE_350006", trigger_count = 0 }
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
		gadgets = { 350001, 350002 },
		regions = { 350005 },
		triggers = { "ANY_GADGET_DIE_350006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_350006(context, evt)
	if 350002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_350006(context, evt)
	-- 将configid为 350001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 350001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end