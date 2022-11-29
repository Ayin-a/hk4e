-- 基础信息
local base_info = {
	group_id = 199004181
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181001, monster_id = 20011501, pos = { x = -448.380, y = 120.236, z = -605.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 181002, monster_id = 20011501, pos = { x = -443.890, y = 120.236, z = -598.612 }, rot = { x = 0.000, y = 243.104, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 181003, monster_id = 20011501, pos = { x = -451.474, y = 120.236, z = -598.147 }, rot = { x = 0.000, y = 144.694, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 181004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -448.432, y = 120.141, z = -600.980 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1181004, name = "ENTER_REGION_181004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_181004", action = "action_EVENT_ENTER_REGION_181004" }
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
		regions = { 181004 },
		triggers = { "ENTER_REGION_181004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 181001, 181002, 181003 },
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
function condition_EVENT_ENTER_REGION_181004(context, evt)
	if evt.param1 ~= 181004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_181004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004181, 2)
	
	return 0
end