CREATE FUNCTION F_SEC2MIN(i_secondi decimal(10,2)) 
	RETURNS decimal(8,2)
    DETERMINISTIC
    COMMENT 'converte secondi in minuti'
BEGIN

DECLARE d_minuti decimal(8,2);

set d_minuti = truncate(i_secondi / 60, 0) + round(((i_secondi - truncate(i_secondi / 60, 0) * 60) / 100), 2);

RETURN d_minuti;

END
