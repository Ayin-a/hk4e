-- 基础信息
local base_info = {
	group_id = 133307182
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 182003, monster_id = 28060401, pos = { x = -1505.816, y = 25.910, z = 5598.880 }, rot = { x = 0.000, y = 140.518, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 182001, gadget_id = 70330430, pos = { x = -1505.303, y = 26.076, z = 5600.771 }, rot = { x = 0.000, y = 144.301, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1182002, name = "ANY_GADGET_DIE_182002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_182002", action = "action_EVENT_ANY_GADGET_DIE_182002" }
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
		gadgets = { 182001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_182002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_182002(context, evt)
	if 182001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_182002(context, evt)
	-- 创建id为182001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 182001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end