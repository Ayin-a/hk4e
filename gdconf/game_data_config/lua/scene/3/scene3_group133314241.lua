-- 基础信息
local base_info = {
	group_id = 133314241
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 241001, monster_id = 28060401, pos = { x = -167.786, y = 87.273, z = 5053.006 }, rot = { x = 0.000, y = 296.625, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 3, area_id = 32 },
	{ config_id = 241004, monster_id = 25310101, pos = { x = -171.366, y = 88.548, z = 5052.296 }, rot = { x = 0.000, y = 91.341, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9003, area_id = 32 },
	{ config_id = 241008, monster_id = 28060401, pos = { x = -169.608, y = 86.698, z = 5049.688 }, rot = { x = 0.000, y = 296.625, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 3, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 241002, gadget_id = 70210101, pos = { x = -139.795, y = 72.633, z = 5015.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 32 },
	{ config_id = 241005, gadget_id = 70211002, pos = { x = -172.694, y = 88.467, z = 5050.409 }, rot = { x = 19.116, y = 111.845, z = 354.532 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 241006, gadget_id = 70300105, pos = { x = -176.022, y = 91.972, z = 5056.932 }, rot = { x = 350.771, y = 18.933, z = 340.617 }, level = 32, area_id = 32 },
	{ config_id = 241007, gadget_id = 70220025, pos = { x = -172.463, y = 89.356, z = 5053.096 }, rot = { x = 61.034, y = 306.028, z = 310.680 }, level = 32, area_id = 32 },
	{ config_id = 241009, gadget_id = 70220048, pos = { x = -174.379, y = 89.508, z = 5051.656 }, rot = { x = 346.085, y = 339.562, z = 352.885 }, level = 32, area_id = 32 },
	{ config_id = 241010, gadget_id = 70210101, pos = { x = -173.414, y = 90.879, z = 5051.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 },
	{ config_id = 241011, gadget_id = 70210101, pos = { x = -140.355, y = 73.083, z = 5017.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 },
	{ config_id = 241012, gadget_id = 70210101, pos = { x = -132.046, y = 62.911, z = 4942.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 },
	{ config_id = 241013, gadget_id = 70210101, pos = { x = -155.601, y = 77.025, z = 4963.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1241003, name = "ANY_MONSTER_DIE_241003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_241003", action = "action_EVENT_ANY_MONSTER_DIE_241003" }
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
		monsters = { 241001, 241004, 241008 },
		gadgets = { 241002, 241005, 241006, 241007, 241009, 241010, 241011, 241012, 241013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_241003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_241003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_241003(context, evt)
	-- 将configid为 241005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241005, GadgetState.Default) then
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