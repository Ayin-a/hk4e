-- 基础信息
local base_info = {
	group_id = 133310563
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 563001, monster_id = 28020604, pos = { x = -2699.543, y = 69.014, z = 4498.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 28 },
	{ config_id = 563002, monster_id = 26090901, pos = { x = -2699.543, y = 69.014, z = 4498.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 563003, monster_id = 28050106, pos = { x = -2699.543, y = 69.014, z = 4498.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 28 },
	{ config_id = 563005, monster_id = 28060401, pos = { x = -2699.543, y = 69.014, z = 4498.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 563006, gadget_id = 70330266, pos = { x = -2699.543, y = 69.014, z = 4498.743 }, rot = { x = 339.160, y = 2.693, z = 348.317 }, level = 32, area_id = 28 },
	{ config_id = 563007, gadget_id = 70210101, pos = { x = -2699.543, y = 69.014, z = 4498.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 28 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 563013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2699.543, y = 69.014, z = 4498.743 }, area_id = 28 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1563008, name = "ANY_GADGET_DIE_563008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_563008", action = "action_EVENT_ANY_GADGET_DIE_563008" },
	-- 刷面具鼬
	{ config_id = 1563009, name = "ANY_GADGET_DIE_563009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_563009", action = "action_EVENT_ANY_GADGET_DIE_563009" },
	-- 刷岩蕈兽
	{ config_id = 1563010, name = "ANY_GADGET_DIE_563010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_563010", action = "action_EVENT_ANY_GADGET_DIE_563010" },
	-- 刷草晶蝶
	{ config_id = 1563011, name = "ANY_GADGET_DIE_563011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_563011", action = "action_EVENT_ANY_GADGET_DIE_563011" },
	-- 刷蝎子
	{ config_id = 1563012, name = "ANY_GADGET_DIE_563012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_563012", action = "action_EVENT_ANY_GADGET_DIE_563012" },
	-- 需要伏击怪食用这个
	{ config_id = 1563013, name = "ENTER_REGION_563013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_563013", action = "action_EVENT_ENTER_REGION_563013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 563004, monster_id = 28050106, pos = { x = -2699.543, y = 69.014, z = 4498.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 28 }
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
		gadgets = { 563006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 563006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_563008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 563006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_563009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 563006 },
		regions = { 563013 },
		triggers = { "ANY_GADGET_DIE_563010", "ENTER_REGION_563013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 563006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_563011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 563006 },
		regions = { 563013 },
		triggers = { "ANY_GADGET_DIE_563012", "ENTER_REGION_563013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_563008(context, evt)
	if 563006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_563008(context, evt)
	-- 创建id为563007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 563007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_563009(context, evt)
	if 563006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_563009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 563001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_563010(context, evt)
	if 563006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_563010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 563002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_563011(context, evt)
	if 563006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_563011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 563003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_563012(context, evt)
	if 563006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_563012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 563005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_563013(context, evt)
	if evt.param1 ~= 563013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_563013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 563006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end