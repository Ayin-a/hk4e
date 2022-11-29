-- 基础信息
local base_info = {
	group_id = 199001200
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 200001, monster_id = 21020201, pos = { x = 181.543, y = 120.863, z = 135.019 }, rot = { x = 0.000, y = 244.035, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 402 },
	{ config_id = 200004, monster_id = 20011301, pos = { x = 178.852, y = 120.617, z = 136.508 }, rot = { x = 0.000, y = 225.783, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 402 },
	{ config_id = 200005, monster_id = 20011301, pos = { x = 180.253, y = 120.574, z = 131.495 }, rot = { x = 0.000, y = 249.316, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 402 },
	{ config_id = 200006, monster_id = 21010501, pos = { x = 180.835, y = 120.139, z = 126.927 }, rot = { x = 0.000, y = 270.429, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 402 },
	{ config_id = 200007, monster_id = 21010501, pos = { x = 178.042, y = 120.590, z = 141.014 }, rot = { x = 0.000, y = 232.148, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 200002, gadget_id = 70211012, pos = { x = 183.449, y = 121.056, z = 136.620 }, rot = { x = 0.000, y = 250.932, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 200008, gadget_id = 70300089, pos = { x = 179.944, y = 120.780, z = 142.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 200009, gadget_id = 70300089, pos = { x = 171.170, y = 120.000, z = 143.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1200003, name = "ANY_MONSTER_DIE_200003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_200003", action = "action_EVENT_ANY_MONSTER_DIE_200003" }
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
		monsters = { 200001, 200004, 200005, 200006, 200007 },
		gadgets = { 200002, 200008, 200009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_200003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_200003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_200003(context, evt)
	-- 将configid为 200002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 200002, GadgetState.Default) then
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