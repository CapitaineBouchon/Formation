exec sp_addumpdevice 'disk','savPap','C:\Backup\Papyrus.bak'

BACKUP DATABASE Papyrus TO savPap


ALTER DATABASE Papyrus SET restricted_user WITH ROLLBACK IMMEDIATE
RESTORE DATABASE Papyrus FROM savPap WITH REPLACE
ALTER DATABASE Papyrus SET multi_user