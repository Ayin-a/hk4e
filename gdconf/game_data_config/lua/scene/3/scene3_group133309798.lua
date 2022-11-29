-- 基础信息
local base_info = {
	group_id = 133309798
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 798001, monster_id = 28020604, pos = { x = -2100.812, y = 158.748, z = 5997.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 798002, monster_id = 26090901, pos = { x = -2100.880, y = 158.171, z = 5996.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 798003, monster_id = 28050106, pos = { x = -2101.051, y = 159.019, z = 5996.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 },
	{ config_id = 798005, monster_id = 28060401, pos = { x = -2100.824, y = 158.160, z = 5996.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 798006, gadget_id = 70330266, pos = { x = -2101.006, y = 158.554, z = 5996.902 }, rot = { x = 358.839, y = 0.082, z = 351.878 }, level = 32, area_id = 27 },
	{ config_id = 798007, gadget_id = 70210101, pos = { x = -2100.871, y = 158.241, z = 5996.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 798013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2100.531, y = 159.379, z = 5997.229 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1798008, name = "ANY_GADGET_DIE_798008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_798008", action = "action_EVENT_ANY_GADGET_DIE_798008" },
	-- 刷面具鼬
	{ config_id = 1798009, name = "ANY_GADGET_DIE_798009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_798009", action = "action_EVENT_ANY_GADGET_DIE_798009" },
	-- 刷岩蕈兽
	{ config_id = 1798010, name = "ANY_GADGET_DIE_798010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_798010", action = "action_EVENT_ANY_GADGET_DIE_798010" },
	-- 刷草晶蝶
	{ config_id = 1798011, name = "ANY_GADGET_DIE_798011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_798011", action = "action_EVENT_ANY_GADGET_DIE_798011" },
	-- 刷蝎子
	{ config_id = 1798012, name = "ANY_GADGET_DIE_798012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_798012", action = "action_EVENT_ANY_GADGET_DIE_798012" },
	-- 需要伏击怪食用这个
	{ config_id = 1798013, name = "ENTER_REGION_798013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_798013", action = "action_EVENT_ENTER_REGION_798013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 798004, monster_id = 28050106, pos = { x = -2100.573, y = 159.052, z = 5997.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 }
	}
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
		gadgets = { 798006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 798006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_798008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 798006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_798009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 798006 },
		regions = { 798013 },
		triggers = { "ANY_GADGET_DIE_798010", "ENTER_REGION_798013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 798006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_798011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 798006 },
		regions = { 798013 },
		triggers = { "ANY_GADGET_DIE_798012", "ENTER_REGION_798013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_798008(context, evt)
	if 798006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_798008(context, evt)
	-- 创建id为798007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 798007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_798009(context, evt)
	if 798006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_798009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 798001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_798010(context, evt)
	if 798006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_798010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 798002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_798011(context, evt)
	if 798006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_798011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 798003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_798012(context, evt)
	if 798006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_798012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 798005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_798013(context, evt)
	if evt.param1 ~= 798013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_798013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 798006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end