CREATE PROCEDURE P_SCHTRS
(
    IN I_TABELLA 					VARCHAR(8),
    IN I_PROGRESSIVO 				INT
)
BEGIN 

  if (i_tabella = 'bvt') then
    delete from bvs where progressivo = i_progressivo;
    delete from bvp where progressivo = i_progressivo;
  elseif (i_tabella = 'cvt') then
    delete from cvs where progressivo = i_progressivo;
    delete from cvp where progressivo = i_progressivo;
  elseif (i_tabella = 'dvt') then
    delete from dvs where progressivo = i_progressivo;
    delete from dvp where progressivo = i_progressivo;
  elseif (i_tabella = 'fvt') then
    delete from fvs where progressivo = i_progressivo;
    delete from fvp where progressivo = i_progressivo;
  elseif (i_tabella = 'ovt') then
    delete from ovs where progressivo = i_progressivo;
    delete from ovp where progressivo = i_progressivo;
  elseif (i_tabella = 'pvt') then
    delete from pvs where progressivo = i_progressivo;
    delete from pvp where progressivo = i_progressivo;
  elseif (i_tabella = 'rat') then
    delete from rap where progressivo = i_progressivo;
  elseif (i_tabella = 'oat') then
    delete from oap where progressivo = i_progressivo;
  elseif (i_tabella = 'dat') then
    delete from dap where progressivo = i_progressivo;
  elseif (i_tabella = 'fat') then
    delete from fap where progressivo = i_progressivo;
  end if;
  
END
