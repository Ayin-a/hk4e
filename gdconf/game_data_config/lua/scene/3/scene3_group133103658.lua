-- 基础信息
local base_info = {
	group_id = 133103658
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
	{ config_id = 658001, gadget_id = 70220008, pos = { x = 171.684, y = 284.367, z = 1641.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 658002, gadget_id = 70220008, pos = { x = 214.733, y = 286.266, z = 1666.246 }, rot = { x = 0.000, y = 289.433, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 658003, gadget_id = 70220008, pos = { x = 195.495, y = 283.484, z = 1621.563 }, rot = { x = 0.000, y = 283.250, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 658004, gadget_id = 70211101, pos = { x = 193.495, y = 283.976, z = 1640.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1658005, name = "ANY_GADGET_DIE_658005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_658005", action = "action_EVENT_ANY_GADGET_DIE_658005" }
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
		gadgets = { 658001, 658002, 658003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_658005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_658005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133103658}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_658005(context, evt)
	-- 创建id为658004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 658004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end