-- 基础信息
local base_info = {
	group_id = 133008611
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
	{ config_id = 611001, gadget_id = 70211001, pos = { x = 1157.313, y = 407.623, z = -981.337 }, rot = { x = 357.357, y = 128.633, z = 357.809 }, level = 26, drop_tag = "雪山战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 611002, gadget_id = 70211111, pos = { x = 1350.655, y = 411.152, z = -884.817 }, rot = { x = 347.116, y = 120.684, z = 352.700 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 611003, gadget_id = 70360102, pos = { x = 1350.382, y = 411.073, z = -884.936 }, rot = { x = 0.000, y = 0.000, z = 17.926 }, level = 30, area_id = 10 },
	{ config_id = 611004, gadget_id = 70211101, pos = { x = 1255.852, y = 414.770, z = -939.153 }, rot = { x = 0.246, y = 224.886, z = 359.881 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 611005, gadget_id = 70211001, pos = { x = 1108.845, y = 409.829, z = -1035.413 }, rot = { x = 347.768, y = 215.810, z = 8.245 }, level = 26, drop_tag = "雪山战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 611006, gadget_id = 70211101, pos = { x = 1214.943, y = 392.313, z = -757.574 }, rot = { x = 333.475, y = 66.992, z = 351.810 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 611007, gadget_id = 70310022, pos = { x = 907.808, y = 389.423, z = -1025.174 }, rot = { x = 15.816, y = 357.965, z = 352.905 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 611008, gadget_id = 70211101, pos = { x = 968.450, y = 398.698, z = -953.938 }, rot = { x = 338.189, y = 0.000, z = 10.725 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 611009, gadget_id = 70211001, pos = { x = 829.656, y = 401.937, z = -623.757 }, rot = { x = 335.763, y = 5.370, z = 340.231 }, level = 26, drop_tag = "雪山战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1611010, name = "ANY_GADGET_DIE_611010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_611010", action = "action_EVENT_ANY_GADGET_DIE_611010" }
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
		gadgets = { 611001, 611003, 611004, 611005, 611006, 611007, 611008, 611009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_611010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_611010(context, evt)
	if 611003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_611010(context, evt)
	-- 创建id为611002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 611002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end