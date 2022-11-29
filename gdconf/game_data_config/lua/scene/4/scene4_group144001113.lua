-- 基础信息
local base_info = {
	group_id = 144001113
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
	{ config_id = 113001, gadget_id = 70220008, pos = { x = 823.566, y = 125.991, z = 259.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 113002, gadget_id = 70220008, pos = { x = 833.615, y = 126.003, z = 190.902 }, rot = { x = 11.738, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 113003, gadget_id = 70220008, pos = { x = 831.752, y = 122.006, z = 201.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 113004, gadget_id = 70211101, pos = { x = 821.833, y = 119.344, z = 246.137 }, rot = { x = 356.445, y = 279.105, z = 10.587 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 113006, gadget_id = 70220008, pos = { x = 823.888, y = 122.313, z = 253.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1113005, name = "ANY_GADGET_DIE_113005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_113005", action = "action_EVENT_ANY_GADGET_DIE_113005" }
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
		gadgets = { 113001, 113002, 113003, 113006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_113005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 113004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_113005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 144001113}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_113005(context, evt)
	-- 创建id为113004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 113004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end