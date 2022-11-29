-- 基础信息
local base_info = {
	group_id = 133303607
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 607001, monster_id = 21020501, pos = { x = -1051.029, y = 231.389, z = 3812.264 }, rot = { x = 0.000, y = 248.440, z = 0.000 }, level = 30, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 607002, gadget_id = 70217020, pos = { x = -1046.793, y = 231.563, z = 3815.701 }, rot = { x = 5.900, y = 84.385, z = 349.905 }, level = 26, drop_tag = "摩拉石箱须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 607003, gadget_id = 70330218, pos = { x = -1045.743, y = 229.999, z = 3815.512 }, rot = { x = 335.539, y = 265.536, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 607005, gadget_id = 70310198, pos = { x = -1056.895, y = 228.802, z = 3799.669 }, rot = { x = 342.209, y = 359.440, z = 3.577 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1607004, name = "ANY_GADGET_DIE_607004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_607004", action = "action_EVENT_ANY_GADGET_DIE_607004" }
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
		monsters = { 607001 },
		gadgets = { 607002, 607003, 607005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_607004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_607004(context, evt)
	if 607003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_607004(context, evt)
	-- 将configid为 607002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 607002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end