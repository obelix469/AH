import sublime, sublime_plugin

class EverythingIsPowerShell(sublime_plugin.EventListener):
   def on_new(self, view):
      view.set_syntax_file('Packages/AutoHotkey/AutoHotkey.tmLanguage')