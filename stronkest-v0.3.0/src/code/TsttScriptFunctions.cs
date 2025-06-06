using DungeonMans;

namespace tstt_stronkest
{
    /** Dmans will look into the ScriptFunctions class within the namespace. The namespace must match our modname. */
    public partial class ScriptFunctions
    {

      public static bool spitemtest(dmItem targetItem, dmActor invoker, dmItem invokingItem)
      {
          dmUtilities.AddStringToLog("^running!^7");
              // if( invokingItem == null )
              // {
              //     dmAudio.PlayFX("ui_failure");
              //     dmUtilities.AddStringToLog("^1Killian is lying to you.^7");
              //     return false;
              // }
              
        // dmUtilities.AddStringToLog("This item is a " + invokingItem.GetName());
            return true;
      }
    }
}