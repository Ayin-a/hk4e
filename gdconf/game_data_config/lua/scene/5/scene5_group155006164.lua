-- 基础信息
local base_info = {
	group_id = 155006164
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 24020201, pos = { x = 244.827, y = 206.184, z = -340.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 164004, monster_id = 24020201, pos = { x = 240.440, y = 206.533, z = -336.766 }, rot = { x = 0.000, y = 34.181, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 164005, monster_id = 24020201, pos = { x = 240.409, y = 207.647, z = -342.185 }, rot = { x = 0.000, y = 2.967, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164002, gadget_id = 70211002, pos = { x = 247.677, y = 204.290, z = -336.197 }, rot = { x = 333.679, y = 233.691, z = 346.336 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1164003, name = "ANY_MONSTER_DIE_164003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164003", action = "action_EVENT_ANY_MONSTER_DIE_164003" }
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
		monsters = { 164001, 164004, 164005 },
		gadgets = { 164002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_164003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164003(context, evt)
	-- 将configid为 164002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164002, GadgetState.Default) then
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