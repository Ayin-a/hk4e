-- 基础信息
local base_info = {
	group_id = 133105064
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 145, monster_id = 21010701, pos = { x = 590.796, y = 294.785, z = -237.550 }, rot = { x = 0.000, y = 78.080, z = 0.000 }, level = 25, drop_tag = "丘丘人", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 130, gadget_id = 70300089, pos = { x = 592.368, y = 294.649, z = -236.856 }, rot = { x = 0.000, y = 154.557, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 131, gadget_id = 70211001, pos = { x = 593.688, y = 294.972, z = -237.982 }, rot = { x = 355.240, y = 359.296, z = 16.824 }, level = 21, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 87, shape = RegionShape.CUBIC, size = { x = 6.210, y = 4.230, z = 16.390 }, pos = { x = 592.311, y = 294.625, z = -236.951 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000087, name = "ENTER_REGION_87", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_87", action = "action_EVENT_ENTER_REGION_87" },
	{ config_id = 1000088, name = "ANY_GADGET_DIE_88", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_88", action = "action_EVENT_ANY_GADGET_DIE_88" }
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
		gadgets = { 130 },
		regions = { 87 },
		triggers = { "ENTER_REGION_87", "ANY_GADGET_DIE_88" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_87(context, evt)
	if evt.param1 ~= 87 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_87(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 145, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_88(context, evt)
	if 130 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_88(context, evt)
	-- 创建id为131的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 131 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end