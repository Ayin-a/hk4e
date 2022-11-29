-- 基础信息
local base_info = {
	group_id = 133008316
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 316001, monster_id = 26060301, pos = { x = 1057.954, y = 199.152, z = -1260.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "雷萤", climate_area_id = 1, area_id = 10 },
	{ config_id = 316002, monster_id = 26060301, pos = { x = 1059.442, y = 199.152, z = -1261.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "雷萤", climate_area_id = 1, area_id = 10 },
	{ config_id = 316003, monster_id = 26060301, pos = { x = 1056.471, y = 199.152, z = -1261.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "雷萤", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 316005, gadget_id = 70211101, pos = { x = 1047.052, y = 200.955, z = -1259.985 }, rot = { x = 340.324, y = 101.469, z = 336.463 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 316004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1057.944, y = 199.152, z = -1261.313 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1316004, name = "ENTER_REGION_316004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_316004", action = "action_EVENT_ENTER_REGION_316004" }
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
		gadgets = { 316005 },
		regions = { 316004 },
		triggers = { "ENTER_REGION_316004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 316001, 316002, 316003 },
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
function condition_EVENT_ENTER_REGION_316004(context, evt)
	if evt.param1 ~= 316004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_316004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008316, 2)
	
	return 0
end