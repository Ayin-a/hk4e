-- local extrTriggers = {
-- 	initialtrigger = {
-- 		--["General_Die"] = { config_id = 8000001, name = "General_Die", event= EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_whern_general_inbattle", trigger_count = 0 },
-- 	}
-- }


-- function HitByShadow( context )
-- 	ScriptLib.AddExhibitionReplaceableData(context, context.uid, "GeneralBattle_HitByShadow", 1)
-- 	return 0
-- end

-- function HitByDoubleAttack( context )
-- 	ScriptLib.AddExhibitionReplaceableData(context, context.uid, "GeneralBattle_HitByDoubleAttack", 1)
-- 	return 0
-- end

-- function ExecuteInTuant( context )
-- 	local UidList = ScriptLib.GetSceneUidList(context)

-- 	for i,v in ipairs(UidList) do
-- 		ScriptLib.AddExhibitionReplaceableData(context, v, "GeneralBattle_ExecuteInTaunt", 1)
-- 	end
-- 	return 0
-- end


-- function action_whern_general_inbattle( context, evt )

-- 	if evt.param1 ~= MonsterID then
-- 		return 0
-- 	end

-- 	local UidList = ScriptLib.GetSceneUidList(context)

-- 	for i,v in ipairs(UidList) do
-- 		ScriptLib.AddExhibitionReplaceableData(context, v, "GeneralBattle_HitByShadow", 0)
-- 		ScriptLib.AddExhibitionReplaceableData(context, v, "GeneralBattle_HitByDoubleAttack", 0)
-- 	end

-- 	return 0
-- end

-- function LF_Initialize_Group(triggers, suites)
-- 	for k,v in pairs(extrTriggers.initialtrigger) do
-- 		table.insert(triggers, v)
-- 		table.insert(suites[init_config.suite].triggers, v.name)
-- 	end
-- 	return 0
-- end

--LF_Initialize_Group(triggers, suites)