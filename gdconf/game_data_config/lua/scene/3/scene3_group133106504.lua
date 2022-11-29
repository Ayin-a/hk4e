-- 基础信息
local base_info = {
	group_id = 133106504
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
	{ config_id = 504001, gadget_id = 70290199, pos = { x = -414.296, y = 220.804, z = 1756.330 }, rot = { x = 358.503, y = 251.924, z = 354.281 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 504002, gadget_id = 70290190, pos = { x = -441.414, y = 208.476, z = 1767.228 }, rot = { x = 348.192, y = 152.528, z = 338.518 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 504003, gadget_id = 70290191, pos = { x = -433.256, y = 214.203, z = 1775.303 }, rot = { x = 345.133, y = 144.140, z = 340.457 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 504004, gadget_id = 70211111, pos = { x = -413.497, y = 222.553, z = 1755.538 }, rot = { x = 23.559, y = 270.446, z = 27.363 }, level = 26, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 504005, gadget_id = 70290191, pos = { x = -424.435, y = 218.186, z = 1765.187 }, rot = { x = 336.208, y = 103.367, z = 354.524 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 504007, gadget_id = 70290190, pos = { x = -433.515, y = 213.544, z = 1744.829 }, rot = { x = 345.302, y = 120.838, z = 1.670 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 504008, gadget_id = 70290191, pos = { x = -420.667, y = 217.899, z = 1743.579 }, rot = { x = 17.853, y = 314.703, z = 16.878 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1504006, name = "ANY_GADGET_DIE_504006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_504006", action = "action_EVENT_ANY_GADGET_DIE_504006" }
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
		gadgets = { 504001, 504002, 504003, 504004, 504005, 504007, 504008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_504006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_504006(context, evt)
	if 504001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_504006(context, evt)
	-- 将configid为 504004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 504004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end