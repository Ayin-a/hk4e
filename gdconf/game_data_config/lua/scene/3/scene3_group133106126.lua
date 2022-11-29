-- 基础信息
local base_info = {
	group_id = 133106126
}

-- Trigger变量
local defs = {
	gadget_id = 126004
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
	{ config_id = 126001, gadget_id = 70220008, pos = { x = -245.985, y = 195.712, z = 994.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 8 },
	{ config_id = 126002, gadget_id = 70220008, pos = { x = -237.437, y = 186.750, z = 991.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 8 },
	{ config_id = 126003, gadget_id = 70220008, pos = { x = -241.246, y = 186.414, z = 980.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, isOneoff = true, persistent = true, area_id = 8 },
	{ config_id = 126004, gadget_id = 70211111, pos = { x = -247.921, y = 189.008, z = 986.948 }, rot = { x = 1.117, y = 141.672, z = 4.578 }, level = 26, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126007, name = "ANY_GADGET_DIE_126007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126007", action = "action_EVENT_ANY_GADGET_DIE_126007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 126001, 126002, 126003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_126007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126007(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133106126}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126007(context, evt)
	-- 创建id为126004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end