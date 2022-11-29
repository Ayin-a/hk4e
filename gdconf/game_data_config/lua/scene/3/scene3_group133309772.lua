-- 基础信息
local base_info = {
	group_id = 133309772
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 772001, monster_id = 28020604, pos = { x = -2551.274, y = 152.201, z = 5268.982 }, rot = { x = 0.000, y = 355.637, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 772002, monster_id = 26090901, pos = { x = -2551.329, y = 152.227, z = 5268.754 }, rot = { x = 0.000, y = 13.920, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 772003, monster_id = 28050106, pos = { x = -2551.479, y = 152.307, z = 5268.742 }, rot = { x = 0.000, y = 10.094, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 },
	{ config_id = 772005, monster_id = 28060401, pos = { x = -2551.281, y = 152.212, z = 5268.821 }, rot = { x = 0.000, y = 10.017, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 772006, gadget_id = 70330266, pos = { x = -2551.772, y = 151.398, z = 5268.778 }, rot = { x = 349.731, y = 8.170, z = 356.757 }, level = 32, area_id = 27 },
	{ config_id = 772007, gadget_id = 70210101, pos = { x = -2551.333, y = 152.203, z = 5268.638 }, rot = { x = 351.577, y = 7.962, z = 330.313 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 772013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2551.122, y = 152.118, z = 5269.049 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1772008, name = "ANY_GADGET_DIE_772008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_772008", action = "action_EVENT_ANY_GADGET_DIE_772008" },
	-- 刷面具鼬
	{ config_id = 1772009, name = "ANY_GADGET_DIE_772009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_772009", action = "action_EVENT_ANY_GADGET_DIE_772009" },
	-- 刷岩蕈兽
	{ config_id = 1772010, name = "ANY_GADGET_DIE_772010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_772010", action = "action_EVENT_ANY_GADGET_DIE_772010" },
	-- 刷草晶蝶
	{ config_id = 1772011, name = "ANY_GADGET_DIE_772011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_772011", action = "action_EVENT_ANY_GADGET_DIE_772011" },
	-- 刷蝎子
	{ config_id = 1772012, name = "ANY_GADGET_DIE_772012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_772012", action = "action_EVENT_ANY_GADGET_DIE_772012" },
	-- 需要伏击怪食用这个
	{ config_id = 1772013, name = "ENTER_REGION_772013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_772013", action = "action_EVENT_ENTER_REGION_772013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 772004, monster_id = 28050106, pos = { x = -2551.100, y = 152.114, z = 5268.845 }, rot = { x = 0.000, y = 9.730, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 }
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
		gadgets = { 772006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 772006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_772008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 772006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_772009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 772006 },
		regions = { 772013 },
		triggers = { "ANY_GADGET_DIE_772010", "ENTER_REGION_772013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 772006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_772011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 772006 },
		regions = { 772013 },
		triggers = { "ANY_GADGET_DIE_772012", "ENTER_REGION_772013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_772008(context, evt)
	if 772006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_772008(context, evt)
	-- 创建id为772007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 772007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_772009(context, evt)
	if 772006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_772009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 772001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_772010(context, evt)
	if 772006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_772010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 772002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_772011(context, evt)
	if 772006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_772011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 772003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_772012(context, evt)
	if 772006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_772012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 772005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_772013(context, evt)
	if evt.param1 ~= 772013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_772013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 772006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end