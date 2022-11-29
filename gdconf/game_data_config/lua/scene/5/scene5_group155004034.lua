-- 基础信息
local base_info = {
	group_id = 155004034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 24020301, pos = { x = 113.585, y = 205.373, z = 1220.128 }, rot = { x = 0.000, y = 342.419, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 100, area_id = 200 },
	{ config_id = 34004, monster_id = 24020401, pos = { x = 112.360, y = 201.991, z = 1241.666 }, rot = { x = 0.000, y = 338.136, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 101, area_id = 200 },
	{ config_id = 34005, monster_id = 24020401, pos = { x = 102.857, y = 202.707, z = 1235.197 }, rot = { x = 0.000, y = 345.874, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 34002, gadget_id = 70211002, pos = { x = 107.891, y = 205.624, z = 1214.269 }, rot = { x = 9.752, y = 359.924, z = 359.105 }, level = 21, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034003, name = "ANY_MONSTER_DIE_34003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34003", action = "action_EVENT_ANY_MONSTER_DIE_34003" }
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
		monsters = { 34001, 34004, 34005 },
		gadgets = { 34002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34003(context, evt)
	-- 将configid为 34002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34002, GadgetState.Default) then
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