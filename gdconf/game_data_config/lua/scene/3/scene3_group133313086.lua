-- 基础信息
local base_info = {
	group_id = 133313086
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
	{ config_id = 86001, gadget_id = 70330342, pos = { x = -481.368, y = -21.772, z = 5272.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 },
	{ config_id = 86002, gadget_id = 70330430, pos = { x = -481.247, y = -21.527, z = 5272.801 }, rot = { x = 13.264, y = 155.564, z = 354.094 }, level = 32, isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1086003, name = "ANY_GADGET_DIE_86003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_86003", action = "action_EVENT_ANY_GADGET_DIE_86003" }
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
		gadgets = { 86002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_86003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_86003(context, evt)
	if 86002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_86003(context, evt)
	ScriptLib.CreateGadget(context, {config_id=86001})
	
	return 0
end