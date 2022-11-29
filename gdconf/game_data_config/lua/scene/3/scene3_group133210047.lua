-- 基础信息
local base_info = {
	group_id = 133210047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 24020201, pos = { x = -4100.248, y = 200.000, z = -1102.025 }, rot = { x = 0.000, y = 118.342, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 17 },
	{ config_id = 47004, monster_id = 24020401, pos = { x = -4091.026, y = 200.274, z = -1093.210 }, rot = { x = 0.000, y = 183.603, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47002, gadget_id = 70211012, pos = { x = -4100.486, y = 200.126, z = -1095.275 }, rot = { x = 3.937, y = 143.672, z = 0.913 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1047003, name = "ANY_MONSTER_DIE_47003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47003", action = "action_EVENT_ANY_MONSTER_DIE_47003" }
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
		monsters = { 47001, 47004 },
		gadgets = { 47002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_47003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_47003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47003(context, evt)
	-- 将configid为 47002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 47002, GadgetState.Default) then
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