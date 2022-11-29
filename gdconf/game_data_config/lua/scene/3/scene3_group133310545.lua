-- 基础信息
local base_info = {
	group_id = 133310545
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 545001, monster_id = 28020604, pos = { x = -2403.159, y = 109.934, z = 4765.065 }, rot = { x = 0.000, y = 351.566, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 545002, monster_id = 26090901, pos = { x = -2403.227, y = 109.939, z = 4764.832 }, rot = { x = 0.000, y = 354.871, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 545003, monster_id = 28050106, pos = { x = -2403.398, y = 109.936, z = 4764.814 }, rot = { x = 0.000, y = 352.653, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 545005, monster_id = 28060401, pos = { x = -2403.171, y = 109.939, z = 4764.901 }, rot = { x = 0.000, y = 355.484, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 545006, gadget_id = 70330266, pos = { x = -2403.208, y = 108.763, z = 4764.841 }, rot = { x = 13.184, y = 353.626, z = 356.903 }, level = 32, area_id = 26 },
	{ config_id = 545007, gadget_id = 70210101, pos = { x = -2403.174, y = 108.819, z = 4764.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 545013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2402.944, y = 109.844, z = 4765.147 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1545008, name = "ANY_GADGET_DIE_545008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_545008", action = "action_EVENT_ANY_GADGET_DIE_545008" },
	-- 刷面具鼬
	{ config_id = 1545009, name = "ANY_GADGET_DIE_545009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_545009", action = "action_EVENT_ANY_GADGET_DIE_545009" },
	-- 刷岩蕈兽
	{ config_id = 1545010, name = "ANY_GADGET_DIE_545010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_545010", action = "action_EVENT_ANY_GADGET_DIE_545010" },
	-- 刷草晶蝶
	{ config_id = 1545011, name = "ANY_GADGET_DIE_545011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_545011", action = "action_EVENT_ANY_GADGET_DIE_545011" },
	-- 刷蝎子
	{ config_id = 1545012, name = "ANY_GADGET_DIE_545012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_545012", action = "action_EVENT_ANY_GADGET_DIE_545012" },
	-- 需要伏击怪食用这个
	{ config_id = 1545013, name = "ENTER_REGION_545013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_545013", action = "action_EVENT_ENTER_REGION_545013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 545004, monster_id = 28050106, pos = { x = -2402.920, y = 109.851, z = 4764.943 }, rot = { x = 0.000, y = 352.624, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 545006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 545006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_545008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 545006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_545009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 545006 },
		regions = { 545013 },
		triggers = { "ANY_GADGET_DIE_545010", "ENTER_REGION_545013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 545006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_545011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 545006 },
		regions = { 545013 },
		triggers = { "ANY_GADGET_DIE_545012", "ENTER_REGION_545013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_545008(context, evt)
	if 545006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_545008(context, evt)
	-- 创建id为545007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 545007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_545009(context, evt)
	if 545006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_545009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 545001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_545010(context, evt)
	if 545006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_545010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 545002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_545011(context, evt)
	if 545006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_545011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 545003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_545012(context, evt)
	if 545006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_545012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 545005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_545013(context, evt)
	if evt.param1 ~= 545013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_545013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 545006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end