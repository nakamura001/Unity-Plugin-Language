private var lang: String;

function Start () {
	lang = Binding.CurrentLanguage();
}

function OnGUI () {
	GUI.Label(Rect(20, 20, 100, 100), lang);
}
