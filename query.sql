select A.DataHora , A.Valor , B.CodigoDispositivo , B.Eixo_X , B.Eixo_y , B.Orientacao
case
    when B.Orientacao = '+X'
      then x = B.Eixo_X - (A.Valor * 0.5) and y = B.Eixo_y END
    when B.Orientacao = '+Y'
      then y = B.Eixo_y - (A.Valor * 0.5) and x = B.Eixo_X END 
    when B.Orientacao = '-X'
      then x = B.Eixo_X + (A.Valor * 0.5) and y = B.Eixo_y END
    when B.Orientacao = '-Y'
      then y = B.Eixo_y + (A.Valor * 0.5) and x = B.Eixo_X END 

 from Medicao A, Dispositivo B where A.IdDispositivo = B.IdDispositivo like A.DataHora =\'"+dataHora+"\';
