#  Modelagem de Dados 

O sistema utiliza **SharePoint Lists** como repositório de dados. Abaixo está a estrutura da tabela principal `Vistorias_Veiculos`.

## Tabela: Vistorias_Veiculos

| Coluna | Tipo de Dado | Descrição |
| :--- | :--- | :--- |
| **Title** | Texto (Single Line) | Armazena a PLACA do veículo  |
| **Marca** | Texto | Marca/Modelo do veículo. |
| **Odometro** | Number | Quilometragem atual do veículo. |
| **NomeServidor** | Texto | Nome do Servidor. |
| **Matricula** | Number | Matrícula do Servidor. |
| **Cargo** | Texto | Cargo do Servidor. |
| **TipoVeiculo** | Choice (Escolha) | `SUV`, `Caminhonete`, `Hatch`. veiculo. |
| **NivelCombustivel** | Choice | `Reserva`, `1/2`, `1/4`, `3/4`, `1`.|
| **TemExtintor** | Boolean | Presença de item. |
| **TemTriangulo** | Boolean | Presença de item. |
| **TemMacaco** | Boolean | Presença de item. |
| **TemChavedeRoda** | Boolean | Presença de item. |
| **TemEstepe** | Boolean | Presença de item. |
| **TemCalotas** | Boolean | Presença de item. |
| **TemAntena** | Boolean | Presença de item. |
| **TemTapetes** | Boolean | Presença de item. |
| **TemRadioCD** | Boolean | Presença de item. |
| **TemManual** | Boolean | Presença de item. |
| **TemDocumento** | Boolean | Presença de item. |
| **TemCartaoAbastecimento** | Boolean | Presença de item. |
| **EstadoPneus** | Choice | `Bom`, `Regular`, `Ruim` .|
| **EstadoPintura** | Choice | `Bom`, `Regular`, `Ruim` .|
| **EstadoFarois** | Choice | `Bom`, `Regular`, `Ruim` .|
| **EstadoLanternas** | Choice | `Bom`, `Regular`, `Ruim`.|
| **EstadoEstofamento** | Choice | `Bom`, `Regular`, `Ruim`.|
| **AssinaturaCodigo** | Multi-line Text | Armazena a imagem da assinatura em formato Base64. |
| **Observacoes** | Multi-line Text | detalhes adicionais |
| **ImagemCarroCodigo** | Multi-line Text | Armazena o desenho técnico do carro (canvas) em Base64. |
| **StatusVistoria** | Choice | `Pendente`, `Concluído`. Controla o fluxo de aprovação. |