from datetime import datetime
import subprocess
import os
from i3situation.plugins._plugin import Plugin
import locale
locale.setlocale(locale.LC_ALL, 'de_DE')
__all__ = 'DateTimePlugin'

class DateTimePlugin(Plugin):
    def __init__(self, config):
        self.options = {'timeZone': 'GMT', 'longFormat': '%d-%m-%Y %H:%M:%S',
                'shortFormat': '%H:%M:%S', 'interval': 1, 'menuCommand': ''}
        super().__init__(config)

    def main(self):
        cur = datetime.now()
        longTime = cur.strftime(self.options['longFormat'])
        shortTime = cur.strftime(self.options['shortFormat'])
        return self.output(longTime, shortTime)

    def onClick(self, event):
        if self.options['menuCommand'] != '':
            self.displayDzen(event)
