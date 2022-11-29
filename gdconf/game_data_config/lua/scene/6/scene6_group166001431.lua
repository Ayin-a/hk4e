-- 基础信息
local base_info = {
	group_id = 166001431
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 431001, monster_id = 20011401, pos = { x = 825.445, y = 975.451, z = 752.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 431002, monster_id = 20011501, pos = { x = 838.451, y = 976.088, z = 750.104 }, rot = { x = 0.000, y = 40.607, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 300 },
	{ config_id = 431003, monster_id = 20011401, pos = { x = 847.798, y = 976.050, z = 743.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 431004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 836.954, y = 968.084, z = 750.127 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1431004, name = "ENTER_REGION_431004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_431004", action = "action_EVENT_ENTER_REGION_431004" }
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
		regions = { 431004 },
		triggers = { "ENTER_REGION_431004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 431001, 431002, 431003 },
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
function condition_EVENT_ENTER_REGION_431004(context, evt)
	if evt.param1 ~= 431004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_431004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001431, 2)
	
	return 0
end