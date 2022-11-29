-- 基础信息
local base_info = {
	group_id = 133103656
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 656001, monster_id = 20010701, pos = { x = 114.673, y = 301.137, z = 1795.871 }, rot = { x = 0.000, y = 127.971, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 656002, monster_id = 20010601, pos = { x = 113.583, y = 302.614, z = 1799.422 }, rot = { x = 0.000, y = 180.677, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 656003, monster_id = 20010601, pos = { x = 108.307, y = 300.408, z = 1795.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 656004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 112.250, y = 300.799, z = 1795.952 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1656004, name = "ENTER_REGION_656004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_656004", action = "action_EVENT_ENTER_REGION_656004" }
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
		regions = { 656004 },
		triggers = { "ENTER_REGION_656004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 656001, 656002, 656003 },
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
function condition_EVENT_ENTER_REGION_656004(context, evt)
	if evt.param1 ~= 656004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_656004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103656, 2)
	
	return 0
end