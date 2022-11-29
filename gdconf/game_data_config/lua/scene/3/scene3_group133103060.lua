-- 基础信息
local base_info = {
	group_id = 133103060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44, monster_id = 28020102, pos = { x = 1113.029, y = 356.648, z = 1640.068 }, rot = { x = 0.000, y = 127.682, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 45, monster_id = 28020102, pos = { x = 1114.918, y = 356.515, z = 1640.728 }, rot = { x = 0.000, y = 221.795, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 46, monster_id = 28020102, pos = { x = 1114.109, y = 356.342, z = 1638.124 }, rot = { x = 0.000, y = 349.285, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 224, gadget_id = 70211101, pos = { x = 1114.128, y = 356.469, z = 1639.372 }, rot = { x = 0.000, y = 63.263, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 69, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1113.771, y = 357.242, z = 1639.408 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1000069, name = "ENTER_REGION_69", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_69", action = "action_EVENT_ENTER_REGION_69" }
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
		monsters = { 44, 45, 46 },
		gadgets = { },
		regions = { 69 },
		triggers = { "ENTER_REGION_69" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_69(context, evt)
	if evt.param1 ~= 69 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_69(context, evt)
	-- 创建id为224的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 224 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end