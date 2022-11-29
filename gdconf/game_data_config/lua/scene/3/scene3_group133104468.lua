-- 基础信息
local base_info = {
	group_id = 133104468
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
	{ config_id = 468001, gadget_id = 70220008, pos = { x = 35.272, y = 247.922, z = 437.108 }, rot = { x = 5.367, y = 359.489, z = 349.121 }, level = 19, isOneoff = true, area_id = 9 },
	{ config_id = 468002, gadget_id = 70220008, pos = { x = 33.537, y = 248.261, z = 432.739 }, rot = { x = 0.746, y = 359.941, z = 350.906 }, level = 19, isOneoff = true, area_id = 9 },
	{ config_id = 468003, gadget_id = 70220008, pos = { x = 37.059, y = 247.733, z = 433.443 }, rot = { x = 2.700, y = 359.833, z = 352.908 }, level = 19, isOneoff = true, area_id = 9 },
	{ config_id = 468004, gadget_id = 70211111, pos = { x = 35.487, y = 247.928, z = 434.643 }, rot = { x = 0.060, y = 359.994, z = 348.867 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1468005, name = "ANY_GADGET_DIE_468005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_468005", action = "action_EVENT_ANY_GADGET_DIE_468005", trigger_count = 0 }
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
		gadgets = { 468001, 468002, 468003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_468005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_468005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133104468}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_468005(context, evt)
	-- 创建id为468004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 468004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end