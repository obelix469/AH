import sublime, sublime_plugin

class AHK_Autocomplete(sublime_plugin.EventListener):
    def on_query_completions(self, view, prefix, locations):
    	return [["m(","RegExMatch()"]]
