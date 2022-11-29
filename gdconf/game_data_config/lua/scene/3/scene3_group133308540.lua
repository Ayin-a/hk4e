-- 基础信息
local base_info = {
	group_id = 133308540
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 540001, monster_id = 28020604, pos = { x = -2127.045, y = 54.070, z = 4528.255 }, rot = { x = 0.000, y = 158.562, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 540002, monster_id = 26090901, pos = { x = -2127.057, y = 54.113, z = 4528.494 }, rot = { x = 0.000, y = 158.562, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 540003, monster_id = 28050106, pos = { x = -2126.911, y = 54.212, z = 4528.575 }, rot = { x = 0.000, y = 158.562, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 540005, monster_id = 28060401, pos = { x = -2127.093, y = 54.106, z = 4528.413 }, rot = { x = 0.000, y = 158.562, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 540006, gadget_id = 70330266, pos = { x = -2127.112, y = 53.966, z = 4528.227 }, rot = { x = 15.144, y = 109.484, z = 354.986 }, level = 32, area_id = 26 },
	{ config_id = 540007, gadget_id = 70210101, pos = { x = -2127.114, y = 53.465, z = 4528.602 }, rot = { x = 0.000, y = 158.562, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 540013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2127.214, y = 54.498, z = 4526.995 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1540008, name = "ANY_GADGET_DIE_540008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_540008", action = "action_EVENT_ANY_GADGET_DIE_540008" },
	-- 刷面具鼬
	{ config_id = 1540009, name = "ANY_GADGET_DIE_540009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_540009", action = "action_EVENT_ANY_GADGET_DIE_540009" },
	-- 刷岩蕈兽
	{ config_id = 1540010, name = "ANY_GADGET_DIE_540010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_540010", action = "action_EVENT_ANY_GADGET_DIE_540010" },
	-- 刷草晶蝶
	{ config_id = 1540011, name = "ANY_GADGET_DIE_540011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_540011", action = "action_EVENT_ANY_GADGET_DIE_540011" },
	-- 刷蝎子
	{ config_id = 1540012, name = "ANY_GADGET_DIE_540012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_540012", action = "action_EVENT_ANY_GADGET_DIE_540012" },
	-- 需要伏击怪食用这个
	{ config_id = 1540013, name = "ENTER_REGION_540013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_540013", action = "action_EVENT_ENTER_REGION_540013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 540004, monster_id = 28050106, pos = { x = -2127.309, y = 53.890, z = 4528.281 }, rot = { x = 0.000, y = 158.562, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 540006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 540006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_540008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 540006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_540009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 540006 },
		regions = { 540013 },
		triggers = { "ANY_GADGET_DIE_540010", "ENTER_REGION_540013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 540006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_540011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 540006 },
		regions = { 540013 },
		triggers = { "ANY_GADGET_DIE_540012", "ENTER_REGION_540013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_540008(context, evt)
	if 540006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_540008(context, evt)
	-- 创建id为540007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 540007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_540009(context, evt)
	if 540006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_540009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 540001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_540010(context, evt)
	if 540006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_540010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 540002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_540011(context, evt)
	if 540006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_540011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 540003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_540012(context, evt)
	if 540006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_540012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 540005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_540013(context, evt)
	if evt.param1 ~= 540013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_540013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 540006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end