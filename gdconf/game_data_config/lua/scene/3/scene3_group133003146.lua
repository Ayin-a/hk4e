-- 基础信息
local base_info = {
	group_id = 133003146
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
	{ config_id = 3445, gadget_id = 70310004, pos = { x = 2515.591, y = 267.262, z = -1435.283 }, rot = { x = 0.000, y = 55.554, z = 353.444 }, level = 2, area_id = 1 },
	{ config_id = 3446, gadget_id = 70211111, pos = { x = 2514.927, y = 267.696, z = -1430.361 }, rot = { x = 0.000, y = 168.194, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000501, name = "GADGET_STATE_CHANGE_501", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_501" }
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
		gadgets = { 3445 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_501" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_501(context, evt)
	-- 创建id为3446的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3446 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end