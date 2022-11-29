-- 基础信息
local base_info = {
	group_id = 133106478
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
	{ config_id = 478001, gadget_id = 70290198, pos = { x = -602.552, y = 153.111, z = 1608.755 }, rot = { x = 0.000, y = 308.866, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 478002, gadget_id = 70290190, pos = { x = -614.790, y = 153.279, z = 1605.468 }, rot = { x = 1.771, y = 291.524, z = 348.356 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 478004, gadget_id = 70211101, pos = { x = -602.537, y = 154.368, z = 1608.103 }, rot = { x = 52.050, y = 332.134, z = 17.877 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1478006, name = "ANY_GADGET_DIE_478006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_478006", action = "action_EVENT_ANY_GADGET_DIE_478006" }
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
		gadgets = { 478001, 478002, 478004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_478006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_478006(context, evt)
	if 478001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_478006(context, evt)
	-- 将configid为 478004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 478004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end