-- 基础信息
local base_info = {
	group_id = 220131017
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
	{ config_id = 17001, gadget_id = 70211001, pos = { x = 88.263, y = -6.460, z = 7.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true },
	{ config_id = 17002, gadget_id = 70211001, pos = { x = 59.426, y = 10.531, z = -61.302 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true },
	{ config_id = 17003, gadget_id = 70211011, pos = { x = 59.776, y = 10.529, z = -40.992 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true },
	{ config_id = 17004, gadget_id = 70211021, pos = { x = -19.783, y = 0.003, z = 6.832 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "战斗高级璃月", isOneoff = true, persistent = true },
	{ config_id = 17005, gadget_id = 70211011, pos = { x = 70.018, y = 10.603, z = 50.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true },
	{ config_id = 17006, gadget_id = 70211001, pos = { x = 80.930, y = 10.535, z = -53.157 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017007, name = "DUNGEON_SETTLE_17007", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_17007", action = "action_EVENT_DUNGEON_SETTLE_17007" }
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
		gadgets = { 17001, 17002, 17003, 17005, 17006 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_17007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_17007(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_17007(context, evt)
	-- 创建id为17004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 17004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end