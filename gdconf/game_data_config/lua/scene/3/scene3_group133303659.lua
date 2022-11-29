-- 基础信息
local base_info = {
	group_id = 133303659
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 659008, monster_id = 25210201, pos = { x = -1401.884, y = 284.550, z = 3727.256 }, rot = { x = 0.000, y = 56.761, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9006, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 659001, gadget_id = 70211121, pos = { x = -1413.018, y = 230.769, z = 3687.791 }, rot = { x = 0.000, y = 68.145, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 659003, gadget_id = 70330218, pos = { x = -1410.471, y = 228.606, z = 3689.094 }, rot = { x = 341.237, y = 347.700, z = 11.354 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 659004, gadget_id = 70310198, pos = { x = -1400.768, y = 284.658, z = 3728.093 }, rot = { x = 0.000, y = 259.226, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1659002, name = "ANY_GADGET_DIE_659002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_659002", action = "action_EVENT_ANY_GADGET_DIE_659002" }
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
		monsters = { 659008 },
		gadgets = { 659003, 659004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_659002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_659002(context, evt)
	if 659003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_659002(context, evt)
	-- 创建id为659001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 659001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end