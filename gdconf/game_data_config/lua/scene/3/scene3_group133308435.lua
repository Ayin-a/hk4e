-- 基础信息
local base_info = {
	group_id = 133308435
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
	{ config_id = 435001, gadget_id = 70330457, pos = { x = -1495.185, y = 109.271, z = 4429.905 }, rot = { x = 0.000, y = 9.000, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 435002, shape = RegionShape.CYLINDER, radius = 115, pos = { x = -1493.000, y = 105.000, z = 4432.000 }, height = 500.000, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1435002, name = "ENTER_REGION_435002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_435002", action = "action_EVENT_ENTER_REGION_435002", trigger_count = 0 }
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
	end_suite = 2,
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
		regions = { 435002 },
		triggers = { "ENTER_REGION_435002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_435002(context, evt)
	if evt.param1 ~= 435002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_435002(context, evt)
	-- 创建id为435001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 435001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end