-- 基础信息
local base_info = {
	group_id = 133307466
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 466001, monster_id = 25210203, pos = { x = -1391.754, y = 68.500, z = 5488.082 }, rot = { x = 0.000, y = 330.199, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9503, area_id = 32 },
	{ config_id = 466004, monster_id = 25310301, pos = { x = -1385.607, y = 68.537, z = 5495.949 }, rot = { x = 0.000, y = 272.193, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 466002, gadget_id = 70211002, pos = { x = -1391.370, y = 68.465, z = 5499.829 }, rot = { x = 0.000, y = 22.520, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1466003, name = "ANY_MONSTER_DIE_466003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_466003", action = "action_EVENT_ANY_MONSTER_DIE_466003" }
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
		monsters = { 466001, 466004 },
		gadgets = { 466002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_466003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_466003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_466003(context, evt)
	-- 将configid为 466002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 466002, GadgetState.Default) then
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