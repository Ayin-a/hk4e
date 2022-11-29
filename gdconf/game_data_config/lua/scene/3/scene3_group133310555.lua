-- 基础信息
local base_info = {
	group_id = 133310555
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 555001, monster_id = 28020604, pos = { x = -2268.253, y = 137.586, z = 4759.725 }, rot = { x = 0.000, y = 0.456, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 555002, monster_id = 26090901, pos = { x = -2268.322, y = 137.542, z = 4759.492 }, rot = { x = 0.000, y = 0.026, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 555003, monster_id = 28050106, pos = { x = -2268.492, y = 137.522, z = 4759.474 }, rot = { x = 0.000, y = 358.328, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 555005, monster_id = 28060401, pos = { x = -2268.266, y = 137.557, z = 4759.562 }, rot = { x = 0.000, y = 0.697, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 555006, gadget_id = 70330266, pos = { x = -2268.060, y = 136.389, z = 4759.572 }, rot = { x = 1.241, y = 80.040, z = 13.511 }, level = 32, area_id = 26 },
	{ config_id = 555007, gadget_id = 70210101, pos = { x = -2268.313, y = 136.877, z = 4759.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 555013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2268.039, y = 137.564, z = 4759.807 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1555008, name = "ANY_GADGET_DIE_555008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_555008", action = "action_EVENT_ANY_GADGET_DIE_555008" },
	-- 刷面具鼬
	{ config_id = 1555009, name = "ANY_GADGET_DIE_555009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_555009", action = "action_EVENT_ANY_GADGET_DIE_555009" },
	-- 刷岩蕈兽
	{ config_id = 1555010, name = "ANY_GADGET_DIE_555010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_555010", action = "action_EVENT_ANY_GADGET_DIE_555010" },
	-- 刷草晶蝶
	{ config_id = 1555011, name = "ANY_GADGET_DIE_555011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_555011", action = "action_EVENT_ANY_GADGET_DIE_555011" },
	-- 刷蝎子
	{ config_id = 1555012, name = "ANY_GADGET_DIE_555012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_555012", action = "action_EVENT_ANY_GADGET_DIE_555012" },
	-- 需要伏击怪食用这个
	{ config_id = 1555013, name = "ENTER_REGION_555013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_555013", action = "action_EVENT_ENTER_REGION_555013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 555004, monster_id = 28050106, pos = { x = -2268.014, y = 137.533, z = 4759.604 }, rot = { x = 0.000, y = 1.798, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 555006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 555006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_555008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 555006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_555009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 555006 },
		regions = { 555013 },
		triggers = { "ANY_GADGET_DIE_555010", "ENTER_REGION_555013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 555006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_555011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 555006 },
		regions = { 555013 },
		triggers = { "ANY_GADGET_DIE_555012", "ENTER_REGION_555013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_555008(context, evt)
	if 555006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_555008(context, evt)
	-- 创建id为555007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 555007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_555009(context, evt)
	if 555006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_555009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_555010(context, evt)
	if 555006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_555010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_555011(context, evt)
	if 555006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_555011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_555012(context, evt)
	if 555006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_555012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 555005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_555013(context, evt)
	if evt.param1 ~= 555013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_555013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 555006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end