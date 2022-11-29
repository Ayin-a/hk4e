-- 基础信息
local base_info = {
	group_id = 166001487
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 487001, monster_id = 20011401, pos = { x = 131.007, y = 239.451, z = 425.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 487002, monster_id = 20011401, pos = { x = 130.581, y = 239.619, z = 418.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 487003, monster_id = 20011401, pos = { x = 134.387, y = 236.543, z = 428.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 487004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 131.122, y = 231.515, z = 425.286 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1487004, name = "ENTER_REGION_487004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487004", action = "action_EVENT_ENTER_REGION_487004" }
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
		regions = { 487004 },
		triggers = { "ENTER_REGION_487004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 487001, 487002, 487003 },
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
function condition_EVENT_ENTER_REGION_487004(context, evt)
	if evt.param1 ~= 487004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001487, 2)
	
	return 0
end