-- 基础信息
local base_info = {
	group_id = 133313094
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 94001, monster_id = 26090201, pos = { x = -433.938, y = -26.833, z = 5314.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 94004, monster_id = 26090201, pos = { x = -437.506, y = -27.626, z = 5307.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 94005, monster_id = 26090201, pos = { x = -432.604, y = -27.719, z = 5310.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 32 },
	{ config_id = 94006, monster_id = 26120101, pos = { x = -442.448, y = -24.036, z = 5313.588 }, rot = { x = 0.000, y = 117.497, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 201, area_id = 32 },
	{ config_id = 94008, monster_id = 26090901, pos = { x = -426.103, y = -26.993, z = 5308.944 }, rot = { x = 0.000, y = 353.083, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 94009, monster_id = 26090901, pos = { x = -446.216, y = -23.685, z = 5307.942 }, rot = { x = 0.000, y = 45.300, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 94002, gadget_id = 70211002, pos = { x = -436.087, y = -27.476, z = 5311.194 }, rot = { x = 0.000, y = 291.190, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1094003, name = "ANY_MONSTER_DIE_94003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_94003", action = "action_EVENT_ANY_MONSTER_DIE_94003" },
	{ config_id = 1094007, name = "MONSTER_BATTLE_94007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_94007", action = "action_EVENT_MONSTER_BATTLE_94007" }
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
		monsters = { 94001, 94004, 94005, 94006 },
		gadgets = { 94002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_94003", "MONSTER_BATTLE_94007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 94008, 94009 },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_94003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_94003(context, evt)
	-- 将configid为 94002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_94007(context, evt)
	if 94006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_94007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313094, 2)
	
	return 0
end