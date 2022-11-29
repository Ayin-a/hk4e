-- 基础信息
local base_info = {
	group_id = 133307109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109001, monster_id = 28020604, pos = { x = -2213.602, y = 169.640, z = 5841.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 109002, monster_id = 26090901, pos = { x = -2213.670, y = 169.064, z = 5841.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 109003, monster_id = 28050106, pos = { x = -2213.841, y = 169.912, z = 5841.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 },
	{ config_id = 109005, monster_id = 28060401, pos = { x = -2213.614, y = 169.053, z = 5841.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 109006, gadget_id = 70330266, pos = { x = -2213.733, y = 169.432, z = 5841.676 }, rot = { x = 357.184, y = 145.576, z = 8.426 }, level = 32, area_id = 27 },
	{ config_id = 109007, gadget_id = 70210101, pos = { x = -2213.661, y = 169.134, z = 5841.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 109013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2213.387, y = 169.774, z = 5841.919 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1109008, name = "ANY_GADGET_DIE_109008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_109008", action = "action_EVENT_ANY_GADGET_DIE_109008" },
	-- 刷面具鼬
	{ config_id = 1109009, name = "ANY_GADGET_DIE_109009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_109009", action = "action_EVENT_ANY_GADGET_DIE_109009" },
	-- 刷岩蕈兽
	{ config_id = 1109010, name = "ANY_GADGET_DIE_109010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_109010", action = "action_EVENT_ANY_GADGET_DIE_109010" },
	-- 刷草晶蝶
	{ config_id = 1109011, name = "ANY_GADGET_DIE_109011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_109011", action = "action_EVENT_ANY_GADGET_DIE_109011" },
	-- 刷蝎子
	{ config_id = 1109012, name = "ANY_GADGET_DIE_109012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_109012", action = "action_EVENT_ANY_GADGET_DIE_109012" },
	-- 需要伏击怪食用这个
	{ config_id = 1109013, name = "ENTER_REGION_109013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_109013", action = "action_EVENT_ENTER_REGION_109013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 109004, monster_id = 28050106, pos = { x = -2213.363, y = 169.944, z = 5841.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 }
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
		gadgets = { 109006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 109006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_109008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 109006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_109009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 109006 },
		regions = { 109013 },
		triggers = { "ANY_GADGET_DIE_109010", "ENTER_REGION_109013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 109006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_109011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 109006 },
		regions = { 109013 },
		triggers = { "ANY_GADGET_DIE_109012", "ENTER_REGION_109013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_109008(context, evt)
	if 109006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_109008(context, evt)
	-- 创建id为109007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 109007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_109009(context, evt)
	if 109006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_109009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 109001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_109010(context, evt)
	if 109006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_109010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 109002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_109011(context, evt)
	if 109006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_109011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 109003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_109012(context, evt)
	if 109006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_109012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 109005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_109013(context, evt)
	if evt.param1 ~= 109013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_109013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 109006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end