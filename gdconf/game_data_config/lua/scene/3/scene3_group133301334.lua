-- 基础信息
local base_info = {
	group_id = 133301334
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 334005, monster_id = 28060101, pos = { x = -467.356, y = 164.700, z = 3197.629 }, rot = { x = 0.000, y = 121.627, z = 0.000 }, level = 33, drop_tag = "走兽", pose_id = 1, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 334001, gadget_id = 70210105, pos = { x = -464.067, y = 172.430, z = 3180.687 }, rot = { x = 0.000, y = 177.830, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 334002, gadget_id = 70210105, pos = { x = -455.163, y = 172.430, z = 3167.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 334003, gadget_id = 70210105, pos = { x = -467.521, y = 172.430, z = 3167.604 }, rot = { x = 0.000, y = 316.228, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 334004, gadget_id = 70210105, pos = { x = -463.118, y = 164.700, z = 3192.505 }, rot = { x = 0.000, y = 316.228, z = 0.000 }, level = 26, drop_tag = "水上搜刮点须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1334006, name = "GADGET_STATE_CHANGE_334006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_334006", action = "action_EVENT_GADGET_STATE_CHANGE_334006", trigger_count = 0 }
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
		gadgets = { 334001, 334002, 334003, 334004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_334006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_334006(context, evt)
	if 334004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_334006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 334005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end