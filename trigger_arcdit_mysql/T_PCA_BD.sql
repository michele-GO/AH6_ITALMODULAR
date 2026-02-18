CREATE TRIGGER T_PCA_BD
  BEFORE DELETE
  ON `pca`
  FOR EACH ROW
BEGIN 

delete from pcasc where id_pca = old.id;

END
