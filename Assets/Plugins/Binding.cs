using UnityEngine;
using System.Runtime.InteropServices;

public class Binding {
    [DllImport("__Internal")]
    private static extern string CurrentLanguage_ ();
 
    public static string CurrentLanguage () {
        if (Application.platform != RuntimePlatform.OSXEditor) {
            return CurrentLanguage_ ();
        } else {
        	return "";
        }
    }
}
