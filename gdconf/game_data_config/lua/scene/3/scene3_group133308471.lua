-- 基础信息
local base_info = {
	group_id = 133308471
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 471001, monster_id = 28020604, pos = { x = -1889.143, y = 127.529, z = 5042.886 }, rot = { x = 0.000, y = 350.134, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 471002, monster_id = 26090901, pos = { x = -1889.211, y = 127.545, z = 5042.653 }, rot = { x = 0.000, y = 3.081, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 471003, monster_id = 28050106, pos = { x = -1889.382, y = 127.552, z = 5042.635 }, rot = { x = 0.000, y = 355.082, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 471005, monster_id = 28060401, pos = { x = -1889.155, y = 127.537, z = 5042.722 }, rot = { x = 0.000, y = 356.911, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 471006, gadget_id = 70330266, pos = { x = -1889.218, y = 126.404, z = 5042.669 }, rot = { x = 11.491, y = 358.549, z = 0.615 }, level = 32, area_id = 26 },
	{ config_id = 471007, gadget_id = 70210101, pos = { x = -1889.202, y = 126.769, z = 5042.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 471013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1888.928, y = 127.418, z = 5042.968 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1471008, name = "ANY_GADGET_DIE_471008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_471008", action = "action_EVENT_ANY_GADGET_DIE_471008" },
	-- 刷面具鼬
	{ config_id = 1471009, name = "ANY_GADGET_DIE_471009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_471009", action = "action_EVENT_ANY_GADGET_DIE_471009" },
	-- 刷岩蕈兽
	{ config_id = 1471010, name = "ANY_GADGET_DIE_471010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_471010", action = "action_EVENT_ANY_GADGET_DIE_471010" },
	-- 刷草晶蝶
	{ config_id = 1471011, name = "ANY_GADGET_DIE_471011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_471011", action = "action_EVENT_ANY_GADGET_DIE_471011" },
	-- 刷蝎子
	{ config_id = 1471012, name = "ANY_GADGET_DIE_471012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_471012", action = "action_EVENT_ANY_GADGET_DIE_471012" },
	-- 需要伏击怪食用这个
	{ config_id = 1471013, name = "ENTER_REGION_471013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_471013", action = "action_EVENT_ENTER_REGION_471013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 471004, monster_id = 28050106, pos = { x = -1888.904, y = 127.419, z = 5042.764 }, rot = { x = 0.000, y = 356.382, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 471006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 471006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_471008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 471006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_471009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 471006 },
		regions = { 471013 },
		triggers = { "ANY_GADGET_DIE_471010", "ENTER_REGION_471013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 471006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_471011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 471006 },
		regions = { 471013 },
		triggers = { "ANY_GADGET_DIE_471012", "ENTER_REGION_471013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_471008(context, evt)
	if 471006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_471008(context, evt)
	-- 创建id为471007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 471007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_471009(context, evt)
	if 471006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_471009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 471001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_471010(context, evt)
	if 471006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_471010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 471002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_471011(context, evt)
	if 471006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_471011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 471003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_471012(context, evt)
	if 471006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_471012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 471005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_471013(context, evt)
	if evt.param1 ~= 471013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_471013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 471006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end