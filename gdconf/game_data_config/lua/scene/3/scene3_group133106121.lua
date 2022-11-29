-- 基础信息
local base_info = {
	group_id = 133106121
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121001, monster_id = 25030201, pos = { x = -350.597, y = 201.792, z = 858.076 }, rot = { x = 0.000, y = 135.829, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 8 },
	{ config_id = 121002, monster_id = 25020201, pos = { x = -360.676, y = 204.569, z = 855.491 }, rot = { x = 0.000, y = 11.954, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, area_id = 8 },
	{ config_id = 121004, monster_id = 25070101, pos = { x = -349.248, y = 201.847, z = 856.753 }, rot = { x = 0.000, y = 340.643, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 121005, gadget_id = 70211002, pos = { x = -359.895, y = 204.535, z = 853.573 }, rot = { x = 358.217, y = 57.490, z = 2.196 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 121006, gadget_id = 70310006, pos = { x = -356.548, y = 204.781, z = 850.743 }, rot = { x = 2.385, y = 93.159, z = 5.490 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1121007, name = "ANY_MONSTER_DIE_121007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_121007", action = "action_EVENT_ANY_MONSTER_DIE_121007" }
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
		monsters = { 121001, 121002, 121004 },
		gadgets = { 121005, 121006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_121007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_121007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_121007(context, evt)
	-- 将configid为 121005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121005, GadgetState.Default) then
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