*** Settings ***
Documentation     Suite de teste para testar a api de cliente
...
...               Keywords are imported from the resource file
Resource          keywords.resource
Default Tags      positive

*** Test Cases ***

Testa a listagem de clientes
    ${response}=    GET  http://127.0.0.1:8080/api/v1/client  expected_status=200

Testa a criação de um cliente
    ${nome}=    Random Nome Cliente
    &{data}=    Create dictionary  email=robot@request.com  name=${nome}  
    ${response}=    POST  http://127.0.0.1:8080/api/v1/client    json=${data}    expected_status=200
    Should Start With    ${response.json()}[message]    new Client with name
