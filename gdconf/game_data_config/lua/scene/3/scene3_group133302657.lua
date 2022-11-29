-- 基础信息
local base_info = {
	group_id = 133302657
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
	{ config_id = 657001, gadget_id = 70330218, pos = { x = -86.850, y = 158.605, z = 2598.796 }, rot = { x = 0.367, y = 152.316, z = 351.479 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 657003, gadget_id = 70217020, pos = { x = -96.016, y = 162.146, z = 2569.028 }, rot = { x = 0.000, y = 105.092, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	{ config_id = 657004, gadget_id = 70211101, pos = { x = -88.440, y = 158.789, z = 2598.550 }, rot = { x = 0.132, y = 162.394, z = 0.507 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1657002, name = "ANY_GADGET_DIE_657002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_657002", action = "action_EVENT_ANY_GADGET_DIE_657002" }
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
		gadgets = { 657001, 657003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_657002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_657002(context, evt)
	if 657001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_657002(context, evt)
	-- 创建id为657004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 657004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end