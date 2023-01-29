-- 基础信息
local base_info = {
	group_id = 133314113
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 113001, monster_id = 28060501, pos = { x = -813.837, y = 137.713, z = 4278.420 }, rot = { x = 0.000, y = 187.053, z = 0.000 }, level = 32, drop_tag = "走兽", ban_excel_drop = true, disableWander = true, pose_id = 2, area_id = 32 },
	{ config_id = 113004, monster_id = 23010301, pos = { x = -815.734, y = 143.005, z = 4260.653 }, rot = { x = 0.000, y = 314.601, z = 0.000 }, level = 32, drop_tag = "先遣队", pose_id = 9011, area_id = 32 },
	{ config_id = 113005, monster_id = 23010601, pos = { x = -819.925, y = 142.945, z = 4262.956 }, rot = { x = 0.000, y = 90.718, z = 0.000 }, level = 32, drop_tag = "先遣队", pose_id = 9011, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 113002, gadget_id = 70211002, pos = { x = -819.423, y = 142.990, z = 4260.773 }, rot = { x = 0.000, y = 30.790, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 113006, gadget_id = 70210101, pos = { x = -821.341, y = 143.054, z = 4261.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 },
	{ config_id = 113007, gadget_id = 70210101, pos = { x = -810.456, y = 139.387, z = 4263.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1113003, name = "ANY_MONSTER_DIE_113003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_113003", action = "action_EVENT_ANY_MONSTER_DIE_113003" }
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
		monsters = { 113001, 113004, 113005 },
		gadgets = { 113002, 113006, 113007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_113003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_113003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_113003(context, evt)
	-- 将configid为 113002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113002, GadgetState.Default) then
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