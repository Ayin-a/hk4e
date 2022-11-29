-- 基础信息
local base_info = {
	group_id = 133309723
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 723001, monster_id = 28020604, pos = { x = -2206.117, y = 138.952, z = 4984.963 }, rot = { x = 0.000, y = 343.568, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 723002, monster_id = 26090901, pos = { x = -2206.162, y = 139.003, z = 4984.747 }, rot = { x = 0.000, y = 350.116, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 723003, monster_id = 28050106, pos = { x = -2206.323, y = 139.047, z = 4984.735 }, rot = { x = 0.000, y = 349.387, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 },
	{ config_id = 723005, monster_id = 28060401, pos = { x = -2206.113, y = 138.489, z = 4984.809 }, rot = { x = 0.000, y = 347.857, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 723006, gadget_id = 70330266, pos = { x = -2206.376, y = 138.123, z = 4984.431 }, rot = { x = 353.482, y = 356.493, z = 10.096 }, level = 32, area_id = 27 },
	{ config_id = 723007, gadget_id = 70210101, pos = { x = -2206.151, y = 139.022, z = 4984.634 }, rot = { x = 10.687, y = 359.465, z = 345.606 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 723013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2205.930, y = 138.891, z = 4985.026 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1723008, name = "ANY_GADGET_DIE_723008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_723008", action = "action_EVENT_ANY_GADGET_DIE_723008" },
	-- 刷面具鼬
	{ config_id = 1723009, name = "ANY_GADGET_DIE_723009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_723009", action = "action_EVENT_ANY_GADGET_DIE_723009" },
	-- 刷岩蕈兽
	{ config_id = 1723010, name = "ANY_GADGET_DIE_723010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_723010", action = "action_EVENT_ANY_GADGET_DIE_723010" },
	-- 刷草晶蝶
	{ config_id = 1723011, name = "ANY_GADGET_DIE_723011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_723011", action = "action_EVENT_ANY_GADGET_DIE_723011" },
	-- 刷蝎子
	{ config_id = 1723012, name = "ANY_GADGET_DIE_723012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_723012", action = "action_EVENT_ANY_GADGET_DIE_723012" },
	-- 需要伏击怪食用这个
	{ config_id = 1723013, name = "ENTER_REGION_723013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_723013", action = "action_EVENT_ENTER_REGION_723013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 723004, monster_id = 28050106, pos = { x = -2205.890, y = 138.919, z = 4984.836 }, rot = { x = 0.000, y = 351.901, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 }
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
		gadgets = { 723006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 723006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_723008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 723006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_723009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 723006 },
		regions = { 723013 },
		triggers = { "ANY_GADGET_DIE_723010", "ENTER_REGION_723013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 723006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_723011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 723006 },
		regions = { 723013 },
		triggers = { "ANY_GADGET_DIE_723012", "ENTER_REGION_723013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_723008(context, evt)
	if 723006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_723008(context, evt)
	-- 创建id为723007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 723007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_723009(context, evt)
	if 723006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_723009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 723001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_723010(context, evt)
	if 723006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_723010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 723002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_723011(context, evt)
	if 723006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_723011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 723003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_723012(context, evt)
	if 723006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_723012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 723005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_723013(context, evt)
	if evt.param1 ~= 723013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_723013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 723006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end