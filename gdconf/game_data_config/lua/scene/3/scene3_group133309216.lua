-- 基础信息
local base_info = {
	group_id = 133309216
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
	{ config_id = 216001, gadget_id = 70330292, pos = { x = -2600.323, y = 155.876, z = 5255.472 }, rot = { x = 0.000, y = 37.699, z = 0.000 }, level = 32, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 216002, gadget_id = 70210102, pos = { x = -2600.322, y = 155.875, z = 5255.473 }, rot = { x = 0.000, y = 332.133, z = 0.000 }, level = 26, chest_drop_id = 1050252, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1216003, name = "ANY_GADGET_DIE_216003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_216003", action = "action_EVENT_ANY_GADGET_DIE_216003" }
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
	end_suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 216001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_216003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_216003(context, evt)
	if 216001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_216003(context, evt)
	-- 创建id为216002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 216002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end