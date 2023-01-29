-- 基础信息
local base_info = {
	group_id = 133314080
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80001, monster_id = 26090701, pos = { x = -984.105, y = 5.978, z = 4829.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 80002, monster_id = 26090601, pos = { x = -985.535, y = 5.589, z = 4836.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 80003, monster_id = 26090701, pos = { x = -983.312, y = 4.973, z = 4832.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 80004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -984.464, y = 5.894, z = 4831.174 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1080004, name = "ENTER_REGION_80004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80004", action = "action_EVENT_ENTER_REGION_80004" }
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
		regions = { 80004 },
		triggers = { "ENTER_REGION_80004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 80001, 80002, 80003 },
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
function condition_EVENT_ENTER_REGION_80004(context, evt)
	if evt.param1 ~= 80004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314080, 2)
	
	return 0
end