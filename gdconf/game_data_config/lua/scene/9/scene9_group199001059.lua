-- 基础信息
local base_info = {
	group_id = 199001059
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 59001, monster_id = 21010201, pos = { x = 303.926, y = 122.413, z = 165.197 }, rot = { x = 0.000, y = 9.702, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 402 },
	{ config_id = 59004, monster_id = 21030201, pos = { x = 303.250, y = 122.564, z = 160.476 }, rot = { x = 0.000, y = 93.157, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 402 },
	{ config_id = 59006, monster_id = 21010201, pos = { x = 300.524, y = 122.406, z = 167.651 }, rot = { x = 0.000, y = 87.328, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 402 },
	{ config_id = 59007, monster_id = 20011001, pos = { x = 295.369, y = 121.746, z = 164.496 }, rot = { x = 0.000, y = 208.188, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 402 },
	{ config_id = 59009, monster_id = 21010101, pos = { x = 303.094, y = 122.451, z = 170.175 }, rot = { x = 0.000, y = 167.303, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 59002, gadget_id = 70211012, pos = { x = 306.933, y = 123.040, z = 173.816 }, rot = { x = 2.048, y = 216.364, z = 358.497 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 59005, gadget_id = 70300085, pos = { x = 307.080, y = 122.577, z = 173.908 }, rot = { x = 0.000, y = 343.168, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 59008, gadget_id = 70300085, pos = { x = 295.583, y = 121.319, z = 164.935 }, rot = { x = 356.795, y = 319.304, z = 7.599 }, level = 20, area_id = 402 },
	{ config_id = 59010, gadget_id = 70300085, pos = { x = 303.577, y = 122.320, z = 160.013 }, rot = { x = 3.612, y = 343.460, z = 13.369 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059003, name = "ANY_MONSTER_DIE_59003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_59003", action = "action_EVENT_ANY_MONSTER_DIE_59003" }
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
		monsters = { 59001, 59004, 59006, 59007, 59009 },
		gadgets = { 59002, 59005, 59008, 59010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_59003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_59003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_59003(context, evt)
	-- 将configid为 59002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59002, GadgetState.Default) then
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