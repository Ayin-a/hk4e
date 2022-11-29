-- 基础信息
local base_info = {
	group_id = 133310475
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 475001, monster_id = 25310201, pos = { x = -2844.927, y = 25.547, z = 4487.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 28 },
	{ config_id = 475002, monster_id = 25210301, pos = { x = -2835.342, y = 21.688, z = 4498.676 }, rot = { x = 0.000, y = 107.188, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9007, area_id = 28 },
	{ config_id = 475003, monster_id = 25210301, pos = { x = -2835.355, y = 21.639, z = 4501.315 }, rot = { x = 0.000, y = 95.156, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9007, area_id = 28 },
	{ config_id = 475004, monster_id = 25210201, pos = { x = -2834.964, y = 19.532, z = 4513.262 }, rot = { x = 0.000, y = 353.461, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9006, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 475005, gadget_id = 70211002, pos = { x = -2848.793, y = 25.567, z = 4501.004 }, rot = { x = 0.000, y = 86.941, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 475007, gadget_id = 70210101, pos = { x = -2850.089, y = 26.012, z = 4508.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 28 },
	{ config_id = 475008, gadget_id = 70210101, pos = { x = -2843.236, y = 25.619, z = 4484.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1475006, name = "ANY_MONSTER_DIE_475006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_475006", action = "action_EVENT_ANY_MONSTER_DIE_475006" }
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
		monsters = { 475001, 475002, 475003, 475004 },
		gadgets = { 475005, 475007, 475008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_475006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_475006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_475006(context, evt)
	-- 将configid为 475005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475005, GadgetState.Default) then
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