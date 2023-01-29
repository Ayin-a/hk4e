-- 基础信息
local base_info = {
	group_id = 133308769
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 769002, monster_id = 26090701, pos = { x = -1512.590, y = 79.402, z = 5023.852 }, rot = { x = 0.000, y = 244.226, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 769003, monster_id = 26090701, pos = { x = -1506.907, y = 78.593, z = 5027.370 }, rot = { x = 0.000, y = 240.747, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 769004, monster_id = 26090601, pos = { x = -1518.778, y = 80.499, z = 5023.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 769001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1513.741, y = 80.127, z = 5022.925 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1769001, name = "ENTER_REGION_769001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_769001", action = "action_EVENT_ENTER_REGION_769001" }
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
		regions = { 769001 },
		triggers = { "ENTER_REGION_769001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 769002, 769003, 769004 },
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
function condition_EVENT_ENTER_REGION_769001(context, evt)
	if evt.param1 ~= 769001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_769001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308769, 2)
	
	return 0
end