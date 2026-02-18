CREATE PROCEDURE P_CAMPO_VUOTO(IN nome_tabella VARCHAR(20), IN nome_campo VARCHAR(50))
BEGIN
  declare testo varchar(200);

  set testo = concat('valore del campo [', nome_campo, '] della tabella [', nome_tabella, '] non consentito');
  signal sqlstate '80000' set message_text = testo;
END


