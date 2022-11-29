-- 基础信息
local base_info = {
	group_id = 133220277
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 277002, monster_id = 25080201, pos = { x = -2336.365, y = 210.559, z = -4399.886 }, rot = { x = 0.000, y = 78.231, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1006, area_id = 11 },
	{ config_id = 277006, monster_id = 25080101, pos = { x = -2334.136, y = 212.427, z = -4404.482 }, rot = { x = 0.000, y = 51.724, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1001, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 277001, gadget_id = 70211002, pos = { x = -2342.655, y = 212.798, z = -4402.285 }, rot = { x = 355.411, y = 161.326, z = 17.720 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 277005, gadget_id = 70310004, pos = { x = -2348.418, y = 209.816, z = -4382.674 }, rot = { x = 8.928, y = 6.125, z = 349.722 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1277003, name = "ANY_MONSTER_DIE_277003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_277003", action = "action_EVENT_ANY_MONSTER_DIE_277003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 277008, gadget_id = 70330064, pos = { x = -2310.666, y = 200.000, z = -4395.980 }, rot = { x = 0.000, y = 274.749, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 }
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
		monsters = { 277002, 277006 },
		gadgets = { 277001, 277005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_277003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_277003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_277003(context, evt)
	-- 将configid为 277001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 277001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end