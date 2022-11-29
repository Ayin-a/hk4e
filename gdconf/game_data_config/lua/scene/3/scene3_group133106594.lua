-- 基础信息
local base_info = {
	group_id = 133106594
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
	{ config_id = 594001, gadget_id = 70290192, pos = { x = -543.764, y = 312.166, z = 2022.489 }, rot = { x = 22.554, y = 122.637, z = 331.154 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 594002, gadget_id = 70290190, pos = { x = -520.175, y = 294.998, z = 1999.937 }, rot = { x = 330.910, y = 311.562, z = 31.560 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 594003, gadget_id = 70290191, pos = { x = -528.491, y = 311.065, z = 2019.796 }, rot = { x = 319.334, y = 359.196, z = 2.169 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 594004, gadget_id = 70211121, pos = { x = -544.336, y = 311.905, z = 2021.415 }, rot = { x = 33.638, y = 173.973, z = 1.164 }, level = 26, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 594005, gadget_id = 70330021, pos = { x = -512.208, y = 299.087, z = 2003.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 594007, gadget_id = 70290191, pos = { x = -534.266, y = 305.638, z = 2013.293 }, rot = { x = 33.045, y = 141.631, z = 334.723 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 594008, gadget_id = 70290191, pos = { x = -544.540, y = 304.034, z = 2009.992 }, rot = { x = 359.009, y = 273.674, z = 40.704 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 594009, gadget_id = 70290191, pos = { x = -534.543, y = 298.118, z = 2003.427 }, rot = { x = 359.009, y = 273.674, z = 40.704 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 594010, gadget_id = 70290191, pos = { x = -521.111, y = 304.712, z = 2011.070 }, rot = { x = 31.341, y = 160.749, z = 344.780 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 594011, gadget_id = 70330021, pos = { x = -511.545, y = 302.274, z = 2006.506 }, rot = { x = 316.587, y = 18.381, z = 4.110 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1594006, name = "ANY_GADGET_DIE_594006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_594006", action = "action_EVENT_ANY_GADGET_DIE_594006" }
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
		gadgets = { 594001, 594002, 594003, 594004, 594005, 594007, 594008, 594009, 594010, 594011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_594006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_594006(context, evt)
	if 594001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_594006(context, evt)
	-- 将configid为 594004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 594004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end