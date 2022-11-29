-- 基础信息
local base_info = {
	group_id = 133308650
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 650001, monster_id = 20011401, pos = { x = -1904.833, y = 121.519, z = 4837.121 }, rot = { x = 0.000, y = 315.636, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 },
	{ config_id = 650002, monster_id = 20011401, pos = { x = -1902.913, y = 121.102, z = 4837.285 }, rot = { x = 0.000, y = 315.636, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 },
	{ config_id = 650003, monster_id = 20011401, pos = { x = -1905.100, y = 121.856, z = 4835.274 }, rot = { x = 0.000, y = 315.636, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 650004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1904.293, y = 121.569, z = 4836.342 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1650004, name = "ENTER_REGION_650004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_650004", action = "action_EVENT_ENTER_REGION_650004" }
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
		gadgets = { },
		regions = { 650004 },
		triggers = { "ENTER_REGION_650004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 650001, 650002, 650003 },
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
function condition_EVENT_ENTER_REGION_650004(context, evt)
	if evt.param1 ~= 650004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_650004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308650, 2)
	
	return 0
end