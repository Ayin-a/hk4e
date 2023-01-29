-- 基础信息
local base_info = {
	group_id = 133307270
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 270001, monster_id = 24040201, pos = { x = -1396.033, y = -37.618, z = 5664.985 }, rot = { x = 0.000, y = 281.764, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 32 },
	{ config_id = 270006, monster_id = 24040301, pos = { x = -1395.208, y = -37.618, z = 5656.361 }, rot = { x = 0.000, y = 338.234, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 270002, gadget_id = 70211002, pos = { x = -1391.966, y = -37.618, z = 5664.160 }, rot = { x = 0.000, y = 284.178, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 270007, gadget_id = 70330432, pos = { x = -1398.778, y = -37.778, z = 5671.476 }, rot = { x = 0.000, y = 152.672, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 270008, gadget_id = 70330432, pos = { x = -1403.652, y = -36.429, z = 5657.705 }, rot = { x = 341.280, y = 76.818, z = 39.274 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1270003, name = "ANY_MONSTER_DIE_270003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_270003", action = "action_EVENT_ANY_MONSTER_DIE_270003" },
	{ config_id = 1270005, name = "MONSTER_BATTLE_270005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_270005", action = "action_EVENT_MONSTER_BATTLE_270005" }
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
		monsters = { 270001 },
		gadgets = { 270002, 270007, 270008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_270003", "MONSTER_BATTLE_270005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 270006 },
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
function condition_EVENT_ANY_MONSTER_DIE_270003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_270003(context, evt)
	-- 将configid为 270002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_270005(context, evt)
	if 270001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_270005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307270, 2)
	
	return 0
end