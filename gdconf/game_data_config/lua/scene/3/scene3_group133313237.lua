-- 基础信息
local base_info = {
	group_id = 133313237
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 237001, monster_id = 22010101, pos = { x = -276.501, y = 132.756, z = 5628.475 }, rot = { x = 0.000, y = 54.930, z = 0.000 }, level = 32, drop_tag = "深渊法师", disableWander = true, area_id = 32 },
	{ config_id = 237005, monster_id = 22010101, pos = { x = -292.226, y = 128.212, z = 5643.845 }, rot = { x = 0.000, y = 230.822, z = 0.000 }, level = 32, drop_tag = "深渊法师", area_id = 32 },
	{ config_id = 237006, monster_id = 22010101, pos = { x = -274.799, y = 132.868, z = 5639.917 }, rot = { x = 0.000, y = 235.358, z = 0.000 }, level = 32, drop_tag = "深渊法师", area_id = 32 },
	{ config_id = 237008, monster_id = 21030101, pos = { x = -269.449, y = 133.338, z = 5633.139 }, rot = { x = 0.000, y = 243.688, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 237002, gadget_id = 70211012, pos = { x = -274.045, y = 132.827, z = 5630.187 }, rot = { x = 0.000, y = 237.205, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 237004, gadget_id = 70300107, pos = { x = -271.896, y = 132.916, z = 5627.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 237007, gadget_id = 70220010, pos = { x = -271.885, y = 133.323, z = 5631.564 }, rot = { x = 0.000, y = 241.701, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 237009, gadget_id = 70220103, pos = { x = -268.675, y = 141.763, z = 5633.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 237010, gadget_id = 70300107, pos = { x = -279.420, y = 128.831, z = 5653.858 }, rot = { x = 0.000, y = 128.305, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 32 },
	{ config_id = 237011, gadget_id = 70220103, pos = { x = -255.263, y = 172.375, z = 5626.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1237003, name = "ANY_MONSTER_DIE_237003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_237003", action = "action_EVENT_ANY_MONSTER_DIE_237003" }
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
		monsters = { 237001, 237005, 237006, 237008 },
		gadgets = { 237002, 237004, 237007, 237009, 237010, 237011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_237003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_237003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_237003(context, evt)
	-- 将configid为 237002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237002, GadgetState.Default) then
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