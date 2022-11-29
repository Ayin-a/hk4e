-- 基础信息
local base_info = {
	group_id = 133309520
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 520001, monster_id = 24040301, pos = { x = -2555.953, y = 35.511, z = 5396.585 }, rot = { x = 0.000, y = 235.514, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1002, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 520002, gadget_id = 70210101, pos = { x = -2580.971, y = 42.507, z = 5359.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 520003, gadget_id = 70211002, pos = { x = -2557.122, y = 34.936, z = 5390.905 }, rot = { x = 0.039, y = 313.254, z = 1.265 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 520004, gadget_id = 70210101, pos = { x = -2577.092, y = 42.209, z = 5365.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 520006, gadget_id = 70710078, pos = { x = -2556.261, y = 35.121, z = 5393.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 520007, gadget_id = 70710078, pos = { x = -2565.486, y = 33.895, z = 5387.199 }, rot = { x = 0.000, y = 212.601, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 520010, gadget_id = 70210101, pos = { x = -2566.547, y = 39.671, z = 5375.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 520012, gadget_id = 70710078, pos = { x = -2555.076, y = 35.577, z = 5397.289 }, rot = { x = 0.000, y = 92.317, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1520011, name = "ANY_MONSTER_DIE_520011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_520011", action = "action_EVENT_ANY_MONSTER_DIE_520011" }
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
		monsters = { 520001 },
		gadgets = { 520002, 520003, 520004, 520006, 520007, 520010, 520012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_520011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_520011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_520011(context, evt)
	-- 将configid为 520003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 520003, GadgetState.Default) then
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