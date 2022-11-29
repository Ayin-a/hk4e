-- 基础信息
local base_info = {
	group_id = 220134059
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 59001, gadget_id = 70310448, pos = { x = 204.888, y = 640.130, z = -1794.254 }, rot = { x = 1.075, y = 3.229, z = 359.170 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 59002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 204.955, y = 634.377, z = -1778.523 } }
}

-- 触发器
triggers = {
	{ config_id = 1059002, name = "ENTER_REGION_59002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59002", action = "action_EVENT_ENTER_REGION_59002", trigger_count = 0 }
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
		regions = { 59002 },
		triggers = { "ENTER_REGION_59002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_59002(context, evt)
	if evt.param1 ~= 59002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59002(context, evt)
	-- 创建id为59001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 59001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end