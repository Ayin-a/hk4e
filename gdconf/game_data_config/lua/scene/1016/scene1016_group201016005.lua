-- 基础信息
local base_info = {
	group_id = 201016005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6, monster_id = 25020101, pos = { x = -74.462, y = 10.597, z = -13.661 }, rot = { x = 0.000, y = 96.700, z = 0.000 }, level = 1, disableWander = true, isElite = true, title_id = 7006, special_name_id = 10012 },
	{ config_id = 12, monster_id = 25010601, pos = { x = -79.207, y = 10.280, z = -3.727 }, rot = { x = 0.000, y = 121.154, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 13, monster_id = 25010201, pos = { x = -78.776, y = 10.383, z = -22.189 }, rot = { x = 0.000, y = 63.765, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5003, monster_id = 25030201, pos = { x = -71.314, y = 10.597, z = -18.515 }, rot = { x = 0.000, y = 57.299, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47, gadget_id = 70350002, pos = { x = -48.633, y = 11.628, z = -13.849 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5001, gadget_id = 70211021, pos = { x = -78.712, y = 10.476, z = -13.473 }, rot = { x = 0.000, y = 90.822, z = 0.000 }, level = 1, drop_tag = "战斗高级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 20, shape = RegionShape.CUBIC, size = { x = 12.000, y = 5.000, z = 7.000 }, pos = { x = -41.726, y = 14.491, z = -13.702 } }
}

-- 触发器
triggers = {
	{ config_id = 1000020, name = "ENTER_REGION_20", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20", action = "action_EVENT_ENTER_REGION_20", forbid_guest = false },
	{ config_id = 1005002, name = "DUNGEON_SETTLE_5002", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_5002", action = "action_EVENT_DUNGEON_SETTLE_5002" }
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
	end_suite = 1,
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
		monsters = { 6, 12, 13, 5003 },
		gadgets = { 47 },
		regions = { 20 },
		triggers = { "ENTER_REGION_20", "DUNGEON_SETTLE_5002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_20(context, evt)
	if evt.param1 ~= 20 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20(context, evt)
	-- 将configid为 47 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 47, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_5002(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_5002(context, evt)
	-- 创建id为5001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end