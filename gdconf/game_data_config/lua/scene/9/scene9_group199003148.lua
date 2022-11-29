-- 基础信息
local base_info = {
	group_id = 199003148
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 148001, monster_id = 21020201, pos = { x = -703.439, y = 128.215, z = -118.832 }, rot = { x = 0.000, y = 216.260, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 403 },
	{ config_id = 148004, monster_id = 21020101, pos = { x = -713.233, y = 126.516, z = -125.632 }, rot = { x = 0.000, y = 171.503, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 403 },
	{ config_id = 148005, monster_id = 21011001, pos = { x = -711.044, y = 129.214, z = -130.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 403 },
	{ config_id = 148006, monster_id = 21010501, pos = { x = -709.837, y = 128.652, z = -128.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 403 },
	{ config_id = 148007, monster_id = 21010601, pos = { x = -714.007, y = 127.724, z = -129.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 403 },
	{ config_id = 148008, monster_id = 21010901, pos = { x = -712.241, y = 127.992, z = -128.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 403 },
	{ config_id = 148009, monster_id = 21020201, pos = { x = -701.054, y = 129.970, z = -125.107 }, rot = { x = 0.000, y = 10.703, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 148002, gadget_id = 70211012, pos = { x = -704.122, y = 127.103, z = -113.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1148003, name = "ANY_MONSTER_DIE_148003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_148003", action = "action_EVENT_ANY_MONSTER_DIE_148003" }
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
		monsters = { 148001, 148004, 148005, 148006, 148007, 148008, 148009 },
		gadgets = { 148002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_148003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_148003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_148003(context, evt)
	-- 将configid为 148002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148002, GadgetState.Default) then
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