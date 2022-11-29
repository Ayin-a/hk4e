-- 基础信息
local base_info = {
	group_id = 133308479
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 479001, monster_id = 28020604, pos = { x = -1929.572, y = 168.790, z = 4806.158 }, rot = { x = 0.000, y = 211.605, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 479002, monster_id = 26090901, pos = { x = -1929.394, y = 168.041, z = 4806.320 }, rot = { x = 0.000, y = 211.605, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 479003, monster_id = 28050106, pos = { x = -1929.238, y = 168.763, z = 4806.246 }, rot = { x = 0.000, y = 211.605, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 479005, monster_id = 28060401, pos = { x = -1929.477, y = 168.041, z = 4806.292 }, rot = { x = 0.000, y = 211.605, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 479006, gadget_id = 70330266, pos = { x = -1929.405, y = 168.780, z = 4806.283 }, rot = { x = 359.475, y = 211.578, z = 5.961 }, level = 32, area_id = 26 },
	{ config_id = 479007, gadget_id = 70210101, pos = { x = -1929.341, y = 168.575, z = 4806.424 }, rot = { x = 0.000, y = 211.605, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 479013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1929.798, y = 168.813, z = 4806.201 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1479008, name = "ANY_GADGET_DIE_479008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_479008", action = "action_EVENT_ANY_GADGET_DIE_479008" },
	-- 刷面具鼬
	{ config_id = 1479009, name = "ANY_GADGET_DIE_479009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_479009", action = "action_EVENT_ANY_GADGET_DIE_479009" },
	-- 刷岩蕈兽
	{ config_id = 1479010, name = "ANY_GADGET_DIE_479010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_479010", action = "action_EVENT_ANY_GADGET_DIE_479010" },
	-- 刷草晶蝶
	{ config_id = 1479011, name = "ANY_GADGET_DIE_479011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_479011", action = "action_EVENT_ANY_GADGET_DIE_479011" },
	-- 刷蝎子
	{ config_id = 1479012, name = "ANY_GADGET_DIE_479012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_479012", action = "action_EVENT_ANY_GADGET_DIE_479012" },
	-- 需要伏击怪食用这个
	{ config_id = 1479013, name = "ENTER_REGION_479013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_479013", action = "action_EVENT_ENTER_REGION_479013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 479004, monster_id = 28050106, pos = { x = -1929.712, y = 168.814, z = 4806.388 }, rot = { x = 0.000, y = 211.605, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 479006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 479006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_479008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 479006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_479009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 479006 },
		regions = { 479013 },
		triggers = { "ANY_GADGET_DIE_479010", "ENTER_REGION_479013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 479006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_479011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 479006 },
		regions = { 479013 },
		triggers = { "ANY_GADGET_DIE_479012", "ENTER_REGION_479013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_479008(context, evt)
	if 479006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_479008(context, evt)
	-- 创建id为479007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 479007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_479009(context, evt)
	if 479006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_479009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 479001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_479010(context, evt)
	if 479006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_479010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 479002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_479011(context, evt)
	if 479006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_479011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 479003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_479012(context, evt)
	if 479006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_479012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 479005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_479013(context, evt)
	if evt.param1 ~= 479013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_479013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 479006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end