-- 基础信息
local base_info = {
	group_id = 155005094
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 94001, monster_id = 21010501, pos = { x = 541.614, y = 201.334, z = 475.498 }, rot = { x = 0.000, y = 250.038, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9010, area_id = 200 },
	{ config_id = 94004, monster_id = 21010501, pos = { x = 539.226, y = 201.266, z = 474.337 }, rot = { x = 0.000, y = 62.481, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9010, area_id = 200 },
	{ config_id = 94007, monster_id = 21030101, pos = { x = 552.497, y = 202.699, z = 478.021 }, rot = { x = 0.000, y = 72.178, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 200 },
	{ config_id = 94010, monster_id = 21030601, pos = { x = 555.626, y = 202.649, z = 476.622 }, rot = { x = 0.000, y = 332.925, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 94002, gadget_id = 70211002, pos = { x = 554.713, y = 203.641, z = 478.696 }, rot = { x = 0.000, y = 172.045, z = 0.000 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 94005, gadget_id = 70310001, pos = { x = 549.959, y = 202.737, z = 477.565 }, rot = { x = 0.145, y = 359.878, z = 0.090 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 94008, gadget_id = 70220013, pos = { x = 551.108, y = 202.684, z = 471.992 }, rot = { x = 0.000, y = 302.907, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 94009, gadget_id = 70220026, pos = { x = 552.676, y = 202.664, z = 471.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1094003, name = "ANY_MONSTER_DIE_94003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_94003", action = "action_EVENT_ANY_MONSTER_DIE_94003" }
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
		monsters = { 94001, 94004, 94007, 94010 },
		gadgets = { 94002, 94005, 94008, 94009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_94003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_94003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_94003(context, evt)
	-- 将configid为 94002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94002, GadgetState.Default) then
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