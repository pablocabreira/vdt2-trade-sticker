*** Settings ***
Documentation        Teste de negociação de figurinhas da Copa

Resource        ../resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***
Deve negociar a figurinha Neymar Legend

    Do Login

    Search User             legend
    Select Sticker          Neymar Jr
    Get In Touch
    WApp Sticker Message    Neymar Jr
