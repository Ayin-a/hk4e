-- 基础信息
local base_info = {
	group_id = 155005152
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 21010301, pos = { x = 606.694, y = 252.101, z = 570.446 }, rot = { x = 0.000, y = 272.368, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 200 },
	{ config_id = 152005, monster_id = 22010301, pos = { x = 610.845, y = 253.576, z = 573.347 }, rot = { x = 0.000, y = 193.235, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 200 },
	{ config_id = 152013, monster_id = 21010701, pos = { x = 608.203, y = 252.269, z = 561.853 }, rot = { x = 0.000, y = 239.271, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 152015, monster_id = 21011001, pos = { x = 607.968, y = 254.838, z = 550.174 }, rot = { x = 5.848, y = 332.561, z = 12.450 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 200 },
	{ config_id = 152017, monster_id = 21010201, pos = { x = 602.683, y = 250.979, z = 575.651 }, rot = { x = 359.446, y = 200.879, z = 358.700 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 152002, gadget_id = 70211002, pos = { x = 602.766, y = 250.254, z = 565.993 }, rot = { x = 354.407, y = 11.659, z = 8.416 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 152006, gadget_id = 70350007, pos = { x = 599.977, y = 249.659, z = 567.365 }, rot = { x = 347.283, y = 35.165, z = 13.028 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 152012, gadget_id = 70300086, pos = { x = 598.726, y = 248.409, z = 569.713 }, rot = { x = 325.233, y = 24.526, z = 35.944 }, level = 36, area_id = 200 },
	{ config_id = 152014, gadget_id = 70350007, pos = { x = 596.676, y = 248.577, z = 572.562 }, rot = { x = 338.110, y = 65.437, z = 5.446 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1152003, name = "ANY_MONSTER_DIE_152003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_152003", action = "action_EVENT_ANY_MONSTER_DIE_152003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 152016, monster_id = 21010201, pos = { x = 622.259, y = 256.306, z = 567.608 }, rot = { x = 0.000, y = 118.962, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9016, area_id = 200 }
	},
	gadgets = {
		{ config_id = 152004, gadget_id = 70300090, pos = { x = 606.511, y = 253.762, z = 604.591 }, rot = { x = 0.000, y = 3.966, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 152018, gadget_id = 70350007, pos = { x = 602.601, y = 250.983, z = 576.507 }, rot = { x = 0.000, y = 4.456, z = 0.000 }, level = 36, area_id = 200 }
	}
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
		monsters = { 152001, 152005, 152013, 152015, 152017 },
		gadgets = { 152002, 152006, 152012, 152014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_152003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_152003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_152003(context, evt)
	-- 将configid为 152002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 152002, GadgetState.Default) then
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