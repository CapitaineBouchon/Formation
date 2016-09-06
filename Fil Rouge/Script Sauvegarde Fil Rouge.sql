EXEC sp_addumpdevice 'disk','save_fil_rouge_vide','C:\Backup\filrougevide.bak'
EXEC sp_addumpdevice 'disk','save_fil_rouge_test','C:\Backup\filrougetest.bak'
EXEC sp_addumpdevice 'disk','save_fil_rouge_frag','C:\Backup\filrougefrag.bak'

BACKUP DATABASE Fil_rouge to save_fil_rouge_


USE MASTER
GO
ALTER DATABASE Fil_rouge SET restricted_user WITH ROLLBACK IMMEDIATE
GO
RESTORE DATABASE Fil_rouge FROM save_fil_rouge_ WITH REPLACE
GO
ALTER DATABASE Fil_rouge SET multi_user
