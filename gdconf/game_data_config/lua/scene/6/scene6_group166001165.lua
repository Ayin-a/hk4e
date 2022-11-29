-- 基础信息
local base_info = {
	group_id = 166001165
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
	{ config_id = 165002, gadget_id = 70220015, pos = { x = 907.851, y = 752.117, z = 323.286 }, rot = { x = 272.164, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 165003, gadget_id = 70220015, pos = { x = 899.853, y = 752.214, z = 317.544 }, rot = { x = 272.164, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 165004, gadget_id = 70220015, pos = { x = 900.121, y = 752.945, z = 315.659 }, rot = { x = 0.000, y = 351.855, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 165005, gadget_id = 70220016, pos = { x = 907.366, y = 752.081, z = 316.010 }, rot = { x = 270.710, y = 180.002, z = 323.463 }, level = 32, area_id = 300 },
	{ config_id = 165006, gadget_id = 70220016, pos = { x = 906.364, y = 752.069, z = 324.092 }, rot = { x = 270.714, y = 180.000, z = 218.893 }, level = 32, area_id = 300 },
	{ config_id = 165007, gadget_id = 70211001, pos = { x = 904.731, y = 752.171, z = 315.979 }, rot = { x = 0.000, y = 352.767, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1165008, name = "ANY_GADGET_DIE_165008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_165008", action = "action_EVENT_ANY_GADGET_DIE_165008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 165001, gadget_id = 70220015, pos = { x = 904.567, y = 752.826, z = 325.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
		{ config_id = 165009, gadget_id = 70710153, pos = { x = 901.394, y = 752.140, z = 314.828 }, rot = { x = 0.000, y = 354.301, z = 0.000 }, level = 32, area_id = 300 }
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
		gadgets = { 165002, 165003, 165004, 165005, 165006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_165008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_165008(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001165}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_165008(context, evt)
	-- 创建id为165007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 165007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end