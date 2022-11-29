-- 基础信息
local base_info = {
	group_id = 166001141
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141004, monster_id = 26010201, pos = { x = 771.315, y = 706.124, z = 161.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "骗骗花", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 141002, gadget_id = 70290204, pos = { x = 769.268, y = 706.661, z = 157.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 141003, gadget_id = 70290233, pos = { x = 772.271, y = 707.508, z = 150.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 141001, shape = RegionShape.SPHERE, radius = 8, pos = { x = 773.944, y = 705.968, z = 159.004 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1141001, name = "ENTER_REGION_141001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_141001" },
	{ config_id = 1141006, name = "ANY_GADGET_DIE_141006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_141006", action = "action_EVENT_ANY_GADGET_DIE_141006" }
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
		gadgets = { 141002, 141003 },
		regions = { 141001 },
		triggers = { "ENTER_REGION_141001", "ANY_GADGET_DIE_141006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_141001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 141004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_141006(context, evt)
	if 141002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_141006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 141003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end