-- 基础信息
local base_info = {
	group_id = 133307058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58001, monster_id = 26120401, pos = { x = -1242.470, y = -67.523, z = 5581.713 }, rot = { x = 0.000, y = 297.209, z = 0.000 }, level = 32, drop_tag = "大蕈兽", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 58004, monster_id = 26090901, pos = { x = -1257.599, y = -65.829, z = 5583.071 }, rot = { x = 0.000, y = 47.356, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 58005, monster_id = 26090901, pos = { x = -1249.238, y = -68.005, z = 5576.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 58006, monster_id = 26090901, pos = { x = -1257.006, y = -67.506, z = 5574.012 }, rot = { x = 0.000, y = 54.837, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 58008, monster_id = 26090901, pos = { x = -1241.630, y = -66.749, z = 5579.296 }, rot = { x = 0.000, y = 285.226, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58002, gadget_id = 70211002, pos = { x = -1253.575, y = -67.625, z = 5572.158 }, rot = { x = 0.000, y = 15.774, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058003, name = "ANY_MONSTER_DIE_58003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58003", action = "action_EVENT_ANY_MONSTER_DIE_58003" },
	{ config_id = 1058007, name = "MONSTER_BATTLE_58007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_58007", action = "action_EVENT_MONSTER_BATTLE_58007" }
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
		monsters = { 58001, 58004, 58005 },
		gadgets = { 58002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58003", "MONSTER_BATTLE_58007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 58006, 58008 },
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
function condition_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_58007(context, evt)
	if 58001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_58007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307058, 2)
	
	return 0
end