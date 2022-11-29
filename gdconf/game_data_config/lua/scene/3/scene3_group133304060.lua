-- 基础信息
local base_info = {
	group_id = 133304060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 24020101, pos = { x = -1246.633, y = 142.585, z = 2744.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 21 },
	{ config_id = 60002, monster_id = 24020201, pos = { x = -1259.850, y = 142.584, z = 2753.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 21 },
	{ config_id = 60003, monster_id = 24020301, pos = { x = -1237.005, y = 142.585, z = 2757.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 21 },
	{ config_id = 60004, monster_id = 24020401, pos = { x = -1250.429, y = 142.586, z = 2767.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 21 },
	{ config_id = 60005, monster_id = 21010101, pos = { x = -1250.162, y = 142.593, z = 2756.598 }, rot = { x = 0.000, y = 103.909, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9011, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60007, gadget_id = 70211151, pos = { x = -1248.612, y = 142.594, z = 2755.779 }, rot = { x = 0.000, y = 300.825, z = 0.000 }, level = 26, chest_drop_id = 21910042, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1060006, name = "ANY_MONSTER_DIE_60006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60006", action = "action_EVENT_ANY_MONSTER_DIE_60006", trigger_count = 0 },
	{ config_id = 1060009, name = "ANY_MONSTER_DIE_60009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60009", action = "action_EVENT_ANY_MONSTER_DIE_60009" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1060008, name = "MONSTER_BATTLE_60008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_60008" }
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
		monsters = { 60005 },
		gadgets = { 60007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_60009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 60001, 60002, 60003, 60004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_60006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_60006(context, evt)
	-- 将configid为 60007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60009(context, evt)
	--判断死亡怪物的configid是否为 60005
	if evt.param1 ~= 60005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_60009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304060, 2)
	
	return 0
end