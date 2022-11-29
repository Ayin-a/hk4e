-- 基础信息
local base_info = {
	group_id = 133304364
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 364006, monster_id = 26090401, pos = { x = -1524.034, y = 203.735, z = 2751.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 364007, monster_id = 26090401, pos = { x = -1524.214, y = 203.597, z = 2745.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 364008, monster_id = 26090401, pos = { x = -1529.360, y = 203.485, z = 2748.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 364009, monster_id = 26120101, pos = { x = -1520.664, y = 203.334, z = 2749.020 }, rot = { x = 0.000, y = 270.513, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 364001, gadget_id = 70900050, pos = { x = -1525.808, y = 203.486, z = 2748.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 21 },
	{ config_id = 364002, gadget_id = 70900050, pos = { x = -1462.229, y = 205.386, z = 2729.692 }, rot = { x = 354.833, y = 346.139, z = 351.998 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 364003, gadget_id = 70900050, pos = { x = -1485.615, y = 206.088, z = 2748.997 }, rot = { x = 347.502, y = 359.548, z = 17.908 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 364004, gadget_id = 70210101, pos = { x = -1482.501, y = 205.040, z = 2749.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", area_id = 21 },
	{ config_id = 364005, gadget_id = 70210101, pos = { x = -1477.700, y = 205.852, z = 2750.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", area_id = 21 },
	{ config_id = 364012, gadget_id = 70211101, pos = { x = -1530.343, y = 203.603, z = 2752.223 }, rot = { x = 0.000, y = 203.943, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1364010, name = "ANY_MONSTER_DIE_364010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_364010", action = "action_EVENT_ANY_MONSTER_DIE_364010", trigger_count = 0 },
	{ config_id = 1364011, name = "GADGET_STATE_CHANGE_364011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_364011", action = "action_EVENT_GADGET_STATE_CHANGE_364011", trigger_count = 0 }
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
		monsters = { 364006, 364007, 364008, 364009 },
		gadgets = { 364001, 364002, 364003, 364004, 364005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_364010", "GADGET_STATE_CHANGE_364011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_364010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_364010(context, evt)
	-- 将configid为 364001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 364001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_364011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304364, 364001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304364, 364002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304364, 364003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_364011(context, evt)
	-- 创建id为364012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 364012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end