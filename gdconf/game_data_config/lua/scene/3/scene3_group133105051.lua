-- 基础信息
local base_info = {
	group_id = 133105051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131, monster_id = 20011401, pos = { x = 934.934, y = 262.596, z = -282.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 132, monster_id = 20011401, pos = { x = 933.278, y = 262.591, z = -282.400 }, rot = { x = 0.000, y = 70.825, z = 0.000 }, level = 23, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 133, monster_id = 20011501, pos = { x = 932.925, y = 262.577, z = -283.401 }, rot = { x = 0.000, y = 20.558, z = 0.000 }, level = 23, drop_tag = "大史莱姆", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 67, shape = RegionShape.SPHERE, radius = 5, pos = { x = 932.908, y = 262.704, z = -283.269 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000067, name = "ENTER_REGION_67", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_67", action = "action_EVENT_ENTER_REGION_67" }
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
		monsters = { 131, 132 },
		gadgets = { },
		regions = { 67 },
		triggers = { "ENTER_REGION_67" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_67(context, evt)
	if evt.param1 ~= 67 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_67(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 133, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end