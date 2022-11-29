--[[======================================
||	filename:	V2_8ArenaChallenge_Control
||	owner: 		luyao.huang
||	description:	2.8幻影心流复刻活动-主控group
||	LogName:	V2_8ArenaChallenge_Control
||	Protection:	
=======================================]]--




local Tri = {
    
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    --主控group记一下当前激活的玩法group，方便两个group之间通讯
    table.insert(variables,{config_id = 10000000, name = "active_group", value = 0})

end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

--[[-----------------------------------------------------------------
||                                                                 ||
||                    server lua call                              ||
||                                                                 ||
-----------------------------------------------------------------]]--

--主控group的SLC，实际上要负责转发给玩法group的SLC
function SLC_State_Condition_Complete(context)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge_Control]SLC_State_Condition_Complete: 转阶段条件完成，向玩法group转发")
    	
    local active_group = ScriptLib.GetGroupVariableValue(context,"active_group")
    if active_group ~= 0 then
        ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge_Control]SLC_State_Condition_Complete: 当前激活的玩法group为"..active_group)
        ScriptLib.ExecuteGroupLua(context, active_group, "LF_State_Condition_Complete", {})
    end
    return 0
end

---------------------------------------------------------------------------
Initialize()