-- 基础信息
local base_info = {
	group_id = 133108027
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27004, monster_id = 22010301, pos = { x = -135.965, y = 200.681, z = -217.609 }, rot = { x = 0.000, y = 120.352, z = 0.000 }, level = 22, drop_tag = "深渊法师", disableWander = true, isElite = true, pose_id = 9013, area_id = 7 },
	{ config_id = 27005, monster_id = 22010201, pos = { x = -135.223, y = 200.704, z = -221.202 }, rot = { x = 0.000, y = 35.779, z = 0.000 }, level = 22, drop_tag = "深渊法师", disableWander = true, isElite = true, pose_id = 9013, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 27002, gadget_id = 70211012, pos = { x = -131.273, y = 200.638, z = -218.245 }, rot = { x = 0.000, y = 254.408, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1027003, name = "ANY_MONSTER_DIE_27003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27003", action = "action_EVENT_ANY_MONSTER_DIE_27003" }
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
		-- description = suite_1,
		monsters = { 27004, 27005 },
		gadgets = { 27002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_27003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 将configid为 27002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end