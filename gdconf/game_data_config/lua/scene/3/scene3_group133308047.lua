-- 基础信息
local base_info = {
	group_id = 133308047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 20010801, pos = { x = -1959.591, y = 255.072, z = 4214.926 }, rot = { x = 0.000, y = 211.549, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 },
	{ config_id = 47002, monster_id = 20010801, pos = { x = -1954.355, y = 255.000, z = 4204.466 }, rot = { x = 0.000, y = 286.979, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 },
	{ config_id = 47003, monster_id = 20010801, pos = { x = -1965.304, y = 255.815, z = 4203.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 47004, shape = RegionShape.SPHERE, radius = 8.3, pos = { x = -1962.747, y = 255.000, z = 4208.738 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1047004, name = "ENTER_REGION_47004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47004", action = "action_EVENT_ENTER_REGION_47004" }
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
		regions = { 47004 },
		triggers = { "ENTER_REGION_47004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 47001, 47002, 47003 },
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
function condition_EVENT_ENTER_REGION_47004(context, evt)
	if evt.param1 ~= 47004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_47004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308047, 2)
	
	return 0
end