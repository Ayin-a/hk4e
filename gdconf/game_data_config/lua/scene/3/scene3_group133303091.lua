-- 基础信息
local base_info = {
	group_id = 133303091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 23010301, pos = { x = -1205.790, y = 219.462, z = 3089.037 }, rot = { x = 0.000, y = 238.396, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 23 },
	{ config_id = 91004, monster_id = 23020101, pos = { x = -1216.525, y = 219.476, z = 3078.243 }, rot = { x = 0.000, y = 218.733, z = 0.000 }, level = 30, drop_tag = "债务处理人", disableWander = true, area_id = 23 },
	{ config_id = 91005, monster_id = 23010601, pos = { x = -1229.612, y = 218.166, z = 3112.073 }, rot = { x = 0.000, y = 161.455, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91002, gadget_id = 70211012, pos = { x = -1202.212, y = 219.462, z = 3090.987 }, rot = { x = 0.000, y = 236.514, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 91006, gadget_id = 70210101, pos = { x = -1248.040, y = 212.245, z = 3088.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 },
	{ config_id = 91007, gadget_id = 70210101, pos = { x = -1205.001, y = 220.247, z = 3076.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 },
	{ config_id = 91008, gadget_id = 70210101, pos = { x = -1225.606, y = 219.076, z = 3114.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1091003, name = "ANY_MONSTER_DIE_91003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91003", action = "action_EVENT_ANY_MONSTER_DIE_91003" }
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
		monsters = { 91001, 91004, 91005 },
		gadgets = { 91002, 91006, 91007, 91008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_91003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91003(context, evt)
	-- 将configid为 91002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.Default) then
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