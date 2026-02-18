CREATE PROCEDURE P_PAS_PAT 
(
  IN  `i_progressivo`            int,
  IN  `i_importo_pagato`         numeric(18,2),
  IN  `i_importo_pagato_euro`    numeric(18,2)
)
BEGIN 
update pat 
set importo_pagato = importo_pagato + i_importo_pagato, 
importo_pagato_euro = importo_pagato_euro + i_importo_pagato_euro 
where progressivo = i_progressivo; 
END
