-- 基础信息
local base_info = {
	group_id = 133106508
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
	{ config_id = 508001, gadget_id = 70290199, pos = { x = -590.922, y = 338.932, z = 2056.992 }, rot = { x = 354.848, y = 198.399, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 508002, gadget_id = 70290190, pos = { x = -618.041, y = 348.067, z = 2060.681 }, rot = { x = 335.223, y = 2.907, z = 346.564 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 508003, gadget_id = 70290191, pos = { x = -606.943, y = 342.722, z = 2055.004 }, rot = { x = 27.023, y = 169.011, z = 7.353 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 508004, gadget_id = 70211111, pos = { x = -590.971, y = 339.936, z = 2057.466 }, rot = { x = 15.387, y = 198.972, z = 17.012 }, level = 26, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 508005, gadget_id = 70330021, pos = { x = -570.250, y = 339.572, z = 2052.420 }, rot = { x = 317.593, y = 2.245, z = 354.216 }, level = 36, area_id = 19 },
	{ config_id = 508007, gadget_id = 70290190, pos = { x = -594.733, y = 337.824, z = 2050.397 }, rot = { x = 2.258, y = 240.432, z = 24.639 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1508006, name = "ANY_GADGET_DIE_508006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_508006", action = "action_EVENT_ANY_GADGET_DIE_508006" }
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
		gadgets = { 508001, 508002, 508003, 508004, 508005, 508007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_508006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_508006(context, evt)
	if 508001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_508006(context, evt)
	-- 将configid为 508004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 508004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end