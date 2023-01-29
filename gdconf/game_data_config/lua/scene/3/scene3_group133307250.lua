-- 基础信息
local base_info = {
	group_id = 133307250
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 250005, monster_id = 28060402, pos = { x = -1253.436, y = 55.166, z = 5277.625 }, rot = { x = 0.000, y = 93.877, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 32 },
	{ config_id = 250006, monster_id = 25110301, pos = { x = -1260.937, y = 56.172, z = 5271.128 }, rot = { x = 0.000, y = 264.218, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, pose_id = 1, area_id = 32 },
	{ config_id = 250007, monster_id = 28060402, pos = { x = -1254.260, y = 55.290, z = 5273.288 }, rot = { x = 0.000, y = 133.112, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 250008, gadget_id = 70211002, pos = { x = -1255.262, y = 55.582, z = 5275.864 }, rot = { x = 345.589, y = 297.717, z = 355.456 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1250009, name = "ANY_MONSTER_DIE_250009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_250009", action = "action_EVENT_ANY_MONSTER_DIE_250009" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 250001, monster_id = 25210401, pos = { x = -1251.458, y = 51.953, z = 5274.756 }, rot = { x = 0.000, y = 338.760, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 32 },
		{ config_id = 250002, monster_id = 25210401, pos = { x = -1250.177, y = 51.671, z = 5277.469 }, rot = { x = 0.000, y = 232.537, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 32 },
		{ config_id = 250003, monster_id = 25210401, pos = { x = -1253.249, y = 50.713, z = 5276.465 }, rot = { x = 0.000, y = 105.043, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 32 },
		{ config_id = 250004, monster_id = 21010101, pos = { x = -1251.729, y = 51.401, z = 5276.241 }, rot = { x = 0.000, y = 338.760, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9003, area_id = 32 }
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
		monsters = { 250005, 250006, 250007 },
		gadgets = { 250008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_250009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_250009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_250009(context, evt)
	-- 将configid为 250008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end