-- 基础信息
local base_info = {
	group_id = 133308514
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 514001, monster_id = 28020604, pos = { x = -2037.894, y = 129.011, z = 4862.928 }, rot = { x = 0.000, y = 351.449, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 514002, monster_id = 26090901, pos = { x = -2037.962, y = 129.038, z = 4862.695 }, rot = { x = 0.000, y = 356.175, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 514003, monster_id = 28050106, pos = { x = -2038.133, y = 129.051, z = 4862.677 }, rot = { x = 0.000, y = 355.294, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 514005, monster_id = 28060401, pos = { x = -2037.906, y = 129.028, z = 4862.763 }, rot = { x = 0.000, y = 357.665, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 514006, gadget_id = 70330266, pos = { x = -2038.025, y = 127.820, z = 4862.648 }, rot = { x = 20.176, y = 351.945, z = 343.773 }, level = 32, area_id = 26 },
	{ config_id = 514007, gadget_id = 70210101, pos = { x = -2037.953, y = 128.472, z = 4862.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 514013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2037.678, y = 128.891, z = 4863.010 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1514008, name = "ANY_GADGET_DIE_514008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_514008", action = "action_EVENT_ANY_GADGET_DIE_514008" },
	-- 刷面具鼬
	{ config_id = 1514009, name = "ANY_GADGET_DIE_514009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_514009", action = "action_EVENT_ANY_GADGET_DIE_514009" },
	-- 刷岩蕈兽
	{ config_id = 1514010, name = "ANY_GADGET_DIE_514010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_514010", action = "action_EVENT_ANY_GADGET_DIE_514010" },
	-- 刷草晶蝶
	{ config_id = 1514011, name = "ANY_GADGET_DIE_514011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_514011", action = "action_EVENT_ANY_GADGET_DIE_514011" },
	-- 刷蝎子
	{ config_id = 1514012, name = "ANY_GADGET_DIE_514012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_514012", action = "action_EVENT_ANY_GADGET_DIE_514012" },
	-- 需要伏击怪食用这个
	{ config_id = 1514013, name = "ENTER_REGION_514013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_514013", action = "action_EVENT_ENTER_REGION_514013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 514004, monster_id = 28050106, pos = { x = -2037.655, y = 128.923, z = 4862.805 }, rot = { x = 0.000, y = 353.370, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 514006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 514006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_514008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 514006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_514009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 514006 },
		regions = { 514013 },
		triggers = { "ANY_GADGET_DIE_514010", "ENTER_REGION_514013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 514006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_514011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 514006 },
		regions = { 514013 },
		triggers = { "ANY_GADGET_DIE_514012", "ENTER_REGION_514013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_514008(context, evt)
	if 514006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_514008(context, evt)
	-- 创建id为514007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 514007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_514009(context, evt)
	if 514006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_514009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 514001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_514010(context, evt)
	if 514006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_514010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 514002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_514011(context, evt)
	if 514006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_514011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 514003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_514012(context, evt)
	if 514006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_514012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 514005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_514013(context, evt)
	if evt.param1 ~= 514013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_514013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 514006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end