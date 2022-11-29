-- 基础信息
local base_info = {
	group_id = 133309803
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 803002, monster_id = 23010401, pos = { x = -2181.929, y = 171.352, z = 6004.606 }, rot = { x = 0.000, y = 222.711, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 27 },
	{ config_id = 803003, monster_id = 23010601, pos = { x = -2183.459, y = 171.283, z = 6007.541 }, rot = { x = 0.000, y = 250.218, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 803004, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2181.068, y = 171.091, z = 6006.387 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1803004, name = "ENTER_REGION_803004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_803004", action = "action_EVENT_ENTER_REGION_803004" }
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
		regions = { 803004 },
		triggers = { "ENTER_REGION_803004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 803002, 803003 },
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
function condition_EVENT_ENTER_REGION_803004(context, evt)
	if evt.param1 ~= 803004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_803004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309803, 2)
	
	return 0
end