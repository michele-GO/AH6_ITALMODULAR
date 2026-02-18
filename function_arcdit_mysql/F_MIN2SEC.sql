CREATE FUNCTION F_MIN2SEC(i_minuti decimal(8,2)) 
	RETURNS decimal(10,2)
    DETERMINISTIC
    COMMENT 'converte minuti in secondi'
BEGIN

DECLARE d_secondi decimal(10,2);

set d_secondi = truncate(i_minuti, 0) * 60 + (i_minuti - truncate(i_minuti, 0)) * 100;

RETURN d_secondi;

END
