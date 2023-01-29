-- 基础信息
local base_info = {
	group_id = 133314295
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 295001, monster_id = 28020604, pos = { x = -877.454, y = -85.637, z = 4450.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 32 },
	{ config_id = 295002, monster_id = 26090901, pos = { x = -877.522, y = -86.213, z = 4450.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 295003, monster_id = 28050106, pos = { x = -877.693, y = -85.366, z = 4449.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 295004, monster_id = 28060401, pos = { x = -877.466, y = -86.224, z = 4450.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 295005, gadget_id = 70330266, pos = { x = -877.732, y = -85.901, z = 4450.039 }, rot = { x = 22.746, y = 358.236, z = 11.837 }, level = 30, area_id = 32 },
	{ config_id = 295006, gadget_id = 70210101, pos = { x = -877.513, y = -86.143, z = 4449.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 295012, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -877.239, y = -85.504, z = 4450.328 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1295007, name = "ANY_GADGET_DIE_295007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_295007", action = "action_EVENT_ANY_GADGET_DIE_295007" },
	-- 刷面具鼬
	{ config_id = 1295008, name = "ANY_GADGET_DIE_295008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_295008", action = "action_EVENT_ANY_GADGET_DIE_295008" },
	-- 刷岩蕈兽
	{ config_id = 1295009, name = "ANY_GADGET_DIE_295009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_295009", action = "action_EVENT_ANY_GADGET_DIE_295009" },
	-- 刷草晶蝶
	{ config_id = 1295010, name = "ANY_GADGET_DIE_295010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_295010", action = "action_EVENT_ANY_GADGET_DIE_295010" },
	-- 刷蝎子
	{ config_id = 1295011, name = "ANY_GADGET_DIE_295011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_295011", action = "action_EVENT_ANY_GADGET_DIE_295011" },
	-- 需要伏击怪食用这个
	{ config_id = 1295012, name = "ENTER_REGION_295012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_295012", action = "action_EVENT_ENTER_REGION_295012" }
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
		gadgets = { 295005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 295005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_295007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 295005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_295008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 295005 },
		regions = { 295012 },
		triggers = { "ANY_GADGET_DIE_295009", "ENTER_REGION_295012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 295005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_295010" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 295005 },
		regions = { 295012 },
		triggers = { "ANY_GADGET_DIE_295011", "ENTER_REGION_295012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_295007(context, evt)
	if 295005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_295007(context, evt)
	-- 创建id为295006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 295006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_295008(context, evt)
	if 295005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_295008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 295001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_295009(context, evt)
	if 295005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_295009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 295002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_295010(context, evt)
	if 295005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_295010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 295003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_295011(context, evt)
	if 295005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_295011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 295004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_295012(context, evt)
	if evt.param1 ~= 295012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_295012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 295005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end