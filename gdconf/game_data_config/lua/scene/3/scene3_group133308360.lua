-- 基础信息
local base_info = {
	group_id = 133308360
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 360001, monster_id = 28020604, pos = { x = -1712.437, y = 171.486, z = 4739.655 }, rot = { x = 0.000, y = 209.372, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 360002, monster_id = 26090901, pos = { x = -1712.263, y = 170.910, z = 4739.825 }, rot = { x = 0.000, y = 209.372, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 360003, monster_id = 28050106, pos = { x = -1712.105, y = 171.758, z = 4739.756 }, rot = { x = 0.000, y = 209.372, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 360005, monster_id = 28060401, pos = { x = -1712.345, y = 170.899, z = 4739.792 }, rot = { x = 0.000, y = 209.372, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 360006, gadget_id = 70330266, pos = { x = -1712.275, y = 171.145, z = 4739.786 }, rot = { x = 344.775, y = 210.275, z = 353.249 }, level = 32, area_id = 26 },
	{ config_id = 360007, gadget_id = 70210101, pos = { x = -1712.214, y = 170.980, z = 4739.931 }, rot = { x = 0.000, y = 209.372, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 360013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1712.664, y = 171.620, z = 4739.689 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1360008, name = "ANY_GADGET_DIE_360008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360008", action = "action_EVENT_ANY_GADGET_DIE_360008" },
	-- 刷面具鼬
	{ config_id = 1360009, name = "ANY_GADGET_DIE_360009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360009", action = "action_EVENT_ANY_GADGET_DIE_360009" },
	-- 刷岩蕈兽
	{ config_id = 1360010, name = "ANY_GADGET_DIE_360010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360010", action = "action_EVENT_ANY_GADGET_DIE_360010" },
	-- 刷草晶蝶
	{ config_id = 1360011, name = "ANY_GADGET_DIE_360011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360011", action = "action_EVENT_ANY_GADGET_DIE_360011" },
	-- 刷蝎子
	{ config_id = 1360012, name = "ANY_GADGET_DIE_360012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360012", action = "action_EVENT_ANY_GADGET_DIE_360012" },
	-- 需要伏击怪食用这个
	{ config_id = 1360013, name = "ENTER_REGION_360013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_360013", action = "action_EVENT_ENTER_REGION_360013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 360004, monster_id = 28050106, pos = { x = -1712.585, y = 171.790, z = 4739.878 }, rot = { x = 0.000, y = 209.372, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 360006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 360006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_360008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 360006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_360009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 360006 },
		regions = { 360013 },
		triggers = { "ANY_GADGET_DIE_360010", "ENTER_REGION_360013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 360006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_360011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 360006 },
		regions = { 360013 },
		triggers = { "ANY_GADGET_DIE_360012", "ENTER_REGION_360013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360008(context, evt)
	if 360006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360008(context, evt)
	-- 创建id为360007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 360007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360009(context, evt)
	if 360006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 360001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360010(context, evt)
	if 360006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 360002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360011(context, evt)
	if 360006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 360003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360012(context, evt)
	if 360006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 360005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_360013(context, evt)
	if evt.param1 ~= 360013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_360013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 360006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end