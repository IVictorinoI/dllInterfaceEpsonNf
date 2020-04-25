library InterfaceEpsonNF;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes;

{$R *.res}

function ConfiguraTaxaSerial (dwTaxa:Integer):Integer; StdCall; export;
begin
end;
Function IniciaPorta (pszPorta:Pchar):Integer; StdCall; export;
begin
end;
function FechaPorta ():Integer; StdCall; export;
begin
end;
function ImprimeTexto(pszTexto:Pchar):Integer; StdCall; export;
begin
end;
function ImprimeTextoTag(pszTexto:Pchar):Integer; StdCall; export;
begin
end;
function FormataTX(psxTexto:PChar; dwTipoLetra:Integer; dwItalico:Integer; dwSublinhado:Integer; dwExpandido:Integer; dwEnfatizado:Integer):Integer; StdCall; export;
begin
end;
function AcionaGuilhotina (dwTipoCorte:Integer):Integer; StdCall; export;
begin
end;
function ComandoTX( pszComando:PChar; dwTamanho:Integer):Integer;StdCall; export;
begin
end;
function Le_Status():Integer;StdCall; export;
begin
end;
function Le_Status_Gaveta ():Integer; StdCall; export;
begin
end;
function ConfiguraCodigoBarras (dwAltura:Integer; dwLargura:Integer; dwHRI:Integer; dwFonte:Integer; dwMargem:Integer):Integer;StdCall; export;
begin
end;
function ImprimeCodigoBarrasCODABAR(pszCodigo:PChar):Integer;StdCall; export;
begin
end;
function ImprimeCodigoBarrasCODE128 (pszCodigo:PChar):Integer; StdCall; export;
begin
end;
function ImprimeCodigoBarrasCODE39( pszCodigo:PChar ):Integer; StdCall; export;
begin
end;
function ImprimeCodigoBarrasCODE93( pszCodigo:PChar ):Integer; StdCall; export;
begin
end;
function ImprimeCodigoBarrasEAN13( pszCodigo:PChar ):Integer; StdCall; export;
begin
end;
function ImprimeCodigoBarrasEAN8( pszCodigo:PChar ):Integer; StdCall; export;
begin
end;
function ImprimeCodigoBarrasITF( pszCodigo:PChar ):Integer; StdCall; export;
begin
end;
function ImprimeCodigoBarrasUPCA( pszCodigo:PChar ):Integer; StdCall; export;
begin
end;
function ImprimeCodigoBarrasUPCE( pszCodigo:PChar ):Integer; StdCall; export;
begin
end;
function ImprimeCodigoBarrasPDF417( dwCorrecao:Integer; dwAltura:Integer; dwLargura:Integer; dwColunas:Integer; pszCodigo:PChar ):Integer; StdCall; export;
begin
end;
function ImprimeCodigoQRCODE(dwRestauracao:Integer; dwModulo:Integer; dwTipo:Integer; dwVersao:Integer; dwModo:Integer; pszCodigo:PChar ):Integer; StdCall; export;
begin
end;
function GerarQRCodeArquivo(pszFileName:PChar; pszDados:PChar ):Integer; StdCall; export;
begin
end;
function ImprimeBmpEspecial(pszFileName:PChar; dwX:Integer; dwY:Integer; dwAngulo:Integer):Integer; StdCall; export;
begin
end;
function Habilita_Log(dwEstado:Integer; pszCaminho:PChar):Integer;StdCall; export;
begin
end;
function ImprimeCheque(szIndice:PChar; szValor:PChar; szData:PChar; szPara:PChar; szCidade:PChar; szAdicional:PChar):Integer;StdCall; export;
begin
end;
function ImprimeAutenticacao(pszPosX:PChar; pszPosY:PChar; pszLinhaTexto:PChar):Integer;StdCall; export;
begin
end;
function LeMICR(pszCodigo:PChar):Integer;StdCall; export;
begin
end;
function LeModelo(pszModelo:PChar):Integer;StdCall; export;
begin
end;
function Le_Status_Slip(pszFlags:PChar):Integer;StdCall; export;
begin
end;
function AcionaGaveta():Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Imprimir(szXML:PChar; szTipo:PChar):Integer; StdCall; export;
begin
end;
function EPSON_SAT_Imprimir(szXML:PChar; szTipo:PChar):Integer; StdCall; export;
begin
end;
function EPSON_SAT_Imprimir_Cancelamento(szXML:PChar; szQRCodeVenda:PChar; szTeste:PChar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Abrir (szCPF:PChar; szNome:PChar; szEndereco:PChar; szNumero:PChar; szBairro:PChar; szCodMunicipio:PChar; szMunicipio:PChar; szUF:PChar; szCep:PChar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_AbrirEX (szCPF:PChar; szNome:PChar; szEndereco:PChar; szNumero:PChar; szBairro:PChar; szCodMunicipio:PChar; szMunicipio:PChar; szUF:PChar; szCep:PChar; szNum:PChar; szSerie:PChar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Vender_Item(szCodigo:PChar; szDescricao:PChar; szQuantidade:PChar; szCasasDecimaisQuantidade:PChar; szUnidadeDeMedida:PChar; szPrecoUnidade:PChar; szCasasDecimaisPreco:PChar; szAliquotas:PChar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Vender_ItemEX(szCodigo:PChar; szDescricao:PChar; szQuantidade:PChar; szCasasDecimaisQuantidade:PChar; szUnidadeDeMedida:PChar; szPrecoUnidade:PChar; szCasasDecimaisPreco:PChar; szAliquotas:PChar; szNCM: PChar; szCST: PChar; szPIS: PChar; szCOFINS: PChar; szCFOP: PChar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Desconto_Acrescimo_Item (szNumeroItem: PChar; szOperacao: PChar; szTipo: PChar; szValor: PChar; szCasasDecimaisValor: PChar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Cancelar_Item(szNumeroItem:PChar ):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Cancelar_Item_Parcial(szNumeroItem:Pchar; szQuantidade:Pchar; szCasasDecimaisQuantidade:PChar ):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Cancelar_Desconto_Acrescimo_Item(szNumeroItem:Pchar; szOperacao:Pchar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Pagamento(szFormaPagamento:Pchar; szValor:Pchar; szCasasDecimaisValor:Pchar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Estorno_Pagamento(szEstornada:Pchar; szEfetivada:Pchar; szValor:Pchar; szCasasDecimaisValor:Pchar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Dados_Consumidor( szCPF: PChar; szNome: PChar; szEndereco: PChar; szNumero: PChar; szBairro: PChar; szCodMunicipio: PChar; szMunicipio: PChar; szUF: PChar; szCep: PChar; szEmail: PChar ):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Dados_Lei_Imposto (szValorMunicipal: PChar; szPercMun: PChar; szValorEstadual: PChar; szPercEst: PChar; szValorFederal: PChar; szPercFed: PChar; szUF: PChar; szTabela: PChar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Dados_Lei_ImpostoEX (szMensagem:Pchar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Fechar(szImprime:Pchar):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Reimprimir():Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Cancelar(szNumero: PChar; szSerie: PChar; szChave: PChar; szProtocolo: PChar; szJustificativa: PChar ):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Inutilizar_Numeros( szInicial: PChar; szFinal: PChar; szSerie: PChar; szJustificativa: PChar ):Integer; StdCall; export;
begin
end;
function EPSON_NFCe_Obter_Erro (szCodigo:PChar; szDescricao:PChar):Integer;StdCall; export;
begin
end;
function EPSON_NFCe_Obter_Estado(szEstado:PChar):Integer;StdCall; export;
begin
end;
function EPSON_NFCe_Verifica_Servidor(szEstado:PChar):Integer;StdCall; export;
begin
end;
function EPSON_NFCe_Imprimir_Mensagem(szMensagem:PChar):Integer;StdCall; export;
begin
end;
function EPSON_NFCe_Obter_Informacao (szIndice:PChar; szInformacao:PChar):Integer;StdCall; export;
begin
end;

exports
ConfiguraTaxaSerial index 1,
IniciaPorta index 2,
FechaPorta index 3,
ImprimeTexto index 4,
ImprimeTextoTag index 5,
FormataTX index 6,
AcionaGuilhotina index 7,
ComandoTX index 8,
Le_Status index 9,
Le_Status_Gaveta index 10,
ConfiguraCodigoBarras index 11,
ImprimeCodigoBarrasCODABAR index 12,
ImprimeCodigoBarrasCODE128 index 13,
ImprimeCodigoBarrasCODE39 index 14,
ImprimeCodigoBarrasCODE93 index 15,
ImprimeCodigoBarrasEAN13 index 16,
ImprimeCodigoBarrasEAN8 index 17,
ImprimeCodigoBarrasITF index 18,
ImprimeCodigoBarrasUPCA index 19,
ImprimeCodigoBarrasUPCE index 20,
ImprimeCodigoBarrasPDF417 index 21,
ImprimeCodigoQRCODE index 22,
GerarQRCodeArquivo index 23,
ImprimeBmpEspecial index 24,
Habilita_Log index 25,
ImprimeCheque index 26,
ImprimeAutenticacao index 27,
LeMICR index 28,
LeModelo index 29,
Le_Status_Slip index 30,
AcionaGaveta index 31,
EPSON_NFCe_Imprimir index 32,
EPSON_SAT_Imprimir index 33,
EPSON_SAT_Imprimir_Cancelamento index 34,
EPSON_NFCe_Abrir index 35,
EPSON_NFCe_AbrirEX index 36,
EPSON_NFCe_Vender_Item index 37,
EPSON_NFCe_Vender_ItemEX index 38,
EPSON_NFCe_Desconto_Acrescimo_Item index 39,
EPSON_NFCe_Cancelar_Item index 40,
EPSON_NFCe_Cancelar_Item_Parcial index 41,
EPSON_NFCe_Cancelar_Desconto_Acrescimo_Item index 42,
EPSON_NFCe_Pagamento index 43,
EPSON_NFCe_Estorno_Pagamento index 44,
EPSON_NFCe_Dados_Consumidor index 45,
EPSON_NFCe_Dados_Lei_Imposto index 46,
EPSON_NFCe_Dados_Lei_ImpostoEX index 47,
EPSON_NFCe_Fechar index 48,
EPSON_NFCe_Reimprimir index 49,
EPSON_NFCe_Cancelar index 50,
EPSON_NFCe_Inutilizar_Numeros index 51,
EPSON_NFCe_Obter_Erro index 52,
EPSON_NFCe_Obter_Estado index 53,
EPSON_NFCe_Verifica_Servidor index 54,
EPSON_NFCe_Imprimir_Mensagem index 55,
EPSON_NFCe_Obter_Informacao index 56;

begin
end.
