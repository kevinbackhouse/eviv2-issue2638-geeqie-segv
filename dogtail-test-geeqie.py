from dogtail.config import config

import dogtail.tc
from dogtail.procedural import *
from dogtail.utils import screenshot
from dogtail.predicate import GenericPredicate

run('geeqie 2019-12-23-11.21.44-DSC_3328.NEF')

geeqie = tree.root.application('geeqie')

viewmenu = geeqie.menu('View')
viewmenu.click()
viewmenu.menuItem('Exif window').click()

filemenu = geeqie.menu('File')
filemenu.click()
filemenu.menuItem('Quit').click()
