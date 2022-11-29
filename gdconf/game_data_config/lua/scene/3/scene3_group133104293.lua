-- 基础信息
local base_info = {
	group_id = 133104293
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 293001, monster_id = 21030101, pos = { x = 392.451, y = 202.025, z = 555.204 }, rot = { x = 10.746, y = 113.676, z = 353.191 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 293004, monster_id = 21010301, pos = { x = 398.603, y = 201.146, z = 554.396 }, rot = { x = 4.757, y = 177.904, z = 7.813 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 293005, monster_id = 21011001, pos = { x = 395.049, y = 201.327, z = 550.817 }, rot = { x = 8.568, y = 359.005, z = 346.773 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 293006, monster_id = 21011001, pos = { x = 391.275, y = 203.201, z = 561.700 }, rot = { x = 354.227, y = 148.410, z = 10.350 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 293002, gadget_id = 70211012, pos = { x = 395.925, y = 201.581, z = 555.132 }, rot = { x = 353.785, y = 0.291, z = 354.644 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1293003, name = "ANY_MONSTER_DIE_293003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_293003", action = "action_EVENT_ANY_MONSTER_DIE_293003" }
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
		-- description = suite_1,
		monsters = { 293001, 293004, 293005, 293006 },
		gadgets = { 293002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_293003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_293003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_293003(context, evt)
	-- 将configid为 293002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 293002, GadgetState.Default) then
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