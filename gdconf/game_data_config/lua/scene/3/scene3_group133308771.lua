-- 基础信息
local base_info = {
	group_id = 133308771
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 771001, monster_id = 25310101, pos = { x = -1187.851, y = 111.388, z = 4860.800 }, rot = { x = 0.000, y = 358.264, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 32 },
	{ config_id = 771004, monster_id = 25310201, pos = { x = -1190.342, y = 111.388, z = 4859.331 }, rot = { x = 0.000, y = 358.264, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 32 },
	{ config_id = 771005, monster_id = 25310201, pos = { x = -1182.345, y = 111.388, z = 4859.573 }, rot = { x = 0.000, y = 358.264, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 32 },
	{ config_id = 771006, monster_id = 25310101, pos = { x = -1184.747, y = 111.388, z = 4861.127 }, rot = { x = 0.000, y = 358.264, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 771002, gadget_id = 70211002, pos = { x = -1186.971, y = 111.343, z = 4864.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1771003, name = "ANY_MONSTER_DIE_771003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_771003", action = "action_EVENT_ANY_MONSTER_DIE_771003" }
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
		monsters = { 771001, 771004, 771005, 771006 },
		gadgets = { 771002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_771003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_771003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_771003(context, evt)
	-- 将configid为 771002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 771002, GadgetState.Default) then
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