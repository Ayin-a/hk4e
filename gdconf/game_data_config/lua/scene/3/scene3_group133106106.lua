-- 基础信息
local base_info = {
	group_id = 133106106
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 106004, monster_id = 21010401, pos = { x = -496.573, y = 182.045, z = 936.060 }, rot = { x = 0.000, y = 140.455, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 8 },
	{ config_id = 106006, monster_id = 21010501, pos = { x = -488.234, y = 180.929, z = 919.669 }, rot = { x = 0.000, y = 335.994, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 8 },
	{ config_id = 106007, monster_id = 21020501, pos = { x = -488.248, y = 181.450, z = 927.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘岩盔王", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 106002, gadget_id = 70211022, pos = { x = -488.308, y = 181.217, z = 925.316 }, rot = { x = 353.758, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1106003, name = "ANY_MONSTER_DIE_106003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_106003", action = "action_EVENT_ANY_MONSTER_DIE_106003" }
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
		monsters = { 106004, 106006, 106007 },
		gadgets = { 106002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_106003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_106003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_106003(context, evt)
	-- 将configid为 106002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106002, GadgetState.Default) then
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