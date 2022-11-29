-- 基础信息
local base_info = {
	group_id = 133103225
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 225003, monster_id = 28030101, pos = { x = 919.645, y = 396.813, z = 1356.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 225004, monster_id = 28030101, pos = { x = 916.896, y = 395.138, z = 1354.562 }, rot = { x = 0.000, y = 58.794, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 225002, gadget_id = 70211101, pos = { x = 919.721, y = 396.535, z = 1357.566 }, rot = { x = 353.512, y = 180.884, z = 354.324 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 225001, shape = RegionShape.SPHERE, radius = 3, pos = { x = 919.605, y = 396.703, z = 1356.902 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1225001, name = "ENTER_REGION_225001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_225001", action = "action_EVENT_ENTER_REGION_225001" }
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
		-- description = suite_1,
		monsters = { 225003, 225004 },
		gadgets = { },
		regions = { 225001 },
		triggers = { "ENTER_REGION_225001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_225001(context, evt)
	if evt.param1 ~= 225001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_225001(context, evt)
	-- 创建id为225002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 225002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end