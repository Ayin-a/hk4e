-- 基础信息
local base_info = {
	group_id = 133313178
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 178003, monster_id = 26090201, pos = { x = -732.046, y = -280.462, z = 5992.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 178004, monster_id = 26090201, pos = { x = -736.334, y = -280.370, z = 5991.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 178005, monster_id = 26090901, pos = { x = -736.520, y = -278.126, z = 5998.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 178001, gadget_id = 70330435, pos = { x = -735.316, y = -279.356, z = 5995.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 178002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -735.759, y = -278.859, z = 5994.969 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1178002, name = "ENTER_REGION_178002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_178002", action = "action_EVENT_ENTER_REGION_178002" }
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
		gadgets = { 178001 },
		regions = { 178002 },
		triggers = { "ENTER_REGION_178002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 178003, 178004, 178005 },
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
function condition_EVENT_ENTER_REGION_178002(context, evt)
	if evt.param1 ~= 178002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_178002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313178, 2)
	
	return 0
end