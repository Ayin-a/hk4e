-- 基础信息
local base_info = {
	group_id = 144002028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 21010701, pos = { x = 614.278, y = 221.167, z = -467.608 }, rot = { x = 0.000, y = 243.954, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 101 },
	{ config_id = 28005, monster_id = 21011001, pos = { x = 624.337, y = 223.247, z = -461.098 }, rot = { x = 0.000, y = 283.186, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 101 },
	{ config_id = 28006, monster_id = 21010701, pos = { x = 616.000, y = 218.826, z = -462.797 }, rot = { x = 16.856, y = 317.335, z = 345.066 }, level = 20, drop_tag = "丘丘人", pose_id = 9013, area_id = 101 },
	{ config_id = 28007, monster_id = 21010501, pos = { x = 615.225, y = 230.003, z = -476.392 }, rot = { x = 0.000, y = 293.324, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", area_id = 101 },
	{ config_id = 28012, monster_id = 21010201, pos = { x = 618.788, y = 216.524, z = -453.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 101 },
	{ config_id = 28013, monster_id = 21020201, pos = { x = 609.432, y = 219.614, z = -451.367 }, rot = { x = 5.414, y = 201.456, z = 353.368 }, level = 20, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 28002, gadget_id = 70211012, pos = { x = 623.850, y = 223.084, z = -465.017 }, rot = { x = 0.000, y = 259.286, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 28004, gadget_id = 70300090, pos = { x = 615.422, y = 224.575, z = -476.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 101 },
	{ config_id = 28008, gadget_id = 70300085, pos = { x = 619.578, y = 216.270, z = -449.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1028003, name = "ANY_MONSTER_DIE_28003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28003", action = "action_EVENT_ANY_MONSTER_DIE_28003" }
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
		monsters = { 28001, 28005, 28006, 28007, 28012, 28013 },
		gadgets = { 28002, 28004, 28008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28003(context, evt)
	-- 将configid为 28002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28002, GadgetState.Default) then
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