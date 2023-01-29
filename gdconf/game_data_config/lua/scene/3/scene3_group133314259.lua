-- 基础信息
local base_info = {
	group_id = 133314259
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 259001, monster_id = 28020604, pos = { x = -984.330, y = -28.107, z = 4450.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 32 },
	{ config_id = 259002, monster_id = 26090901, pos = { x = -984.399, y = -28.684, z = 4450.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 259003, monster_id = 28050106, pos = { x = -984.570, y = -27.836, z = 4450.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 259004, monster_id = 28060401, pos = { x = -984.343, y = -28.695, z = 4450.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 259005, gadget_id = 70330266, pos = { x = -984.408, y = -28.317, z = 4450.531 }, rot = { x = 338.157, y = 355.377, z = 23.631 }, level = 30, area_id = 32 },
	{ config_id = 259006, gadget_id = 70210101, pos = { x = -984.390, y = -28.614, z = 4450.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 259012, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -984.116, y = -27.974, z = 4450.806 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1259007, name = "ANY_GADGET_DIE_259007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_259007", action = "action_EVENT_ANY_GADGET_DIE_259007" },
	-- 刷面具鼬
	{ config_id = 1259008, name = "ANY_GADGET_DIE_259008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_259008", action = "action_EVENT_ANY_GADGET_DIE_259008" },
	-- 刷岩蕈兽
	{ config_id = 1259009, name = "ANY_GADGET_DIE_259009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_259009", action = "action_EVENT_ANY_GADGET_DIE_259009" },
	-- 刷草晶蝶
	{ config_id = 1259010, name = "ANY_GADGET_DIE_259010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_259010", action = "action_EVENT_ANY_GADGET_DIE_259010" },
	-- 刷蝎子
	{ config_id = 1259011, name = "ANY_GADGET_DIE_259011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_259011", action = "action_EVENT_ANY_GADGET_DIE_259011" },
	-- 需要伏击怪食用这个
	{ config_id = 1259012, name = "ENTER_REGION_259012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_259012", action = "action_EVENT_ENTER_REGION_259012" }
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
		monsters = { },
		gadgets = { 259005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 259005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_259007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 259005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_259008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 259005 },
		regions = { 259012 },
		triggers = { "ANY_GADGET_DIE_259009", "ENTER_REGION_259012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 259005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_259010" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 259005 },
		regions = { 259012 },
		triggers = { "ANY_GADGET_DIE_259011", "ENTER_REGION_259012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_259007(context, evt)
	if 259005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_259007(context, evt)
	-- 创建id为259006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 259006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_259008(context, evt)
	if 259005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_259008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 259001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_259009(context, evt)
	if 259005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_259009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 259002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_259010(context, evt)
	if 259005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_259010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 259003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_259011(context, evt)
	if 259005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_259011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 259004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_259012(context, evt)
	if evt.param1 ~= 259012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_259012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 259005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end