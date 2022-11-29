-- 基础信息
local base_info = {
	group_id = 133103221
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
	{ config_id = 221001, gadget_id = 70210107, pos = { x = 943.163, y = 329.063, z = 1348.447 }, rot = { x = 351.667, y = 116.508, z = 1.303 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", showcutscene = true, isOneoff = true, persistent = true, autopick = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 221002, shape = RegionShape.SPHERE, radius = 3, pos = { x = 941.445, y = 333.989, z = 1347.873 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1221002, name = "ENTER_REGION_221002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_221002", action = "action_EVENT_ENTER_REGION_221002" }
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
		regions = { 221002 },
		triggers = { "ENTER_REGION_221002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_221002(context, evt)
	if evt.param1 ~= 221002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_221002(context, evt)
	-- 创建id为221001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 221001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end