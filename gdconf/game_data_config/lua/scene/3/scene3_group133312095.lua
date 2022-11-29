-- 基础信息
local base_info = {
	group_id = 133312095
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95001, monster_id = 28020604, pos = { x = -3049.439, y = 292.677, z = 4983.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 28 },
	{ config_id = 95002, monster_id = 26090901, pos = { x = -3049.439, y = 292.677, z = 4983.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 95003, monster_id = 28050106, pos = { x = -3049.439, y = 292.677, z = 4983.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 28 },
	{ config_id = 95005, monster_id = 28060401, pos = { x = -3049.439, y = 292.677, z = 4983.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95006, gadget_id = 70330266, pos = { x = -3049.439, y = 292.677, z = 4983.837 }, rot = { x = 354.927, y = 287.875, z = 334.060 }, level = 32, area_id = 28 },
	{ config_id = 95007, gadget_id = 70210101, pos = { x = -3049.439, y = 292.677, z = 4983.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 28 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 95013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -3049.439, y = 292.677, z = 4983.837 }, area_id = 28 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1095008, name = "ANY_GADGET_DIE_95008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95008", action = "action_EVENT_ANY_GADGET_DIE_95008" },
	-- 刷面具鼬
	{ config_id = 1095009, name = "ANY_GADGET_DIE_95009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95009", action = "action_EVENT_ANY_GADGET_DIE_95009" },
	-- 刷岩蕈兽
	{ config_id = 1095010, name = "ANY_GADGET_DIE_95010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95010", action = "action_EVENT_ANY_GADGET_DIE_95010" },
	-- 刷草晶蝶
	{ config_id = 1095011, name = "ANY_GADGET_DIE_95011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95011", action = "action_EVENT_ANY_GADGET_DIE_95011" },
	-- 刷蝎子
	{ config_id = 1095012, name = "ANY_GADGET_DIE_95012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95012", action = "action_EVENT_ANY_GADGET_DIE_95012" },
	-- 需要伏击怪食用这个
	{ config_id = 1095013, name = "ENTER_REGION_95013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_95013", action = "action_EVENT_ENTER_REGION_95013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 95004, monster_id = 28050106, pos = { x = -3049.439, y = 292.677, z = 4983.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 28 }
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
		gadgets = { 95006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 95006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_95008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 95006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_95009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 95006 },
		regions = { 95013 },
		triggers = { "ANY_GADGET_DIE_95010", "ENTER_REGION_95013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 95006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_95011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 95006 },
		regions = { 95013 },
		triggers = { "ANY_GADGET_DIE_95012", "ENTER_REGION_95013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95008(context, evt)
	if 95006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95008(context, evt)
	-- 创建id为95007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95009(context, evt)
	if 95006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 95001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95010(context, evt)
	if 95006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 95002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95011(context, evt)
	if 95006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 95003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95012(context, evt)
	if 95006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 95005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_95013(context, evt)
	if evt.param1 ~= 95013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_95013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end