-- 基础信息
local base_info = {
	group_id = 133102325
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 325002, monster_id = 20011401, pos = { x = 1668.716, y = 208.177, z = 89.390 }, rot = { x = 0.000, y = 97.590, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 325003, monster_id = 20011401, pos = { x = 1657.981, y = 208.194, z = 92.700 }, rot = { x = 0.000, y = 111.658, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 325004, monster_id = 20011401, pos = { x = 1649.689, y = 208.194, z = 96.168 }, rot = { x = 0.000, y = 116.147, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 325005, gadget_id = 70211101, pos = { x = 1690.086, y = 204.555, z = 81.501 }, rot = { x = 0.000, y = 293.735, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 325001, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1669.692, y = 204.541, z = 87.749 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1325001, name = "ENTER_REGION_325001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_325001", action = "action_EVENT_ENTER_REGION_325001" }
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
		gadgets = { 325005 },
		regions = { 325001 },
		triggers = { "ENTER_REGION_325001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_325001(context, evt)
	if evt.param1 ~= 325001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_325001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 325002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 325003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 325004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end