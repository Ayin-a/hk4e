-- 基础信息
local base_info = {
	group_id = 133106562
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
	{ config_id = 562001, gadget_id = 70290192, pos = { x = -413.195, y = 245.734, z = 1889.693 }, rot = { x = 355.016, y = 49.819, z = 9.438 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 562002, gadget_id = 70290191, pos = { x = -399.343, y = 247.143, z = 1887.588 }, rot = { x = 0.000, y = 243.568, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 562003, gadget_id = 70290191, pos = { x = -413.422, y = 246.152, z = 1904.809 }, rot = { x = 0.000, y = 217.634, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 562004, gadget_id = 70211121, pos = { x = -413.430, y = 245.886, z = 1890.450 }, rot = { x = 357.323, y = 55.895, z = 7.175 }, level = 26, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 562007, gadget_id = 70290191, pos = { x = -402.318, y = 246.634, z = 1899.254 }, rot = { x = 0.000, y = 6.362, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 562008, gadget_id = 70290191, pos = { x = -402.866, y = 247.208, z = 1912.652 }, rot = { x = 0.000, y = 6.362, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 562010, gadget_id = 70290190, pos = { x = -389.606, y = 248.290, z = 1894.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 562011, gadget_id = 70290190, pos = { x = -390.895, y = 248.447, z = 1915.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1562006, name = "ANY_GADGET_DIE_562006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_562006", action = "action_EVENT_ANY_GADGET_DIE_562006" }
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
		gadgets = { 562001, 562002, 562003, 562004, 562007, 562008, 562010, 562011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_562006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_562006(context, evt)
	if 562001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_562006(context, evt)
	-- 将configid为 562004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 562004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end