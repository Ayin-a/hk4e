-- 基础信息
local base_info = {
	group_id = 133212107
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 107001, monster_id = 20011101, pos = { x = -3981.243, y = 200.414, z = -2431.324 }, rot = { x = 0.000, y = 324.310, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 13 },
	{ config_id = 107002, monster_id = 20011101, pos = { x = -3979.691, y = 200.414, z = -2427.108 }, rot = { x = 0.000, y = 289.779, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 13 },
	{ config_id = 107003, monster_id = 20011101, pos = { x = -3985.573, y = 200.414, z = -2432.089 }, rot = { x = 0.000, y = 347.902, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 107004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3982.374, y = 200.414, z = -2429.615 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1107004, name = "ENTER_REGION_107004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107004", action = "action_EVENT_ENTER_REGION_107004" }
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
		regions = { 107004 },
		triggers = { "ENTER_REGION_107004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 107001, 107002, 107003 },
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
function condition_EVENT_ENTER_REGION_107004(context, evt)
	if evt.param1 ~= 107004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212107, 2)
	
	return 0
end