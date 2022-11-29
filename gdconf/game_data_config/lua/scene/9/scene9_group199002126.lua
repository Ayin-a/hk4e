-- 基础信息
local base_info = {
	group_id = 199002126
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 126001, monster_id = 22010101, pos = { x = 422.711, y = 130.447, z = -426.966 }, rot = { x = 0.000, y = 278.006, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, area_id = 401 },
	{ config_id = 126004, monster_id = 21010301, pos = { x = 428.310, y = 130.667, z = -423.744 }, rot = { x = 0.000, y = 253.862, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 401 },
	{ config_id = 126005, monster_id = 21010101, pos = { x = 419.664, y = 130.221, z = -427.513 }, rot = { x = 0.000, y = 332.132, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 401 },
	{ config_id = 126006, monster_id = 21020101, pos = { x = 429.543, y = 131.219, z = -425.177 }, rot = { x = 0.000, y = 275.573, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 401 },
	{ config_id = 126007, monster_id = 21010401, pos = { x = 421.286, y = 129.512, z = -424.771 }, rot = { x = 0.000, y = 223.609, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 401 },
	{ config_id = 126008, monster_id = 21010401, pos = { x = 428.852, y = 131.863, z = -428.957 }, rot = { x = 0.000, y = 285.339, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 126002, gadget_id = 70211012, pos = { x = 419.568, y = 129.675, z = -425.932 }, rot = { x = 9.644, y = 358.714, z = 354.770 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126003, name = "ANY_MONSTER_DIE_126003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126003", action = "action_EVENT_ANY_MONSTER_DIE_126003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 126009, gadget_id = 70310332, pos = { x = 407.070, y = 134.023, z = -450.377 }, rot = { x = 0.000, y = 24.552, z = 0.000 }, level = 20, area_id = 401 }
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
		monsters = { 126001, 126004, 126005, 126006, 126007, 126008 },
		gadgets = { 126002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_126003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126003(context, evt)
	-- 将configid为 126002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126002, GadgetState.Default) then
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