-- 基础信息
local base_info = {
	group_id = 133003279
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 933, monster_id = 20010301, pos = { x = 2815.811, y = 306.675, z = -1567.812 }, rot = { x = 0.000, y = 80.259, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 934, monster_id = 20010301, pos = { x = 2818.993, y = 308.075, z = -1559.991 }, rot = { x = 0.000, y = 76.224, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 935, monster_id = 20010301, pos = { x = 2827.413, y = 309.434, z = -1564.687 }, rot = { x = 0.000, y = 251.685, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 936, monster_id = 20010301, pos = { x = 2821.022, y = 308.745, z = -1569.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3029, gadget_id = 70211012, pos = { x = 2820.684, y = 304.945, z = -1565.593 }, rot = { x = 16.395, y = 273.305, z = 0.000 }, level = 26, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 191, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2821.856, y = 304.135, z = -1566.572 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000191, name = "ENTER_REGION_191", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_191", action = "action_EVENT_ENTER_REGION_191", tlog_tag = "望风山地_279_封印宝箱_触发" },
	{ config_id = 1000192, name = "ANY_MONSTER_DIE_192", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192", action = "action_EVENT_ANY_MONSTER_DIE_192", tlog_tag = "望风山地_279_封印宝箱_结算" }
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
		gadgets = { 3029 },
		regions = { 191 },
		triggers = { "ENTER_REGION_191", "ANY_MONSTER_DIE_192" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_191(context, evt)
	if evt.param1 ~= 191 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_191(context, evt)
	-- 将configid为 3029 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3029, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 933, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 934, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 935, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 936, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_192(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_192(context, evt)
	-- 解锁目标3029
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3029, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end