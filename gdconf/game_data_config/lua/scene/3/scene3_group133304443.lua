-- 基础信息
local base_info = {
	group_id = 133304443
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 443002, monster_id = 26120201, pos = { x = -1486.463, y = 271.726, z = 2859.142 }, rot = { x = 0.000, y = 194.781, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 },
	{ config_id = 443003, monster_id = 26090801, pos = { x = -1484.637, y = 270.929, z = 2851.655 }, rot = { x = 0.000, y = 337.356, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 443004, monster_id = 26090801, pos = { x = -1491.328, y = 271.943, z = 2852.908 }, rot = { x = 0.000, y = 7.919, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 443005, monster_id = 26090801, pos = { x = -1488.160, y = 271.419, z = 2851.006 }, rot = { x = 0.000, y = 344.350, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 443001, gadget_id = 70211002, pos = { x = -1487.894, y = 271.756, z = 2854.732 }, rot = { x = 0.000, y = 289.244, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1443006, name = "ANY_MONSTER_DIE_443006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_443006", action = "action_EVENT_ANY_MONSTER_DIE_443006", trigger_count = 0 }
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
		monsters = { 443002, 443003, 443004, 443005 },
		gadgets = { 443001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_443006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_443006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_443006(context, evt)
	-- 将configid为 443001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 443001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end