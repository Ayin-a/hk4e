-- 基础信息
local base_info = {
	group_id = 133106476
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
	{ config_id = 476001, gadget_id = 70290198, pos = { x = -537.766, y = 174.746, z = 1602.440 }, rot = { x = 346.198, y = 316.839, z = 8.853 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 476002, gadget_id = 70290190, pos = { x = -561.143, y = 173.709, z = 1585.598 }, rot = { x = 6.751, y = 260.620, z = 351.736 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 476003, gadget_id = 70290191, pos = { x = -550.900, y = 173.513, z = 1595.838 }, rot = { x = 13.116, y = 0.718, z = 6.242 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 476004, gadget_id = 70211101, pos = { x = -538.029, y = 175.529, z = 1602.109 }, rot = { x = 15.417, y = 294.202, z = 4.001 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 476005, gadget_id = 70330021, pos = { x = -565.120, y = 172.187, z = 1605.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1476006, name = "ANY_GADGET_DIE_476006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_476006", action = "action_EVENT_ANY_GADGET_DIE_476006" }
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
		gadgets = { 476001, 476002, 476003, 476004, 476005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_476006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_476006(context, evt)
	if 476001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_476006(context, evt)
	-- 将configid为 476004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 476004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end