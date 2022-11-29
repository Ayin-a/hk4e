-- 基础信息
local base_info = {
	group_id = 133003301
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 984, monster_id = 20011001, pos = { x = 2324.864, y = 211.821, z = -1116.229 }, rot = { x = 0.000, y = 141.825, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3213, gadget_id = 70211101, pos = { x = 2322.176, y = 211.356, z = -1121.621 }, rot = { x = 0.000, y = 108.069, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 223, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 2327.005, y = 208.330, z = -1119.338 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000223, name = "ENTER_REGION_223", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_223", action = "action_EVENT_ENTER_REGION_223" }
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
		gadgets = { 3213 },
		regions = { 223 },
		triggers = { "ENTER_REGION_223" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_223(context, evt)
	if evt.param1 ~= 223 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_223(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 984, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end