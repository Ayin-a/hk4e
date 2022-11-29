-- 基础信息
local base_info = {
	group_id = 133309208
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 208001, monster_id = 26090101, pos = { x = -2839.704, y = 75.170, z = 5804.303 }, rot = { x = 0.000, y = 180.033, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 27 },
	{ config_id = 208004, monster_id = 26090101, pos = { x = -2841.648, y = 76.967, z = 5814.945 }, rot = { x = 0.000, y = 112.353, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 105, area_id = 27 },
	{ config_id = 208005, monster_id = 26090101, pos = { x = -2838.761, y = 75.170, z = 5803.440 }, rot = { x = 0.000, y = 237.597, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 103, area_id = 27 },
	{ config_id = 208006, monster_id = 26120101, pos = { x = -2824.735, y = 75.517, z = 5815.636 }, rot = { x = 0.000, y = 183.645, z = 0.000 }, level = 32, drop_tag = "大蕈兽", disableWander = true, pose_id = 103, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 208002, gadget_id = 70211002, pos = { x = -2842.708, y = 77.236, z = 5813.949 }, rot = { x = 9.761, y = 104.694, z = 1.962 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1208003, name = "ANY_MONSTER_DIE_208003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_208003", action = "action_EVENT_ANY_MONSTER_DIE_208003" }
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
		monsters = { 208001, 208004, 208005, 208006 },
		gadgets = { 208002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_208003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_208003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_208003(context, evt)
	-- 将configid为 208002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 208002, GadgetState.Default) then
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