-- 基础信息
local base_info = {
	group_id = 133314253
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 253001, monster_id = 28020604, pos = { x = -797.314, y = 65.582, z = 4422.933 }, rot = { x = 0.000, y = 117.113, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 32 },
	{ config_id = 253002, monster_id = 26090901, pos = { x = -797.705, y = 65.704, z = 4422.781 }, rot = { x = 0.000, y = 101.029, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 253003, monster_id = 28050106, pos = { x = -797.726, y = 65.707, z = 4422.782 }, rot = { x = 0.000, y = 300.588, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 253004, monster_id = 28060401, pos = { x = -797.724, y = 65.754, z = 4422.651 }, rot = { x = 0.000, y = 51.112, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 253005, gadget_id = 70330266, pos = { x = -797.953, y = 65.836, z = 4422.531 }, rot = { x = 21.719, y = 24.598, z = 359.644 }, level = 30, area_id = 32 },
	{ config_id = 253006, gadget_id = 70210101, pos = { x = -797.252, y = 65.658, z = 4422.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 253012, shape = RegionShape.SPHERE, radius = 3, pos = { x = -797.630, y = 65.729, z = 4422.675 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1253007, name = "ANY_GADGET_DIE_253007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_253007", action = "action_EVENT_ANY_GADGET_DIE_253007" },
	-- 刷面具鼬
	{ config_id = 1253008, name = "ANY_GADGET_DIE_253008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_253008", action = "action_EVENT_ANY_GADGET_DIE_253008" },
	-- 刷岩蕈兽
	{ config_id = 1253009, name = "ANY_GADGET_DIE_253009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_253009", action = "action_EVENT_ANY_GADGET_DIE_253009" },
	-- 刷草晶蝶
	{ config_id = 1253010, name = "ANY_GADGET_DIE_253010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_253010", action = "action_EVENT_ANY_GADGET_DIE_253010" },
	-- 刷蝎子
	{ config_id = 1253011, name = "ANY_GADGET_DIE_253011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_253011", action = "action_EVENT_ANY_GADGET_DIE_253011" },
	-- 需要伏击怪食用这个
	{ config_id = 1253012, name = "ENTER_REGION_253012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_253012", action = "action_EVENT_ENTER_REGION_253012" }
}

-- 变量
variables = {
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
		gadgets = { 253005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 253005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_253007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 253005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_253008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 253005 },
		regions = { 253012 },
		triggers = { "ANY_GADGET_DIE_253009", "ENTER_REGION_253012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 253005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_253010" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 253005 },
		regions = { 253012 },
		triggers = { "ANY_GADGET_DIE_253011", "ENTER_REGION_253012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_253007(context, evt)
	if 253005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_253007(context, evt)
	-- 创建id为253006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 253006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_253008(context, evt)
	if 253005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_253008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 253001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_253009(context, evt)
	if 253005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_253009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 253002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_253010(context, evt)
	if 253005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_253010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 253003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_253011(context, evt)
	if 253005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_253011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 253004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_253012(context, evt)
	if evt.param1 ~= 253012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_253012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 253005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end