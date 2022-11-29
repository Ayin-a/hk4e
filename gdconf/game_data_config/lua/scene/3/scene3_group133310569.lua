-- 基础信息
local base_info = {
	group_id = 133310569
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 569001, monster_id = 28020604, pos = { x = -2897.363, y = 157.316, z = 4391.839 }, rot = { x = 0.000, y = 2.202, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 28 },
	{ config_id = 569002, monster_id = 26090901, pos = { x = -2897.363, y = 157.316, z = 4391.839 }, rot = { x = 0.000, y = 2.202, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 569003, monster_id = 28050106, pos = { x = -2897.363, y = 157.316, z = 4391.839 }, rot = { x = 0.000, y = 2.202, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 28 },
	{ config_id = 569005, monster_id = 28060401, pos = { x = -2897.363, y = 157.316, z = 4391.839 }, rot = { x = 0.000, y = 2.202, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 569006, gadget_id = 70330266, pos = { x = -2897.363, y = 157.316, z = 4391.839 }, rot = { x = 345.066, y = 18.595, z = 357.771 }, level = 32, area_id = 28 },
	{ config_id = 569007, gadget_id = 70210101, pos = { x = -2897.363, y = 157.316, z = 4391.839 }, rot = { x = 347.758, y = 6.585, z = 303.581 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 28 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 569013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2896.361, y = 157.376, z = 4391.890 }, area_id = 28 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1569008, name = "ANY_GADGET_DIE_569008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_569008", action = "action_EVENT_ANY_GADGET_DIE_569008" },
	-- 刷面具鼬
	{ config_id = 1569009, name = "ANY_GADGET_DIE_569009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_569009", action = "action_EVENT_ANY_GADGET_DIE_569009" },
	-- 刷岩蕈兽
	{ config_id = 1569010, name = "ANY_GADGET_DIE_569010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_569010", action = "action_EVENT_ANY_GADGET_DIE_569010" },
	-- 刷草晶蝶
	{ config_id = 1569011, name = "ANY_GADGET_DIE_569011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_569011", action = "action_EVENT_ANY_GADGET_DIE_569011" },
	-- 刷蝎子
	{ config_id = 1569012, name = "ANY_GADGET_DIE_569012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_569012", action = "action_EVENT_ANY_GADGET_DIE_569012" },
	-- 需要伏击怪食用这个
	{ config_id = 1569013, name = "ENTER_REGION_569013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_569013", action = "action_EVENT_ENTER_REGION_569013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 569004, monster_id = 28050106, pos = { x = -2897.363, y = 157.316, z = 4391.839 }, rot = { x = 0.000, y = 2.202, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 28 }
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
		gadgets = { 569006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 569006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_569008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 569006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_569009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 569006 },
		regions = { 569013 },
		triggers = { "ANY_GADGET_DIE_569010", "ENTER_REGION_569013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 569006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_569011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 569006 },
		regions = { 569013 },
		triggers = { "ANY_GADGET_DIE_569012", "ENTER_REGION_569013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_569008(context, evt)
	if 569006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_569008(context, evt)
	-- 创建id为569007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 569007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_569009(context, evt)
	if 569006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_569009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 569001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_569010(context, evt)
	if 569006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_569010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 569002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_569011(context, evt)
	if 569006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_569011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 569003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_569012(context, evt)
	if 569006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_569012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 569005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_569013(context, evt)
	if evt.param1 ~= 569013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_569013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 569006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end