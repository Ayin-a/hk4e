-- 基础信息
local base_info = {
	group_id = 199002102
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
	{ config_id = 102001, gadget_id = 70310332, pos = { x = 622.769, y = 126.121, z = -497.692 }, rot = { x = 0.000, y = 34.517, z = 0.000 }, level = 20, persistent = true, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1102002, name = "GADGETTALK_DONE_102002", event = EventType.EVENT_GADGETTALK_DONE, source = "6800358", condition = "", action = "action_EVENT_GADGETTALK_DONE_102002", trigger_count = 0 }
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
		gadgets = { 102001 },
		regions = { },
		triggers = { "GADGETTALK_DONE_102002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGETTALK_DONE_102002(context, evt)
	-- 将configid为 102001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 102001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end