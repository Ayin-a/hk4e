-- 基础信息
local base_info = {
	group_id = 133106558
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 558003, monster_id = 20011401, pos = { x = -729.591, y = 131.704, z = 1629.544 }, rot = { x = 0.000, y = 338.601, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 558001, gadget_id = 70290200, pos = { x = -788.716, y = 128.067, z = 1614.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 558004, gadget_id = 70210101, pos = { x = -797.736, y = 135.785, z = 1598.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 19 },
	{ config_id = 558005, gadget_id = 70210101, pos = { x = -797.709, y = 135.843, z = 1598.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 19 },
	{ config_id = 558009, gadget_id = 70210101, pos = { x = -801.039, y = 129.327, z = 1626.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 558010, gadget_id = 70210101, pos = { x = -748.364, y = 150.436, z = 1607.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 19 },
	{ config_id = 558025, gadget_id = 70210101, pos = { x = -729.962, y = 131.566, z = 1629.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 558028, gadget_id = 70210101, pos = { x = -766.040, y = 143.264, z = 1617.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1558002, name = "GADGET_STATE_CHANGE_558002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_558002", action = "action_EVENT_GADGET_STATE_CHANGE_558002" }
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
		gadgets = { 558001, 558004, 558005, 558009, 558010, 558025, 558028 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_558002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_558002(context, evt)
	if 558025 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_558002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 558003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end