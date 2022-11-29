-- 基础信息
local base_info = {
	group_id = 133212271
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 271001, monster_id = 20011101, pos = { x = -3818.068, y = 238.425, z = -2353.133 }, rot = { x = 0.000, y = 161.635, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 13 },
	{ config_id = 271002, monster_id = 20011001, pos = { x = -3819.326, y = 238.425, z = -2355.890 }, rot = { x = 0.000, y = 161.635, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 271003, monster_id = 20011001, pos = { x = -3815.628, y = 238.425, z = -2355.099 }, rot = { x = 0.000, y = 161.635, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 271004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -3815.034, y = 238.349, z = -2362.760 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1271004, name = "ENTER_REGION_271004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_271004", action = "action_EVENT_ENTER_REGION_271004" }
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
		regions = { 271004 },
		triggers = { "ENTER_REGION_271004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 271001, 271002, 271003 },
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
function condition_EVENT_ENTER_REGION_271004(context, evt)
	if evt.param1 ~= 271004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_271004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212271, 2)
	
	return 0
end