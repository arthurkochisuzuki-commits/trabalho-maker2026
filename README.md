# trabalho-maker-1G

## Conexão do sensor HM-06

- Inicie o site pelo servidor local com `node server.js`; não abra `index.html` diretamente. O endereço local usado pelo servidor é `http://localhost:8080`.
- No Chrome ou Edge, clique em **Conectar sensor BLE** e escolha o HM-06 no seletor Bluetooth. A conexão usa BLE UART padrão: serviço `FFE0` e característica `FFE1`.
- O firmware do sensor deve enviar o ângulo em texto numérico, de `0` a `180` graus (por exemplo, `45.2`). O site usa essa leitura para mostrar o ângulo e contar ciclos que atingem a faixa do exercício selecionado.
- A leitura de um único ângulo não mede alinhamento, postura ou compensações; esses itens não são incluídos na avaliação do sensor.
- Web Bluetooth requer um navegador e sistema com Bluetooth BLE compatíveis. O Safari no iPhone não oferece Web Bluetooth para páginas web; publicar o site em HTTPS não remove essa limitação. Para receber o HM-06 no iPhone, é necessário um aplicativo iOS que encaminhe os dados ao site ou uma solução nativa/gateway.