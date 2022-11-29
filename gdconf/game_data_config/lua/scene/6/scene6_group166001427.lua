-- 基础信息
local base_info = {
	group_id = 166001427
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 427001, monster_id = 20010601, pos = { x = 653.616, y = 707.302, z = 366.505 }, rot = { x = 0.000, y = 213.288, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 },
	{ config_id = 427002, monster_id = 20010701, pos = { x = 656.554, y = 707.162, z = 363.043 }, rot = { x = 0.000, y = 213.288, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 },
	{ config_id = 427003, monster_id = 20010601, pos = { x = 660.404, y = 707.602, z = 370.290 }, rot = { x = 0.000, y = 213.288, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 427004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 654.106, y = 706.930, z = 364.185 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1427004, name = "ENTER_REGION_427004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_427004", action = "action_EVENT_ENTER_REGION_427004" }
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
		regions = { 427004 },
		triggers = { "ENTER_REGION_427004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 427001, 427002, 427003 },
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
function condition_EVENT_ENTER_REGION_427004(context, evt)
	if evt.param1 ~= 427004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_427004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001427, 2)
	
	return 0
end