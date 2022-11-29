-- 基础信息
local base_info = {
	group_id = 133003421
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
	{ config_id = 4047, gadget_id = 70220021, pos = { x = 2662.586, y = 246.332, z = -1329.256 }, rot = { x = 0.000, y = 162.520, z = 0.000 }, level = 30, isOneoff = true, area_id = 1 },
	{ config_id = 4048, gadget_id = 70211102, pos = { x = 2662.542, y = 246.309, z = -1328.953 }, rot = { x = 0.000, y = 17.259, z = 0.000 }, level = 26, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000540, name = "ANY_GADGET_DIE_540", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_540", action = "action_EVENT_ANY_GADGET_DIE_540" }
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
	rand_suite = true
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
		gadgets = { 4047, 4048 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_540" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_540(context, evt)
	if 4047 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_540(context, evt)
	-- 解锁目标4048
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4048, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end