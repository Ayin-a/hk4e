-- 基础信息
local base_info = {
	group_id = 250075009
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
	{ config_id = 9001, gadget_id = 70290549, pos = { x = 450.348, y = 20.079, z = 513.473 }, rot = { x = 3.162, y = 24.846, z = 9.219 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 437.938, y = 15.181, z = 509.048 } }
}

-- 触发器
triggers = {
	{ config_id = 1009002, name = "ENTER_REGION_9002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_9002" }
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
		gadgets = { 9001 },
		regions = { 9002 },
		triggers = { "ENTER_REGION_9002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_9002(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end