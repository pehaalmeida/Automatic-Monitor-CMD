# Automatic-Monitor-CMD
Systems-In-CMD

Este projeto foi desenvolvido para a empresa em que trabalho, com o objetivo de monitorar dois sites que utilizamos constantemente. Ele monitora os sites continuamente e registra logs de rede de forma totalmente automática.

Aqui está uma breve descrição de como o sistema funciona:

Ao abrir o arquivo StartMonitor, o programa cria uma sequência de três pastas no total, sendo elas:

C:\MonitorRC
C:\MonitorRC\Config
C:\MonitorRC\logs

Após criar essas pastas, o programa move os arquivos AutoMonitor-Part1.bat e AutoMonitor-Part2.bat para a pasta "Config". Em seguida, faz uma cópia do arquivo StartMonitor.bat na pasta inicial do Windows, que geralmente é shell:startup. Com isso, o programa será executado automaticamente junto com o Windows.

Uma vez em funcionamento, o sistema registra os logs e exibe na tela a qualquer momento em que ocorra um erro.

<img align="left" src="https://github.com/pehaalmeida/Automatic-Monitor-CMD/blob/Info-Img/Erro.png)" width="350"/><br>

<img align="left" src="https://github.com/pehaalmeida/Automatic-Monitor-CMD/blob/main/Info-Img/Tela Inicial.png)" width="350"/><br>
