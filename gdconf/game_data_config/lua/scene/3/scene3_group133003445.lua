-- 基础信息
local base_info = {
	group_id = 133003445
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1480, monster_id = 20011201, pos = { x = 2376.097, y = 213.579, z = -1094.149 }, rot = { x = 0.000, y = 92.353, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1481, monster_id = 20011201, pos = { x = 2379.107, y = 213.075, z = -1090.745 }, rot = { x = 0.000, y = 92.353, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1482, monster_id = 20011201, pos = { x = 2375.988, y = 213.634, z = -1092.223 }, rot = { x = 0.000, y = 92.353, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4186, gadget_id = 70220019, pos = { x = 2377.984, y = 213.170, z = -1092.622 }, rot = { x = 0.000, y = 299.951, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 4187, gadget_id = 70211101, pos = { x = 2378.014, y = 219.644, z = -1092.666 }, rot = { x = 0.000, y = 121.337, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 538, shape = RegionShape.SPHERE, radius = 1.7, pos = { x = 2378.275, y = 220.666, z = -1092.722 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000538, name = "ENTER_REGION_538", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_538", action = "", tlog_tag = "新手区尝试拿石柱上宝箱" }
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
	rand_suite = true
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
		monsters = { 1480, 1481, 1482 },
		gadgets = { 4186, 4187 },
		regions = { 538 },
		triggers = { "ENTER_REGION_538" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_538(context, evt)
	if evt.param1 ~= 538 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end