-- 基础信息
local base_info = {
	group_id = 133003271
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 918, monster_id = 28030101, pos = { x = 2652.159, y = 266.721, z = -1335.036 }, rot = { x = 0.000, y = 298.146, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 919, monster_id = 28030101, pos = { x = 2710.098, y = 261.742, z = -1367.565 }, rot = { x = 0.000, y = 97.275, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 923, monster_id = 20010501, pos = { x = 2678.557, y = 263.566, z = -1418.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 924, monster_id = 20010501, pos = { x = 2676.498, y = 263.692, z = -1416.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 925, monster_id = 20010501, pos = { x = 2674.775, y = 263.608, z = -1418.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3015, gadget_id = 70211101, pos = { x = 2690.121, y = 262.208, z = -1408.055 }, rot = { x = 0.433, y = 336.216, z = 354.532 }, level = 26, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 185, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2677.075, y = 262.366, z = -1419.255 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000185, name = "ENTER_REGION_185", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185", action = "action_EVENT_ENTER_REGION_185" }
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
		monsters = { 918, 919 },
		gadgets = { 3015 },
		regions = { 185 },
		triggers = { "ENTER_REGION_185" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_185(context, evt)
	if evt.param1 ~= 185 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 923, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 924, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 925, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end