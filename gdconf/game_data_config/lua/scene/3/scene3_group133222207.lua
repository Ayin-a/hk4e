-- 基础信息
local base_info = {
	group_id = 133222207
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 207010, gadget_id = 70211002, pos = { x = -4439.541, y = 223.918, z = -4541.866 }, rot = { x = 7.166, y = 24.523, z = 329.801 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 207016, gadget_id = 70380294, pos = { x = -4681.302, y = 200.001, z = -4268.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 207011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4439.321, y = 224.510, z = -4541.979 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1207011, name = "ENTER_REGION_207011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_207011", action = "action_EVENT_ENTER_REGION_207011" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 207001, gadget_id = 70380280, pos = { x = -4459.875, y = 200.000, z = -4530.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 207002, gadget_id = 70380280, pos = { x = -4471.443, y = 200.000, z = -4560.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 207003, gadget_id = 70380280, pos = { x = -4465.835, y = 200.000, z = -4591.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 207004, gadget_id = 70380276, pos = { x = -4346.494, y = 200.000, z = -4537.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 207005, gadget_id = 70380276, pos = { x = -4497.758, y = 200.000, z = -4640.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 207006, gadget_id = 70380280, pos = { x = -4440.109, y = 200.000, z = -4504.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 207007, gadget_id = 70380276, pos = { x = -4399.616, y = 200.000, z = -4619.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 207008, gadget_id = 70290086, pos = { x = -4431.178, y = 228.295, z = -4548.196 }, rot = { x = 312.992, y = 278.457, z = 294.006 }, level = 30, area_id = 14 },
		{ config_id = 207009, gadget_id = 70380276, pos = { x = -4399.432, y = 200.000, z = -4461.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 207012, gadget_id = 70380276, pos = { x = -4597.722, y = 200.000, z = -4680.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 207013, gadget_id = 70380276, pos = { x = -4569.104, y = 200.000, z = -4758.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 207014, gadget_id = 70380276, pos = { x = -4420.295, y = 200.000, z = -4712.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 207015, gadget_id = 70380276, pos = { x = -4490.818, y = 200.000, z = -4772.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
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
		monsters = { },
		gadgets = { 207010, 207016 },
		regions = { 207011 },
		triggers = { "ENTER_REGION_207011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_207011(context, evt)
	if evt.param1 ~= 207011 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_207011(context, evt)
	-- 将configid为 207010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 207010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end