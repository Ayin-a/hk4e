-- 基础信息
local base_info = {
	group_id = 133106501
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
	{ config_id = 501001, gadget_id = 70290199, pos = { x = -506.305, y = 262.844, z = 1975.786 }, rot = { x = 354.510, y = 254.195, z = 21.108 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 501003, gadget_id = 70290190, pos = { x = -514.325, y = 256.325, z = 1966.023 }, rot = { x = 21.295, y = 146.029, z = 334.518 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 501004, gadget_id = 70211101, pos = { x = -505.553, y = 263.340, z = 1975.147 }, rot = { x = 22.325, y = 242.103, z = 19.388 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 501007, gadget_id = 70290190, pos = { x = -521.198, y = 260.985, z = 1976.310 }, rot = { x = 21.295, y = 146.029, z = 334.518 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 501008, gadget_id = 70290190, pos = { x = -536.220, y = 261.791, z = 1980.861 }, rot = { x = 21.295, y = 146.029, z = 334.518 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1501006, name = "ANY_GADGET_DIE_501006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_501006", action = "action_EVENT_ANY_GADGET_DIE_501006" }
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
		gadgets = { 501001, 501003, 501004, 501007, 501008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_501006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_501006(context, evt)
	if 501001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_501006(context, evt)
	-- 将configid为 501004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 501004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end