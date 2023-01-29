-- 基础信息
local base_info = {
	group_id = 220032004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 22010201, pos = { x = 536.462, y = -1.975, z = 245.159 }, rot = { x = 0.000, y = 336.981, z = 0.000 }, level = 1, disableWander = true, affix = { 6101 }, isElite = true },
	{ config_id = 4019, monster_id = 22010101, pos = { x = 529.681, y = -1.984, z = 245.162 }, rot = { x = 0.000, y = 35.600, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4003, gadget_id = 70310001, pos = { x = 540.962, y = -1.983, z = 235.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4004, gadget_id = 70310001, pos = { x = 526.032, y = -1.983, z = 235.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4005, gadget_id = 70310001, pos = { x = 525.396, y = -2.000, z = 247.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4006, gadget_id = 70310001, pos = { x = 541.246, y = -2.000, z = 247.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4008, gadget_id = 70900201, pos = { x = 532.716, y = -2.204, z = 241.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4009, gadget_id = 70690001, pos = { x = 512.428, y = -18.782, z = 121.710 }, rot = { x = 0.885, y = 91.105, z = 5.640 }, level = 1 },
	{ config_id = 4010, gadget_id = 70690001, pos = { x = 531.466, y = -18.327, z = 125.762 }, rot = { x = 330.805, y = 359.566, z = 355.683 }, level = 1 },
	{ config_id = 4011, gadget_id = 70690001, pos = { x = 531.364, y = -3.477, z = 184.680 }, rot = { x = 358.691, y = 2.513, z = 355.960 }, level = 1 },
	{ config_id = 4012, gadget_id = 70690001, pos = { x = 531.291, y = -15.383, z = 131.921 }, rot = { x = 330.805, y = 359.566, z = 355.683 }, level = 1 },
	{ config_id = 4013, gadget_id = 70690001, pos = { x = 531.291, y = -10.262, z = 143.564 }, rot = { x = 330.805, y = 359.566, z = 355.683 }, level = 1 },
	{ config_id = 4014, gadget_id = 70690001, pos = { x = 531.291, y = -7.632, z = 149.405 }, rot = { x = 330.805, y = 359.566, z = 355.683 }, level = 1 },
	{ config_id = 4015, gadget_id = 70690001, pos = { x = 531.364, y = -3.477, z = 165.427 }, rot = { x = 358.691, y = 2.513, z = 355.960 }, level = 1 },
	{ config_id = 4016, gadget_id = 70690001, pos = { x = 531.475, y = -3.603, z = 174.794 }, rot = { x = 358.691, y = 2.513, z = 355.960 }, level = 1 },
	{ config_id = 4017, gadget_id = 70690001, pos = { x = 531.291, y = -12.773, z = 137.490 }, rot = { x = 330.805, y = 359.566, z = 355.683 }, level = 1 },
	{ config_id = 4018, gadget_id = 70211022, pos = { x = 533.005, y = -1.984, z = 248.265 }, rot = { x = 0.000, y = 180.566, z = 0.000 }, level = 6, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 4020, gadget_id = 70900205, pos = { x = 536.128, y = -73.326, z = 111.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4007, shape = RegionShape.CUBIC, size = { x = 10.000, y = 20.000, z = 10.000 }, pos = { x = 533.002, y = -1.998, z = 219.984 } }
}

-- 触发器
triggers = {
	{ config_id = 1004002, name = "ANY_MONSTER_DIE_4002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4002", action = "action_EVENT_ANY_MONSTER_DIE_4002" },
	{ config_id = 1004007, name = "ENTER_REGION_4007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4007", action = "action_EVENT_ENTER_REGION_4007" }
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
	suite = 2,
	end_suite = 0,
	rand_suite = false
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
		monsters = { 4001, 4019 },
		gadgets = { 4003, 4004, 4005, 4006, 4009, 4010, 4011, 4012, 4013, 4014, 4015, 4016, 4017, 4018 },
		regions = { 4007 },
		triggers = { "ANY_MONSTER_DIE_4002", "ENTER_REGION_4007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1011105") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 4018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4007(context, evt)
	if evt.param1 ~= 4007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4007(context, evt)
	-- 将configid为 4003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220032003, monsters = {}, gadgets = {3015} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为4008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end