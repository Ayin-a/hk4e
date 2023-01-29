-- 基础信息
local base_info = {
	group_id = 133313080
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80001, monster_id = 23050101, pos = { x = -657.495, y = 112.475, z = 5652.996 }, rot = { x = 0.000, y = 16.259, z = 0.000 }, level = 32, drop_tag = "藏镜侍女", disableWander = true, area_id = 32 },
	{ config_id = 80005, monster_id = 23010601, pos = { x = -665.545, y = 100.816, z = 5669.506 }, rot = { x = 0.000, y = 86.880, z = 0.000 }, level = 32, drop_tag = "先遣队", pose_id = 9012, area_id = 32 },
	{ config_id = 80006, monster_id = 23010301, pos = { x = -653.768, y = 101.995, z = 5678.981 }, rot = { x = 0.000, y = 294.853, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 80002, gadget_id = 70211012, pos = { x = -661.108, y = 112.342, z = 5654.511 }, rot = { x = 0.025, y = 199.279, z = 359.832 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 80004, gadget_id = 70210101, pos = { x = -645.386, y = 117.629, z = 5661.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 32 },
	{ config_id = 80007, gadget_id = 70210101, pos = { x = -643.620, y = 116.865, z = 5654.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1080003, name = "ANY_MONSTER_DIE_80003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80003", action = "action_EVENT_ANY_MONSTER_DIE_80003" }
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
		monsters = { 80001, 80005, 80006 },
		gadgets = { 80002, 80004, 80007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_80003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_80003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_80003(context, evt)
	-- 将configid为 80002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 80002, GadgetState.Default) then
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