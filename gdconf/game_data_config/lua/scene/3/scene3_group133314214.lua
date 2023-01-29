-- 基础信息
local base_info = {
	group_id = 133314214
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
	{ config_id = 214001, gadget_id = 70330340, pos = { x = -263.936, y = -38.427, z = 4712.136 }, rot = { x = 350.645, y = 34.576, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 214003, gadget_id = 70330457, pos = { x = -221.813, y = -3.239, z = 4676.712 }, rot = { x = 0.000, y = 203.895, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 214004, gadget_id = 70500000, pos = { x = -254.000, y = 3.500, z = 4653.000 }, rot = { x = 0.000, y = 47.395, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 32 },
	{ config_id = 214005, gadget_id = 70310198, pos = { x = -248.116, y = -39.085, z = 4736.037 }, rot = { x = 7.422, y = 201.648, z = 8.997 }, level = 32, area_id = 32 },
	{ config_id = 214007, gadget_id = 70330342, pos = { x = -263.082, y = -36.943, z = 4711.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1214006, name = "ANY_GADGET_DIE_214006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_214006", action = "action_EVENT_ANY_GADGET_DIE_214006" }
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
		gadgets = { 214001, 214003, 214004, 214005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_214006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_214006(context, evt)
	if 214001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_214006(context, evt)
	-- 创建id为214007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 214007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end