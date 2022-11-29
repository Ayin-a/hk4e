-- 基础信息
local base_info = {
	group_id = 133308328
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 328001, monster_id = 26090901, pos = { x = -1863.133, y = 281.387, z = 4468.954 }, rot = { x = 0.000, y = 230.643, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 328002, gadget_id = 70330266, pos = { x = -1862.674, y = 280.897, z = 4468.495 }, rot = { x = 0.000, y = 31.036, z = 358.076 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 328004, shape = RegionShape.SPHERE, radius = 5.7, pos = { x = -1863.341, y = 282.157, z = 4467.903 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1328003, name = "ANY_GADGET_DIE_328003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_328003", action = "action_EVENT_ANY_GADGET_DIE_328003" },
	{ config_id = 1328004, name = "ENTER_REGION_328004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_328004", action = "action_EVENT_ENTER_REGION_328004" }
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
		gadgets = { 328002 },
		regions = { 328004 },
		triggers = { "ANY_GADGET_DIE_328003", "ENTER_REGION_328004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_328003(context, evt)
	if 328002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_328003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 328001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_328004(context, evt)
	if evt.param1 ~= 328004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_328004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 328002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end