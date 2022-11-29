-- 基础信息
local base_info = {
	group_id = 133102696
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 696007, monster_id = 22010101, pos = { x = 1109.451, y = 213.538, z = 410.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "深渊法师", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 696005, gadget_id = 70211021, pos = { x = 1109.581, y = 213.757, z = 410.390 }, rot = { x = 11.182, y = 0.945, z = 9.626 }, level = 16, drop_tag = "战斗高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 696001, shape = RegionShape.SPHERE, radius = 7, pos = { x = 1109.435, y = 213.936, z = 410.598 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1696001, name = "ENTER_REGION_696001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_696001", action = "action_EVENT_ENTER_REGION_696001" },
	{ config_id = 1696008, name = "ANY_MONSTER_DIE_696008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_696008", action = "action_EVENT_ANY_MONSTER_DIE_696008" }
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
		gadgets = { },
		regions = { 696001 },
		triggers = { "ENTER_REGION_696001", "ANY_MONSTER_DIE_696008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_696001(context, evt)
	if evt.param1 ~= 696001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_696001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 696007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_696008(context, evt)
	--判断死亡怪物的configid是否为 696007
	if evt.param1 ~= 696007 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_696008(context, evt)
	-- 创建id为696005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 696005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end