-- 基础信息
local base_info = {
	group_id = 133105123
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 207, monster_id = 20011301, pos = { x = 724.931, y = 253.960, z = -333.273 }, rot = { x = 0.000, y = 116.628, z = 0.000 }, level = 25, drop_tag = "大史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 294, gadget_id = 70290009, pos = { x = 723.817, y = 250.369, z = -332.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 295, gadget_id = 70500000, pos = { x = 723.817, y = 250.369, z = -332.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3005, owner = 294, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 163, shape = RegionShape.SPHERE, radius = 5, pos = { x = 724.027, y = 250.459, z = -332.547 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000163, name = "ENTER_REGION_163", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_163", action = "action_EVENT_ENTER_REGION_163" }
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
		gadgets = { 294, 295 },
		regions = { 163 },
		triggers = { "ENTER_REGION_163" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_163(context, evt)
	if evt.param1 ~= 163 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_163(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 207, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end