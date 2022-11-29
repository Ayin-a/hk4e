-- 基础信息
local base_info = {
	group_id = 133301397
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 397001, monster_id = 26090401, pos = { x = -714.183, y = 275.036, z = 3317.141 }, rot = { x = 0.000, y = 192.014, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 23 },
	{ config_id = 397002, monster_id = 26090401, pos = { x = -720.609, y = 275.059, z = 3318.226 }, rot = { x = 0.000, y = 172.995, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 397003, monster_id = 26090401, pos = { x = -721.788, y = 275.051, z = 3312.274 }, rot = { x = 0.000, y = 65.734, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 397006, monster_id = 26090401, pos = { x = -717.014, y = 274.929, z = 3309.824 }, rot = { x = 0.000, y = 172.995, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 397007, monster_id = 26090401, pos = { x = -713.444, y = 275.085, z = 3312.317 }, rot = { x = 0.000, y = 65.734, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 397004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -717.858, y = 268.830, z = 3315.362 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1397004, name = "ENTER_REGION_397004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_397004", action = "action_EVENT_ENTER_REGION_397004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1397005, name = "ANY_MONSTER_DIE_397005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_397005", action = "action_EVENT_ANY_MONSTER_DIE_397005", trigger_count = 0 }
	}
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
		regions = { 397004 },
		triggers = { "ENTER_REGION_397004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 397001, 397002, 397003, 397006, 397007 },
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
function condition_EVENT_ENTER_REGION_397004(context, evt)
	if evt.param1 ~= 397004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_397004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301397, 2)
	
	return 0
end