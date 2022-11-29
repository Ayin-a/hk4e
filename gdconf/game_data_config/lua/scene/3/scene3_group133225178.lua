-- 基础信息
local base_info = {
	group_id = 133225178
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 178001, monster_id = 22050101, pos = { x = -6741.632, y = 200.925, z = -2751.328 }, rot = { x = 0.000, y = 49.700, z = 0.000 }, level = 32, drop_tag = "兽境猎犬", disableWander = true, pose_id = 101, area_id = 18 },
	{ config_id = 178004, monster_id = 22040101, pos = { x = -6733.875, y = 200.853, z = -2754.603 }, rot = { x = 0.000, y = 47.987, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 178002, gadget_id = 70211151, pos = { x = -6732.429, y = 201.018, z = -2752.225 }, rot = { x = 353.722, y = 30.696, z = 355.104 }, level = 26, chest_drop_id = 21900004, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1178003, name = "ANY_MONSTER_DIE_178003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_178003", action = "action_EVENT_ANY_MONSTER_DIE_178003" }
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
		monsters = { 178001, 178004 },
		gadgets = { 178002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_178003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_178003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_178003(context, evt)
	-- 将configid为 178002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 178002, GadgetState.Default) then
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