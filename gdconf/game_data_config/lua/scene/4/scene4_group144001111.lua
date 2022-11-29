-- 基础信息
local base_info = {
	group_id = 144001111
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
	{ config_id = 111001, gadget_id = 70220008, pos = { x = 60.278, y = 141.494, z = 265.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 111002, gadget_id = 70220008, pos = { x = 63.785, y = 135.429, z = 258.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 111003, gadget_id = 70220008, pos = { x = 36.391, y = 128.596, z = 280.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 111004, gadget_id = 70211101, pos = { x = 58.406, y = 120.192, z = 263.694 }, rot = { x = 0.000, y = 272.255, z = 357.192 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1111005, name = "ANY_GADGET_DIE_111005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_111005", action = "action_EVENT_ANY_GADGET_DIE_111005" }
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
		gadgets = { 111001, 111002, 111003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_111005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 111004 },
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
function condition_EVENT_ANY_GADGET_DIE_111005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 144001111}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_111005(context, evt)
	-- 创建id为111004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 111004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end