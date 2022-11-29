-- 基础信息
local base_info = {
	group_id = 133304366
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 366003, monster_id = 26090201, pos = { x = -1813.211, y = 255.380, z = 2734.320 }, rot = { x = 0.000, y = 33.162, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 366004, monster_id = 26090201, pos = { x = -1814.189, y = 254.810, z = 2742.965 }, rot = { x = 0.000, y = 80.670, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 366005, monster_id = 26120101, pos = { x = -1816.585, y = 256.994, z = 2738.911 }, rot = { x = 0.000, y = 87.872, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 366001, gadget_id = 70211002, pos = { x = -1811.312, y = 255.377, z = 2738.709 }, rot = { x = 357.641, y = 0.013, z = 358.350 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 366002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1812.827, y = 253.589, z = 2738.123 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1366002, name = "ENTER_REGION_366002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_366002", action = "action_EVENT_ENTER_REGION_366002" },
	{ config_id = 1366006, name = "ANY_MONSTER_DIE_366006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_366006", action = "action_EVENT_ANY_MONSTER_DIE_366006" }
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
		monsters = { },
		gadgets = { 366001 },
		regions = { 366002 },
		triggers = { "ENTER_REGION_366002", "ANY_MONSTER_DIE_366006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 366003, 366004, 366005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_366006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_366002(context, evt)
	if evt.param1 ~= 366002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_366002(context, evt)
	-- 将configid为 366001 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 366001, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304366, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_366006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_366006(context, evt)
	-- 将configid为 366001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 366001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end