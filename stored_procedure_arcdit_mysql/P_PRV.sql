CREATE PROCEDURE P_PRV()
BEGIN
  DECLARE prezzo_listino DECIMAL(18, 6) DEFAULT 0;
  DECLARE Z              DECIMAL(18, 6);
  DECLARE I              DECIMAL(18, 6);

  # SE LA P_TABELLA E PVR....
  IF p_tabella = 'pvr' THEN   
    SELECT lsv.prezzo
    FROM pvt JOIN lsv ON pvt.tlv_codice = lsv.tlv_codice
    WHERE pvt.progressivo = p_progressivo AND lsv.art_codice = p_art_codice
    INTO prezzo_listino;
  
  # SE LA P_TABELLA E OVR....
  ELSEIF p_tabella = 'ovr' THEN   
    SELECT lsv.prezzo
    FROM ovt JOIN lsv ON ovt.tlv_codice = lsv.tlv_codice
    WHERE ovt.progressivo = p_progressivo AND lsv.art_codice = p_art_codice
    INTO prezzo_listino;
  
    # SE LA P_TABELLA E DVR....
  ELSEIF p_tabella = 'dvr' THEN   
    SELECT lsv.prezzo
    FROM dvt JOIN lsv ON dvt.tlv_codice = lsv.tlv_codice
    WHERE dvt.progressivo = p_progressivo AND lsv.art_codice = p_art_codice
    INTO prezzo_listino;
  
  # SE LA P_TABELLA E FVR....
  ELSEIF p_tabella = 'fvr' THEN   
    SELECT lsv.prezzo
    FROM fvt JOIN lsv ON fvt.tlv_codice = lsv.tlv_codice
    WHERE fvt.progressivo = p_progressivo AND lsv.art_codice = p_art_codice
    INTO prezzo_listino;
  END IF;
  
  
    SET Z = prezzo_listino * p_quantita;
    SET I = p_importo;

    IF I < Z THEN
      SET @importo_provvigioni = 0;
    ELSEIF I = Z THEN
      SET @importo_provvigioni = (I * 7 / 100);
    ELSEIF I > Z THEN
      SET @importo_provvigioni = (Z * 7 / 100) + (I - Z);
    END IF;

END