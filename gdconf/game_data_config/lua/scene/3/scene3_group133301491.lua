-- 基础信息
local base_info = {
	group_id = 133301491
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 491001, monster_id = 26090201, pos = { x = -774.244, y = 218.046, z = 3085.568 }, rot = { x = 0.000, y = 93.136, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 23 },
	{ config_id = 491002, monster_id = 26090201, pos = { x = -779.929, y = 216.998, z = 3086.669 }, rot = { x = 0.000, y = 166.252, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 491003, monster_id = 26090201, pos = { x = -776.012, y = 218.312, z = 3080.248 }, rot = { x = 0.000, y = 58.992, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 491004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -775.038, y = 209.205, z = 3085.053 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1491004, name = "ENTER_REGION_491004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_491004", action = "action_EVENT_ENTER_REGION_491004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1491005, name = "ANY_MONSTER_DIE_491005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_491005", action = "action_EVENT_ANY_MONSTER_DIE_491005", trigger_count = 0 }
	}
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
		gadgets = { },
		regions = { 491004 },
		triggers = { "ENTER_REGION_491004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 491001, 491002, 491003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_491004(context, evt)
	if evt.param1 ~= 491004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_491004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 491002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 491003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end