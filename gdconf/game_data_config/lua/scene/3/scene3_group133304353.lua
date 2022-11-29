-- 基础信息
local base_info = {
	group_id = 133304353
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
	{ config_id = 353001, gadget_id = 70360001, pos = { x = -1424.882, y = 310.397, z = 2185.133 }, rot = { x = 15.348, y = 62.741, z = 8.632 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 353002, gadget_id = 70330219, pos = { x = -1414.215, y = 306.210, z = 2180.003 }, rot = { x = 344.850, y = 350.571, z = 333.757 }, level = 30, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 353003, gadget_id = 70310198, pos = { x = -1406.823, y = 303.917, z = 2183.497 }, rot = { x = 17.130, y = 38.829, z = 353.549 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 353005, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1417.580, y = 312.664, z = 2170.922 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1353006, name = "ANY_GADGET_DIE_353006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_353006", action = "action_EVENT_ANY_GADGET_DIE_353006", trigger_count = 0 }
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
		gadgets = { 353001, 353002, 353003 },
		regions = { 353005 },
		triggers = { "ANY_GADGET_DIE_353006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_353006(context, evt)
	if 353002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_353006(context, evt)
	-- 将configid为 353001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end